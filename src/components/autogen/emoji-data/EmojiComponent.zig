// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Lowest code point
//    4. Highest code point
//! Unicode Emoji_Component code points.

const std = @import("std");
const mem = std.mem;

const EmojiComponent = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 35,
hi: u21 = 917631,

pub fn init(allocator: *mem.Allocator) !EmojiComponent {
    var instance = EmojiComponent{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 917597),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    instance.array[0] = true;
    instance.array[7] = true;
    index = 13;
    while (index <= 22) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[8170] = true;
    instance.array[8384] = true;
    instance.array[65004] = true;
    index = 127427;
    while (index <= 127452) : (index += 1) {
        instance.array[index] = true;
    }
    index = 127960;
    while (index <= 127964) : (index += 1) {
        instance.array[index] = true;
    }
    index = 129421;
    while (index <= 129424) : (index += 1) {
        instance.array[index] = true;
    }
    index = 917501;
    while (index <= 917596) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name, 1. Code point kind
    return instance;
}

pub fn deinit(self: *EmojiComponent) void {
    self.allocator.free(self.array);
}

// isEmojiComponent checks if cp is of the kind Emoji_Component.
pub fn isEmojiComponent(self: EmojiComponent, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}