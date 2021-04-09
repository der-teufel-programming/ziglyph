// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Khitan_Small_Script code points.

const std = @import("std");
const mem = std.mem;

const KhitanSmallScript = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 94180,
hi: u21 = 101589,

pub fn init(allocator: *mem.Allocator) !KhitanSmallScript {
    var instance = KhitanSmallScript{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 7410),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    instance.array[0] = true;
    index = 6940;
    while (index <= 7409) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *KhitanSmallScript) void {
    self.allocator.free(self.array);
}

// isKhitanSmallScript checks if cp is of the kind Khitan_Small_Script.
pub fn isKhitanSmallScript(self: KhitanSmallScript, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
