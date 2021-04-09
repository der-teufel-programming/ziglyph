// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Warang_Citi code points.

const std = @import("std");
const mem = std.mem;

const WarangCiti = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 71840,
hi: u21 = 71935,

pub fn init(allocator: *mem.Allocator) !WarangCiti {
    var instance = WarangCiti{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 96),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 63) : (index += 1) {
        instance.array[index] = true;
    }
    index = 64;
    while (index <= 73) : (index += 1) {
        instance.array[index] = true;
    }
    index = 74;
    while (index <= 82) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[95] = true;

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *WarangCiti) void {
    self.allocator.free(self.array);
}

// isWarangCiti checks if cp is of the kind Warang_Citi.
pub fn isWarangCiti(self: WarangCiti, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
