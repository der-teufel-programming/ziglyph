const std = @import("std");
const mem = std.mem;

/// Control code points like form feed.
pub const Control = @import("data/Control.zig");
/// Code point decomposition.
pub const DecomposeMap = @import("data/DecomposeMap.zig");
/// Unicode letters.
pub const Letter = @import("data/Letter.zig");
/// Lowercase letters.
pub const Lower = @import("data/Lower.zig");
/// Marks from different alphabets.
pub const Mark = @import("data/Mark.zig");
/// Unicode numbers.
pub const Number = @import("data/Number.zig");
/// Punctuation code points.
pub const Punct = @import("data/Punct.zig");
/// Unicode space code points.
pub const Space = @import("data/Space.zig");
/// All sorts of symbols.
pub const Symbol = @import("data/Symbol.zig");
/// Titlecase letters.
pub const Title = @import("data/Title.zig");
/// Uppercase letters.
pub const Upper = @import("data/Upper.zig");

/// Mapping to lowercase.
pub const LowerMap = @import("data/LowerMap.zig");
/// Mapping to titlecase.
pub const TitleMap = @import("data/TitleMap.zig");
/// Mapping to uppercase.
pub const UpperMap = @import("data/UpperMap.zig");

/// Ziglyph consolidates all the major Unicode utility functions in one place. Because these functions
/// each consume memory for their respective code point data, this struct performs lazy initialization
/// to only consume memory when needed.
pub const Ziglyph = struct {
    allocator: *mem.Allocator,
    control: ?Control = null,
    decomp_map: ?DecomposeMap = null,
    letter: ?Letter = null,
    lower: ?Lower = null,
    lower_map: ?LowerMap = null,
    mark: ?Mark = null,
    number: ?Number = null,
    punct: ?Punct = null,
    space: ?Space = null,
    symbol: ?Symbol = null,
    title: ?Title = null,
    title_map: ?TitleMap = null,
    upper: ?Upper = null,
    upper_map: ?UpperMap = null,

    const Self = @This();

    pub fn init(allocator: *mem.Allocator) Ziglyph {
        return .{ .allocator = allocator };
    }

    pub fn deinit(self: *Self) void {
        if (self.decomp_map) |*decomp_map| {
            decomp_map.deinit();
        }
    }

    /// isAlphaNum covers all the Unicode letter and number space, not just ASCII.
    pub fn isAlphaNum(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.letter == null) {
            self.letter = Letter.new();
        }
        if (self.number == null) {
            self.number = Number.new();
        }

        return self.letter.?.isLetter(cp) or self.number.?.isNumber(cp);
    }

    /// isGraphic detects any code point that can be represented graphically, including spaces.
    pub fn isGraphic(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.space == null) {
            self.space = Space.new();
        }

        return self.isPrint(cp) or self.space.?.isSpace(cp);
    }

    /// isPrint detects any code point that can be printed, but not spaces.
    pub fn isPrint(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.mark == null) {
            self.mark = Mark.new();
        }
        if (self.punct == null) {
            self.punct = Punct.new();
        }
        if (self.symbol == null) {
            self.symbol = Symbol.new();
        }

        return self.isAlphaNum(cp) or self.mark.?.isMark(cp) or self.punct.?.isPunct(cp) or self.symbol.?.isSymbol(cp);
    }

    /// isControl detects control code points such as form feeds.
    pub fn isControl(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.control == null) {
            self.control = Control.new();
        }

        return self.control.?.isControl(cp);
    }

    /// isLetter covers all letters in Unicode, not just ASCII.
    pub fn isLetter(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.letter == null) {
            self.letter = Letter.new();
        }

        return self.letter.?.isLetter(cp);
    }

    /// isLower detects code points that are lowercase.
    pub fn isLower(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.lower == null) {
            self.lower = Lower.new();
        }

        return self.lower.?.isLower(cp);
    }

    /// isMark detects special code points that serve as marks in different alphabets.
    pub fn isMark(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.mark == null) {
            self.mark = Mark.new();
        }

        return self.mark.?.isMark(cp);
    }

    /// isNumber covers all Unicode numbers, not just ASII.
    pub fn isNumber(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.number == null) {
            self.number = Number.new();
        }

        return self.number.?.isNumber(cp);
    }

    /// isPunct detects punctuation characters. Note some punctuation maybe considered symbols by Unicode.
    pub fn isPunct(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.punct == null) {
            self.punct = Punct.new();
        }

        return self.punct.?.isPunct(cp);
    }

    /// isSpace adheres to the strict meaning of space as per Unicode, excluding some control characters
    /// such as tab \t.
    pub fn isSpace(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.space == null) {
            self.space = Space.new();
        }

        return self.space.?.isSpace(cp);
    }

    // isSymbol detects symbols which curiosly may include some code points commonly thought of as
    // punctuation.
    pub fn isSymbol(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.symbol == null) {
            self.symbol = Symbol.new();
        }

        return self.symbol.?.isSymbol(cp);
    }

    /// isTitle detects code points in titlecase.
    pub fn isTitle(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.title == null) {
            self.title = Title.new();
        }

        return self.title.?.isTitle(cp);
    }

    /// isTitle detects code points in uppercase.
    pub fn isUpper(self: *Self, cp: u21) bool {
        // Lazy init.
        if (self.upper == null) {
            self.upper = Upper.new();
        }

        return self.upper.?.isUpper(cp);
    }

    /// isWhiteSpace detects space code points including some (like tab: \t) not considered as such 
    /// by Unicode (as is the cse with the isSpace method).
    pub fn isWhiteSpace(self: *Self, cp: u21) bool {
        const ascii = @import("std").ascii;
        if (cp < 256) {
            return ascii.isSpace(@intCast(u8, cp));
        } else {
            // Lazy init.
            if (self.space == null) {
                self.space = Space.new();
            }

            return self.space.?.isSpace(cp);
        }
    }

    /// toLower returns the lowercase code point for the given code point. It returns the same 
    /// code point given if no mapping exists. This method may return an error because of lazy 
    /// initialization allocation.
    pub fn toLower(self: *Self, cp: u21) !u21 {
        // Lazy init.
        if (self.lower_map == null) {
            self.lower_map = LowerMap.new();
        }

        return self.lower_map.?.toLower(cp);
    }

    /// toTitle returns the titlecase code point for the given code point. It returns the same 
    /// code point given if no mapping exists. This method may return an error because of lazy 
    /// initialization allocation.
    pub fn toTitle(self: *Self, cp: u21) !u21 {
        // Lazy init.
        if (self.title_map == null) {
            self.title_map = TitleMap.new();
        }

        return self.title_map.?.toTitle(cp);
    }

    /// toUpper returns the uppercase code point for the given code point. It returns the same 
    /// code point given if no mapping exists. This method may return an error because of lazy 
    /// initialization allocation.
    pub fn toUpper(self: *Self, cp: u21) !u21 {
        // Lazy init.
        if (self.upper_map == null) {
            self.upper_map = UpperMap.new();
        }

        return self.upper_map.?.toUpper(cp);
    }

    /// decomposeCodePoint will convert a code point into its component code points if applicable.
    /// Returns null if the code point cannot be decomposed. This method may return an error because 
    /// of lazy initialization allocation.
    pub fn decomposeCodePoint(self: *Self, cp: u21) !?[]const u21 {
        // Lazy init.
        if (self.decomp_map == null) {
            self.decomp_map = try DecompMap.init(self.allocator);
        }

        return self.decomp_map.?.decomposeCodePoint(cp);
    }

    /// decomposeString converts a string into a string where complex code points are decomposed into
    /// their component code points. This method may return an error because of lazy initialization 
    /// allocation. Caller must free returned memory.
    pub fn decomposeString(self: *Self, str: []const u8) ![]const u8 {
        // Lazy init.
        if (self.decomp_map == null) {
            self.decomp_map = try DecompMap.init(self.allocator);
        }

        return self.decomp_map.?.decomposeString(str);
    }
};
