// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Linear A code points.

const std = @import("std");
const mem = std.mem;

const LinearA = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 67072,
hi: u21 = 67455,

pub fn init(allocator: *mem.Allocator) !LinearA {
    var instance = LinearA{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 384),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 383) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *LinearA) void {
    self.allocator.free(self.array);
}

// isLinearA checks if cp is of the kind Linear A.
pub fn isLinearA(self: LinearA, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
