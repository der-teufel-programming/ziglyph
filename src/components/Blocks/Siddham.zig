// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Siddham code points.

const std = @import("std");
const mem = std.mem;

const Siddham = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 71040,
hi: u21 = 71167,

pub fn init(allocator: *mem.Allocator) !Siddham {
    var instance = Siddham{
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

pub fn deinit(self: *Siddham) void {
    self.allocator.free(self.array);
}

// isSiddham checks if cp is of the kind Siddham.
pub fn isSiddham(self: Siddham, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
