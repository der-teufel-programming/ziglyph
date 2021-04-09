// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Tai Tham code points.

const std = @import("std");
const mem = std.mem;

const TaiTham = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 6688,
hi: u21 = 6831,

pub fn init(allocator: *mem.Allocator) !TaiTham {
    var instance = TaiTham{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 144),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 143) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *TaiTham) void {
    self.allocator.free(self.array);
}

// isTaiTham checks if cp is of the kind Tai Tham.
pub fn isTaiTham(self: TaiTham, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
