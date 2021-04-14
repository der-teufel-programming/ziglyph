// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Optical Character Recognition code points.

const std = @import("std");
const mem = std.mem;

const OpticalCharacterRecognition = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 9280,
hi: u21 = 9311,

pub fn init(allocator: *mem.Allocator) !OpticalCharacterRecognition {
    var instance = OpticalCharacterRecognition{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 32),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 31) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *OpticalCharacterRecognition) void {
    self.allocator.free(self.array);
}

// isOpticalCharacterRecognition checks if cp is of the kind Optical Character Recognition.
pub fn isOpticalCharacterRecognition(self: OpticalCharacterRecognition, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}