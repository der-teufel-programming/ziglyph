// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Kharoshthi code points.

const std = @import("std");
const mem = std.mem;

const Kharoshthi = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 68096,
hi: u21 = 68184,

pub fn init(allocator: *mem.Allocator) !Kharoshthi {
    var instance = Kharoshthi{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 89),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    instance.array[0] = true;
    index = 1;
    while (index <= 3) : (index += 1) {
        instance.array[index] = true;
    }
    index = 5;
    while (index <= 6) : (index += 1) {
        instance.array[index] = true;
    }
    index = 12;
    while (index <= 15) : (index += 1) {
        instance.array[index] = true;
    }
    index = 16;
    while (index <= 19) : (index += 1) {
        instance.array[index] = true;
    }
    index = 21;
    while (index <= 23) : (index += 1) {
        instance.array[index] = true;
    }
    index = 25;
    while (index <= 53) : (index += 1) {
        instance.array[index] = true;
    }
    index = 56;
    while (index <= 58) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[63] = true;
    index = 64;
    while (index <= 72) : (index += 1) {
        instance.array[index] = true;
    }
    index = 80;
    while (index <= 88) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *Kharoshthi) void {
    self.allocator.free(self.array);
}

// isKharoshthi checks if cp is of the kind Kharoshthi.
pub fn isKharoshthi(self: Kharoshthi, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}