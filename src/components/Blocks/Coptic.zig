// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Coptic code points.

const std = @import("std");
const mem = std.mem;

const Coptic = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 11392,
hi: u21 = 11519,

pub fn init(allocator: *mem.Allocator) !Coptic {
    var instance = Coptic{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 128),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 127) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *Coptic) void {
    self.allocator.free(self.array);
}

// isCoptic checks if cp is of the kind Coptic.
pub fn isCoptic(self: Coptic, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
