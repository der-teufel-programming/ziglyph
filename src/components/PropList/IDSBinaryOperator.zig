// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode IDS_Binary_Operator code points.

const std = @import("std");
const mem = std.mem;

const IDSBinaryOperator = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 12272,
hi: u21 = 12283,

pub fn init(allocator: *mem.Allocator) !IDSBinaryOperator {
    var instance = IDSBinaryOperator{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 12),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 1) : (index += 1) {
        instance.array[index] = true;
    }
    index = 4;
    while (index <= 11) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *IDSBinaryOperator) void {
    self.allocator.free(self.array);
}

// isIDSBinaryOperator checks if cp is of the kind IDS_Binary_Operator.
pub fn isIDSBinaryOperator(self: IDSBinaryOperator, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
