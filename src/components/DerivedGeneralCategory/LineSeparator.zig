// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Line_Separator code points.

const std = @import("std");
const mem = std.mem;

const LineSeparator = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 8232,
hi: u21 = 8232,

pub fn init(allocator: *mem.Allocator) !LineSeparator {
    var instance = LineSeparator{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 1),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    instance.array[0] = true;

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *LineSeparator) void {
    self.allocator.free(self.array);
}

// isLineSeparator checks if cp is of the kind Line_Separator.
pub fn isLineSeparator(self: LineSeparator, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
