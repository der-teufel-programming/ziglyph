// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Malayalam code points.

const std = @import("std");
const mem = std.mem;

const Malayalam = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 3328,
hi: u21 = 3455,

pub fn init(allocator: *mem.Allocator) !Malayalam {
    var instance = Malayalam{
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

pub fn deinit(self: *Malayalam) void {
    self.allocator.free(self.array);
}

// isMalayalam checks if cp is of the kind Malayalam.
pub fn isMalayalam(self: Malayalam, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}