// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Unified_Ideograph code points.

const std = @import("std");
const mem = std.mem;

const UnifiedIdeograph = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 13312,
hi: u21 = 201546,

pub fn init(allocator: *mem.Allocator) !UnifiedIdeograph {
    var instance = UnifiedIdeograph{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 188235),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 6591) : (index += 1) {
        instance.array[index] = true;
    }
    index = 6656;
    while (index <= 27644) : (index += 1) {
        instance.array[index] = true;
    }
    index = 50702;
    while (index <= 50703) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[50705] = true;
    index = 50707;
    while (index <= 50708) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[50719] = true;
    instance.array[50721] = true;
    index = 50723;
    while (index <= 50724) : (index += 1) {
        instance.array[index] = true;
    }
    index = 50727;
    while (index <= 50729) : (index += 1) {
        instance.array[index] = true;
    }
    index = 117760;
    while (index <= 160477) : (index += 1) {
        instance.array[index] = true;
    }
    index = 160512;
    while (index <= 164660) : (index += 1) {
        instance.array[index] = true;
    }
    index = 164672;
    while (index <= 164893) : (index += 1) {
        instance.array[index] = true;
    }
    index = 164896;
    while (index <= 170657) : (index += 1) {
        instance.array[index] = true;
    }
    index = 170672;
    while (index <= 178144) : (index += 1) {
        instance.array[index] = true;
    }
    index = 183296;
    while (index <= 188234) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *UnifiedIdeograph) void {
    self.allocator.free(self.array);
}

// isUnifiedIdeograph checks if cp is of the kind Unified_Ideograph.
pub fn isUnifiedIdeograph(self: UnifiedIdeograph, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
