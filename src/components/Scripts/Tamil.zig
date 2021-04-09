// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Tamil code points.

const std = @import("std");
const mem = std.mem;

const Tamil = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 2946,
hi: u21 = 73727,

pub fn init(allocator: *mem.Allocator) !Tamil {
    var instance = Tamil{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 70782),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    instance.array[0] = true;
    instance.array[1] = true;
    index = 3;
    while (index <= 8) : (index += 1) {
        instance.array[index] = true;
    }
    index = 12;
    while (index <= 14) : (index += 1) {
        instance.array[index] = true;
    }
    index = 16;
    while (index <= 19) : (index += 1) {
        instance.array[index] = true;
    }
    index = 23;
    while (index <= 24) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[26] = true;
    index = 28;
    while (index <= 29) : (index += 1) {
        instance.array[index] = true;
    }
    index = 33;
    while (index <= 34) : (index += 1) {
        instance.array[index] = true;
    }
    index = 38;
    while (index <= 40) : (index += 1) {
        instance.array[index] = true;
    }
    index = 44;
    while (index <= 55) : (index += 1) {
        instance.array[index] = true;
    }
    index = 60;
    while (index <= 61) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[62] = true;
    index = 63;
    while (index <= 64) : (index += 1) {
        instance.array[index] = true;
    }
    index = 68;
    while (index <= 70) : (index += 1) {
        instance.array[index] = true;
    }
    index = 72;
    while (index <= 74) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[75] = true;
    instance.array[78] = true;
    instance.array[85] = true;
    index = 100;
    while (index <= 109) : (index += 1) {
        instance.array[index] = true;
    }
    index = 110;
    while (index <= 112) : (index += 1) {
        instance.array[index] = true;
    }
    index = 113;
    while (index <= 118) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[119] = true;
    instance.array[120] = true;
    index = 70718;
    while (index <= 70738) : (index += 1) {
        instance.array[index] = true;
    }
    index = 70739;
    while (index <= 70746) : (index += 1) {
        instance.array[index] = true;
    }
    index = 70747;
    while (index <= 70750) : (index += 1) {
        instance.array[index] = true;
    }
    index = 70751;
    while (index <= 70767) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[70781] = true;

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *Tamil) void {
    self.allocator.free(self.array);
}

// isTamil checks if cp is of the kind Tamil.
pub fn isTamil(self: Tamil, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
