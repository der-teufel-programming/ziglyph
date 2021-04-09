// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Marchen code points.

const std = @import("std");
const mem = std.mem;

const Marchen = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 72816,
hi: u21 = 72886,

pub fn init(allocator: *mem.Allocator) !Marchen {
    var instance = Marchen{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 71),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 1) : (index += 1) {
        instance.array[index] = true;
    }
    index = 2;
    while (index <= 31) : (index += 1) {
        instance.array[index] = true;
    }
    index = 34;
    while (index <= 55) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[57] = true;
    index = 58;
    while (index <= 64) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[65] = true;
    index = 66;
    while (index <= 67) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[68] = true;
    index = 69;
    while (index <= 70) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *Marchen) void {
    self.allocator.free(self.array);
}

// isMarchen checks if cp is of the kind Marchen.
pub fn isMarchen(self: Marchen, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
