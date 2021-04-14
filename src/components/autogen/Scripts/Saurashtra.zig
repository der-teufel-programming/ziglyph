// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Saurashtra code points.

const std = @import("std");
const mem = std.mem;

const Saurashtra = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 43136,
hi: u21 = 43225,

pub fn init(allocator: *mem.Allocator) !Saurashtra {
    var instance = Saurashtra{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 90),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 1) : (index += 1) {
        instance.array[index] = true;
    }
    index = 2;
    while (index <= 51) : (index += 1) {
        instance.array[index] = true;
    }
    index = 52;
    while (index <= 67) : (index += 1) {
        instance.array[index] = true;
    }
    index = 68;
    while (index <= 69) : (index += 1) {
        instance.array[index] = true;
    }
    index = 78;
    while (index <= 79) : (index += 1) {
        instance.array[index] = true;
    }
    index = 80;
    while (index <= 89) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *Saurashtra) void {
    self.allocator.free(self.array);
}

// isSaurashtra checks if cp is of the kind Saurashtra.
pub fn isSaurashtra(self: Saurashtra, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}