// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode IDS_Trinary_Operator code points.

const std = @import("std");
const mem = std.mem;

const IDSTrinaryOperator = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 12274,
hi: u21 = 12275,

pub fn init(allocator: *mem.Allocator) !IDSTrinaryOperator {
    var instance = IDSTrinaryOperator{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 2),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 1) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *IDSTrinaryOperator) void {
    self.allocator.free(self.array);
}

// isIDSTrinaryOperator checks if cp is of the kind IDS_Trinary_Operator.
pub fn isIDSTrinaryOperator(self: IDSTrinaryOperator, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
