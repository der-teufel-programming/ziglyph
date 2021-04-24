//! GraphemeIterator retrieves the grapheme clusters of a string, which may be composed of several 
//! code points each.

const std = @import("std");
const mem = std.mem;
const unicode = std.unicode;

const CodePointIterator = @import("CodePointIterator.zig");
const Control = @import("../components/autogen/GraphemeBreakProperty/Control.zig");
const Extend = @import("../components/autogen/GraphemeBreakProperty/Extend.zig");
const ExtPic = @import("../components/autogen/emoji-data/ExtendedPictographic.zig");
const Prepend = @import("../components/autogen/GraphemeBreakProperty/Prepend.zig");
const Regional = @import("../components/autogen/GraphemeBreakProperty/RegionalIndicator.zig");
const SpacingMark = @import("../components/autogen/GraphemeBreakProperty/SpacingMark.zig");
const HangulMap = @import("../components/autogen/HangulSyllableType/HangulMap.zig");

allocator: *mem.Allocator,
control: Control,
cp_iter: CodePointIterator,
extend: Extend,
extpic: ExtPic,
han_map: HangulMap,
prepend: Prepend,
regional: Regional,
spacing: SpacingMark,

const Self = @This();

pub fn init(allocator: *mem.Allocator, cp_iter: CodePointIterator) !Self {
    return Self{
        .allocator = allocator,
        .control = try Control.init(allocator),
        .cp_iter = cp_iter,
        .extend = try Extend.init(allocator),
        .extpic = try ExtPic.init(allocator),
        .han_map = try HangulMap.init(allocator),
        .prepend = try Prepend.init(allocator),
        .regional = try Regional.init(allocator),
        .spacing = try SpacingMark.init(allocator),
    };
}

pub fn deinit(self: *Self) void {
    self.control.deinit();
    self.extend.deinit();
    self.extpic.deinit();
    self.han_map.deinit();
    self.prepend.deinit();
    self.regional.deinit();
    self.spacing.deinit();
}

/// reinit resets the iterator with a new string.
pub fn reinit(self: *Self, cp_iter: CodePointIterator) !void {
    self.cp_iter = cp_iter;
}

// Special code points.
const ZWJ: u21 = 0x200D;
const CR: u21 = 0x000D;
const LF: u21 = 0x000A;

const Slice = struct {
    start: usize,
    end: usize,
};

/// next retrieves the next grapheme cluster.
pub fn next(self: *Self) ?[]const u8 {
    var cpo = self.cp_iter.next();
    if (cpo == null) return null;
    const cp = cpo.?;
    const cp_end = self.cp_iter.i;
    const cp_start = self.cp_iter.prev_i;
    const next_cp = self.cp_iter.peek();

    // GB9.2
    if (self.prepend.isPrepend(cp)) {
        if (next_cp) |ncp| {
            if (ncp == CR or ncp == LF or self.control.isControl(ncp)) {
                return self.cp_iter.bytes[cp_start..cp_end];
            }

            const pncp = self.cp_iter.next().?; // We know there's a next.
            const pncp_end = self.cp_iter.i;
            const pncp_start = self.cp_iter.prev_i;
            const pncp_next_cp = self.cp_iter.peek();
            const s = self.processNonPrepend(pncp, pncp_start, pncp_end, pncp_next_cp);
            return self.cp_iter.bytes[cp_start..s.end];
        }

        return self.cp_iter.bytes[cp_start..cp_end];
    }

    const s = self.processNonPrepend(cp, cp_start, cp_end, next_cp);
    return self.cp_iter.bytes[s.start..s.end];
}

fn processNonPrepend(
    self: *Self,
    cp: u21,
    cp_start: usize,
    cp_end: usize,
    next_cp: ?u21,
) Slice {
    // GB3, GB4, GB5
    if (cp == CR) {
        if (next_cp) |ncp| {
            if (ncp == LF) {
                _ = self.cp_iter.next(); // Advance past LF.
                return .{ .start = cp_start, .end = self.cp_iter.i };
            }
        }
        return .{ .start = cp_start, .end = cp_end };
    }

    if (cp == LF) {
        return .{ .start = cp_start, .end = cp_end };
    }

    if (self.control.isControl(cp)) {
        return .{ .start = cp_start, .end = cp_end };
    }

    // GB6, GB7, GB8
    if (self.han_map.syllableType(cp)) |hst| {
        if (next_cp) |ncp| {
            const ncp_hst = self.han_map.syllableType(ncp);

            if (ncp_hst) |nhst| {
                switch (hst) {
                    .L => {
                        if (nhst == .L or nhst == .V or nhst == .LV or nhst == .LVT) {
                            _ = self.cp_iter.next(); // Advance past next syllable.
                        }
                    },
                    .LV, .V => {
                        if (nhst == .V or nhst == .T) {
                            _ = self.cp_iter.next(); // Advance past next syllable.
                        }
                    },
                    .LVT, .T => {
                        if (nhst == .T) {
                            _ = self.cp_iter.next(); // Advance past next syllable.
                        }
                    },
                }
            }
        }

        // GB9
        self.fullAdvance();
        return .{ .start = cp_start, .end = self.cp_iter.i };
    }

    // GB11
    if (self.extpic.isExtendedPictographic(cp)) {
        self.fullAdvance();
        if (self.cp_iter.prev) |pcp| {
            if (pcp == ZWJ) {
                if (self.cp_iter.peek()) |ncp| {
                    if (self.extpic.isExtendedPictographic(ncp)) {
                        _ = self.cp_iter.next(); // Advance past end emoji.
                        // GB9
                        self.fullAdvance();
                    }
                }
            }
        }

        return .{ .start = cp_start, .end = self.cp_iter.i };
    }

    // GB12
    if (self.regional.isRegionalIndicator(cp)) {
        if (next_cp) |ncp| {
            if (self.regional.isRegionalIndicator(ncp)) {
                _ = self.cp_iter.next(); // Advance past 2nd RI.
            }
        }

        self.fullAdvance();
        return .{ .start = cp_start, .end = self.cp_iter.i };
    }

    // GB999
    self.fullAdvance();
    return .{ .start = cp_start, .end = self.cp_iter.i };
}

fn lexRun(
    self: *Self,
    ctx: anytype,
    comptime predicate: fn (ctx: @TypeOf(ctx), cp: u21) bool,
) void {
    while (self.cp_iter.peek()) |ncp| {
        if (!predicate(ctx, ncp)) break;
        _ = self.cp_iter.next();
    }
}

fn fullAdvance(self: *Self) void {
    const next_cp = self.cp_iter.peek();
    // Base case.
    if (next_cp) |ncp| {
        if (ncp != ZWJ and !self.extend.isExtend(ncp) and !self.spacing.isSpacingMark(ncp)) return;
    } else {
        return;
    }

    // Recurse.
    const ncp = next_cp.?; // We now we have next.

    if (ncp == ZWJ) {
        _ = self.cp_iter.next();
        self.fullAdvance();
    } else if (self.extend.isExtend(ncp)) {
        self.lexRun(self.extend, Extend.isExtend);
        self.fullAdvance();
    } else if (self.spacing.isSpacingMark(ncp)) {
        self.lexRun(self.spacing, SpacingMark.isSpacingMark);
        self.fullAdvance();
    }
}

test "Grapheme iterator" {
    var allocator = std.testing.allocator;
    var file = try std.fs.cwd().openFile("src/data/ucd/auxiliary/GraphemeBreakTest.txt", .{});
    defer file.close();
    var buf_reader = std.io.bufferedReader(file.reader());
    var input_stream = buf_reader.reader();

    var buf: [640]u8 = undefined;
    var line_no: usize = 1;
    var giter: ?Self = null;
    defer {
        if (giter) |*gi| {
            gi.deinit();
        }
    }

    while (try input_stream.readUntilDelimiterOrEof(&buf, '\n')) |raw| : (line_no += 1) {
        // Skip comments or empty lines.
        if (raw.len == 0 or raw[0] == '#' or raw[0] == '@') continue;

        // Clean up.
        var line = mem.trimLeft(u8, raw, "÷ ");
        if (mem.indexOf(u8, line, " ÷\t#")) |octo| {
            line = line[0..octo];
        }

        // Iterate over fields.
        var want = std.ArrayList([]const u8).init(allocator);
        defer {
            for (want.items) |s| {
                allocator.free(s);
            }
            want.deinit();
        }
        var all_bytes = std.ArrayList(u8).init(allocator);
        defer all_bytes.deinit();
        var fields = mem.split(line, " ÷ ");

        while (fields.next()) |field| {
            var bytes = std.ArrayList(u8).init(allocator);
            defer bytes.deinit();
            var sub_fields = mem.split(field, " ");
            var cp_buf: [4]u8 = undefined;

            while (sub_fields.next()) |sub_field| {
                if (mem.eql(u8, sub_field, "×")) continue;
                const cp: u21 = try std.fmt.parseInt(u21, sub_field, 16);
                const len = try unicode.utf8Encode(cp, &cp_buf);
                try all_bytes.appendSlice(cp_buf[0..len]);
                try bytes.appendSlice(cp_buf[0..len]);
            }
            try want.append(bytes.toOwnedSlice());
        }

        var cp_iter = try CodePointIterator.init(all_bytes.items);
        if (giter) |*gi| {
            try gi.reinit(cp_iter);
        } else {
            giter = try init(allocator, cp_iter);
        }

        // Chaeck.
        for (want.items) |w| {
            const g = giter.?.next().?;
            //std.debug.print("line {d}: w:{s}, g:{s}\n", .{ line_no, w, g });
            std.testing.expectEqualSlices(u8, w, g);
        }
    }
}