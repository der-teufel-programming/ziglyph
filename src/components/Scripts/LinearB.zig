// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Linear_B code points.

const std = @import("std");
const mem = std.mem;

const LinearB = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 65536,
hi: u21 = 65786,

pub fn init(allocator: *mem.Allocator) !LinearB {
    var instance = LinearB{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 251),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 11) : (index += 1) {
        instance.array[index] = true;
    }
    index = 13;
    while (index <= 38) : (index += 1) {
        instance.array[index] = true;
    }
    index = 40;
    while (index <= 58) : (index += 1) {
        instance.array[index] = true;
    }
    index = 60;
    while (index <= 61) : (index += 1) {
        instance.array[index] = true;
    }
    index = 63;
    while (index <= 77) : (index += 1) {
        instance.array[index] = true;
    }
    index = 80;
    while (index <= 93) : (index += 1) {
        instance.array[index] = true;
    }
    index = 128;
    while (index <= 250) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *LinearB) void {
    self.allocator.free(self.array);
}

// isLinearB checks if cp is of the kind Linear_B.
pub fn isLinearB(self: LinearB, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
