// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode SpacingMark code points.

const std = @import("std");
const mem = std.mem;

const SpacingMark = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 2307,
hi: u21 = 119149,

pub fn init(allocator: *mem.Allocator) !SpacingMark {
    var instance = SpacingMark{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 116843),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    instance.array[0] = true;
    instance.array[56] = true;
    index = 59;
    while (index <= 61) : (index += 1) {
        instance.array[index] = true;
    }
    index = 70;
    while (index <= 73) : (index += 1) {
        instance.array[index] = true;
    }
    index = 75;
    while (index <= 76) : (index += 1) {
        instance.array[index] = true;
    }
    index = 127;
    while (index <= 128) : (index += 1) {
        instance.array[index] = true;
    }
    index = 188;
    while (index <= 189) : (index += 1) {
        instance.array[index] = true;
    }
    index = 196;
    while (index <= 197) : (index += 1) {
        instance.array[index] = true;
    }
    index = 200;
    while (index <= 201) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[256] = true;
    index = 315;
    while (index <= 317) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[384] = true;
    index = 443;
    while (index <= 445) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[454] = true;
    index = 456;
    while (index <= 457) : (index += 1) {
        instance.array[index] = true;
    }
    index = 511;
    while (index <= 512) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[573] = true;
    index = 580;
    while (index <= 581) : (index += 1) {
        instance.array[index] = true;
    }
    index = 584;
    while (index <= 585) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[700] = true;
    index = 702;
    while (index <= 703) : (index += 1) {
        instance.array[index] = true;
    }
    index = 707;
    while (index <= 709) : (index += 1) {
        instance.array[index] = true;
    }
    index = 711;
    while (index <= 713) : (index += 1) {
        instance.array[index] = true;
    }
    index = 766;
    while (index <= 768) : (index += 1) {
        instance.array[index] = true;
    }
    index = 830;
    while (index <= 833) : (index += 1) {
        instance.array[index] = true;
    }
    index = 895;
    while (index <= 896) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[955] = true;
    index = 957;
    while (index <= 958) : (index += 1) {
        instance.array[index] = true;
    }
    index = 960;
    while (index <= 961) : (index += 1) {
        instance.array[index] = true;
    }
    index = 964;
    while (index <= 965) : (index += 1) {
        instance.array[index] = true;
    }
    index = 967;
    while (index <= 968) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1023;
    while (index <= 1024) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1084;
    while (index <= 1085) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1091;
    while (index <= 1093) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1095;
    while (index <= 1097) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1151;
    while (index <= 1152) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1229;
    while (index <= 1230) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1237;
    while (index <= 1243) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1263;
    while (index <= 1264) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[1328] = true;
    instance.array[1456] = true;
    index = 1595;
    while (index <= 1596) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[1660] = true;
    instance.array[1838] = true;
    index = 1848;
    while (index <= 1849) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1875;
    while (index <= 1876) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[1921] = true;
    instance.array[3763] = true;
    index = 3771;
    while (index <= 3778) : (index += 1) {
        instance.array[index] = true;
    }
    index = 3780;
    while (index <= 3781) : (index += 1) {
        instance.array[index] = true;
    }
    index = 4128;
    while (index <= 4131) : (index += 1) {
        instance.array[index] = true;
    }
    index = 4134;
    while (index <= 4136) : (index += 1) {
        instance.array[index] = true;
    }
    index = 4141;
    while (index <= 4142) : (index += 1) {
        instance.array[index] = true;
    }
    index = 4144;
    while (index <= 4149) : (index += 1) {
        instance.array[index] = true;
    }
    index = 4374;
    while (index <= 4375) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[4434] = true;
    instance.array[4436] = true;
    index = 4458;
    while (index <= 4463) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[4609] = true;
    instance.array[4664] = true;
    index = 4666;
    while (index <= 4670) : (index += 1) {
        instance.array[index] = true;
    }
    index = 4672;
    while (index <= 4673) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[4735] = true;
    instance.array[4766] = true;
    index = 4771;
    while (index <= 4772) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[4775] = true;
    instance.array[4836] = true;
    index = 4839;
    while (index <= 4841) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[4843] = true;
    index = 4847;
    while (index <= 4848) : (index += 1) {
        instance.array[index] = true;
    }
    index = 4897;
    while (index <= 4904) : (index += 1) {
        instance.array[index] = true;
    }
    index = 4913;
    while (index <= 4914) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[5086] = true;
    instance.array[5108] = true;
    index = 40736;
    while (index <= 40737) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[40740] = true;
    index = 40829;
    while (index <= 40830) : (index += 1) {
        instance.array[index] = true;
    }
    index = 40881;
    while (index <= 40896) : (index += 1) {
        instance.array[index] = true;
    }
    index = 41039;
    while (index <= 41040) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[41088] = true;
    index = 41137;
    while (index <= 41138) : (index += 1) {
        instance.array[index] = true;
    }
    index = 41143;
    while (index <= 41144) : (index += 1) {
        instance.array[index] = true;
    }
    index = 41147;
    while (index <= 41149) : (index += 1) {
        instance.array[index] = true;
    }
    index = 41260;
    while (index <= 41261) : (index += 1) {
        instance.array[index] = true;
    }
    index = 41264;
    while (index <= 41265) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[41290] = true;
    instance.array[41448] = true;
    index = 41451;
    while (index <= 41452) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[41458] = true;
    index = 41696;
    while (index <= 41697) : (index += 1) {
        instance.array[index] = true;
    }
    index = 41699;
    while (index <= 41700) : (index += 1) {
        instance.array[index] = true;
    }
    index = 41702;
    while (index <= 41703) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[41705] = true;
    instance.array[67325] = true;
    instance.array[67327] = true;
    instance.array[67455] = true;
    index = 67501;
    while (index <= 67503) : (index += 1) {
        instance.array[index] = true;
    }
    index = 67508;
    while (index <= 67509) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[67625] = true;
    index = 67650;
    while (index <= 67651) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[67711] = true;
    index = 67760;
    while (index <= 67762) : (index += 1) {
        instance.array[index] = true;
    }
    index = 67772;
    while (index <= 67773) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[67787] = true;
    index = 67881;
    while (index <= 67883) : (index += 1) {
        instance.array[index] = true;
    }
    index = 67887;
    while (index <= 67888) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[67890] = true;
    index = 68061;
    while (index <= 68063) : (index += 1) {
        instance.array[index] = true;
    }
    index = 68095;
    while (index <= 68096) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[68156] = true;
    index = 68158;
    while (index <= 68161) : (index += 1) {
        instance.array[index] = true;
    }
    index = 68164;
    while (index <= 68165) : (index += 1) {
        instance.array[index] = true;
    }
    index = 68168;
    while (index <= 68170) : (index += 1) {
        instance.array[index] = true;
    }
    index = 68191;
    while (index <= 68192) : (index += 1) {
        instance.array[index] = true;
    }
    index = 68402;
    while (index <= 68404) : (index += 1) {
        instance.array[index] = true;
    }
    index = 68413;
    while (index <= 68414) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[68418] = true;
    index = 68526;
    while (index <= 68527) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[68534] = true;
    index = 68536;
    while (index <= 68537) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[68539] = true;
    instance.array[68542] = true;
    index = 68781;
    while (index <= 68782) : (index += 1) {
        instance.array[index] = true;
    }
    index = 68789;
    while (index <= 68792) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[68795] = true;
    index = 68909;
    while (index <= 68911) : (index += 1) {
        instance.array[index] = true;
    }
    index = 68920;
    while (index <= 68921) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[68923] = true;
    instance.array[69033] = true;
    index = 69035;
    while (index <= 69036) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[69043] = true;
    index = 69149;
    while (index <= 69150) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[69155] = true;
    index = 69417;
    while (index <= 69419) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[69429] = true;
    index = 69678;
    while (index <= 69682) : (index += 1) {
        instance.array[index] = true;
    }
    index = 69684;
    while (index <= 69685) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[69690] = true;
    instance.array[69693] = true;
    instance.array[69695] = true;
    index = 69838;
    while (index <= 69840) : (index += 1) {
        instance.array[index] = true;
    }
    index = 69849;
    while (index <= 69852) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[69857] = true;
    instance.array[69942] = true;
    index = 69972;
    while (index <= 69973) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[70036] = true;
    instance.array[70444] = true;
    instance.array[70459] = true;
    instance.array[70566] = true;
    instance.array[70574] = true;
    instance.array[70577] = true;
    index = 70791;
    while (index <= 70795) : (index += 1) {
        instance.array[index] = true;
    }
    index = 70800;
    while (index <= 70801) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[70803] = true;
    index = 71154;
    while (index <= 71155) : (index += 1) {
        instance.array[index] = true;
    }
    index = 91726;
    while (index <= 91780) : (index += 1) {
        instance.array[index] = true;
    }
    index = 91885;
    while (index <= 91886) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[116835] = true;
    instance.array[116842] = true;

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *SpacingMark) void {
    self.allocator.free(self.array);
}

// isSpacingMark checks if cp is of the kind SpacingMark.
pub fn isSpacingMark(self: SpacingMark, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
