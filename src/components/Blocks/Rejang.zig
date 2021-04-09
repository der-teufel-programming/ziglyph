// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Rejang code points.

const std = @import("std");
const mem = std.mem;

const Rejang = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 43312,
hi: u21 = 43359,

pub fn init(allocator: *mem.Allocator) !Rejang {
    var instance = Rejang{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 48),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 47) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *Rejang) void {
    self.allocator.free(self.array);
}

// isRejang checks if cp is of the kind Rejang.
pub fn isRejang(self: Rejang, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
