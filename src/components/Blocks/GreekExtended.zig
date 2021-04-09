// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Greek Extended code points.

const std = @import("std");
const mem = std.mem;

const GreekExtended = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 7936,
hi: u21 = 8191,

pub fn init(allocator: *mem.Allocator) !GreekExtended {
    var instance = GreekExtended{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 256),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 255) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *GreekExtended) void {
    self.allocator.free(self.array);
}

// isGreekExtended checks if cp is of the kind Greek Extended.
pub fn isGreekExtended(self: GreekExtended, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
