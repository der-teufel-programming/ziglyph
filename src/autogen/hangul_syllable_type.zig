// Autogenerated from https://www.unicode.org/Public/15.0.0/ucd/. Edits will be lost on update.

pub const Kind = enum {
    L,
    T,
    V,
    LV,
    LVT,
};

/// `syllableType` maps the code point to its Hangul Syllable Type.
pub fn syllableType(cp: u21) ?Kind {
    return switch (cp) {
        0x1100...0x115F => .L,
        0xA960...0xA97C => .L,
        0x1160...0x11A7 => .V,
        0xD7B0...0xD7C6 => .V,
        0x11A8...0x11FF => .T,
        0xD7CB...0xD7FB => .T,
        0xAC00 => .LV,
        0xAC1C => .LV,
        0xAC38 => .LV,
        0xAC54 => .LV,
        0xAC70 => .LV,
        0xAC8C => .LV,
        0xACA8 => .LV,
        0xACC4 => .LV,
        0xACE0 => .LV,
        0xACFC => .LV,
        0xAD18 => .LV,
        0xAD34 => .LV,
        0xAD50 => .LV,
        0xAD6C => .LV,
        0xAD88 => .LV,
        0xADA4 => .LV,
        0xADC0 => .LV,
        0xADDC => .LV,
        0xADF8 => .LV,
        0xAE14 => .LV,
        0xAE30 => .LV,
        0xAE4C => .LV,
        0xAE68 => .LV,
        0xAE84 => .LV,
        0xAEA0 => .LV,
        0xAEBC => .LV,
        0xAED8 => .LV,
        0xAEF4 => .LV,
        0xAF10 => .LV,
        0xAF2C => .LV,
        0xAF48 => .LV,
        0xAF64 => .LV,
        0xAF80 => .LV,
        0xAF9C => .LV,
        0xAFB8 => .LV,
        0xAFD4 => .LV,
        0xAFF0 => .LV,
        0xB00C => .LV,
        0xB028 => .LV,
        0xB044 => .LV,
        0xB060 => .LV,
        0xB07C => .LV,
        0xB098 => .LV,
        0xB0B4 => .LV,
        0xB0D0 => .LV,
        0xB0EC => .LV,
        0xB108 => .LV,
        0xB124 => .LV,
        0xB140 => .LV,
        0xB15C => .LV,
        0xB178 => .LV,
        0xB194 => .LV,
        0xB1B0 => .LV,
        0xB1CC => .LV,
        0xB1E8 => .LV,
        0xB204 => .LV,
        0xB220 => .LV,
        0xB23C => .LV,
        0xB258 => .LV,
        0xB274 => .LV,
        0xB290 => .LV,
        0xB2AC => .LV,
        0xB2C8 => .LV,
        0xB2E4 => .LV,
        0xB300 => .LV,
        0xB31C => .LV,
        0xB338 => .LV,
        0xB354 => .LV,
        0xB370 => .LV,
        0xB38C => .LV,
        0xB3A8 => .LV,
        0xB3C4 => .LV,
        0xB3E0 => .LV,
        0xB3FC => .LV,
        0xB418 => .LV,
        0xB434 => .LV,
        0xB450 => .LV,
        0xB46C => .LV,
        0xB488 => .LV,
        0xB4A4 => .LV,
        0xB4C0 => .LV,
        0xB4DC => .LV,
        0xB4F8 => .LV,
        0xB514 => .LV,
        0xB530 => .LV,
        0xB54C => .LV,
        0xB568 => .LV,
        0xB584 => .LV,
        0xB5A0 => .LV,
        0xB5BC => .LV,
        0xB5D8 => .LV,
        0xB5F4 => .LV,
        0xB610 => .LV,
        0xB62C => .LV,
        0xB648 => .LV,
        0xB664 => .LV,
        0xB680 => .LV,
        0xB69C => .LV,
        0xB6B8 => .LV,
        0xB6D4 => .LV,
        0xB6F0 => .LV,
        0xB70C => .LV,
        0xB728 => .LV,
        0xB744 => .LV,
        0xB760 => .LV,
        0xB77C => .LV,
        0xB798 => .LV,
        0xB7B4 => .LV,
        0xB7D0 => .LV,
        0xB7EC => .LV,
        0xB808 => .LV,
        0xB824 => .LV,
        0xB840 => .LV,
        0xB85C => .LV,
        0xB878 => .LV,
        0xB894 => .LV,
        0xB8B0 => .LV,
        0xB8CC => .LV,
        0xB8E8 => .LV,
        0xB904 => .LV,
        0xB920 => .LV,
        0xB93C => .LV,
        0xB958 => .LV,
        0xB974 => .LV,
        0xB990 => .LV,
        0xB9AC => .LV,
        0xB9C8 => .LV,
        0xB9E4 => .LV,
        0xBA00 => .LV,
        0xBA1C => .LV,
        0xBA38 => .LV,
        0xBA54 => .LV,
        0xBA70 => .LV,
        0xBA8C => .LV,
        0xBAA8 => .LV,
        0xBAC4 => .LV,
        0xBAE0 => .LV,
        0xBAFC => .LV,
        0xBB18 => .LV,
        0xBB34 => .LV,
        0xBB50 => .LV,
        0xBB6C => .LV,
        0xBB88 => .LV,
        0xBBA4 => .LV,
        0xBBC0 => .LV,
        0xBBDC => .LV,
        0xBBF8 => .LV,
        0xBC14 => .LV,
        0xBC30 => .LV,
        0xBC4C => .LV,
        0xBC68 => .LV,
        0xBC84 => .LV,
        0xBCA0 => .LV,
        0xBCBC => .LV,
        0xBCD8 => .LV,
        0xBCF4 => .LV,
        0xBD10 => .LV,
        0xBD2C => .LV,
        0xBD48 => .LV,
        0xBD64 => .LV,
        0xBD80 => .LV,
        0xBD9C => .LV,
        0xBDB8 => .LV,
        0xBDD4 => .LV,
        0xBDF0 => .LV,
        0xBE0C => .LV,
        0xBE28 => .LV,
        0xBE44 => .LV,
        0xBE60 => .LV,
        0xBE7C => .LV,
        0xBE98 => .LV,
        0xBEB4 => .LV,
        0xBED0 => .LV,
        0xBEEC => .LV,
        0xBF08 => .LV,
        0xBF24 => .LV,
        0xBF40 => .LV,
        0xBF5C => .LV,
        0xBF78 => .LV,
        0xBF94 => .LV,
        0xBFB0 => .LV,
        0xBFCC => .LV,
        0xBFE8 => .LV,
        0xC004 => .LV,
        0xC020 => .LV,
        0xC03C => .LV,
        0xC058 => .LV,
        0xC074 => .LV,
        0xC090 => .LV,
        0xC0AC => .LV,
        0xC0C8 => .LV,
        0xC0E4 => .LV,
        0xC100 => .LV,
        0xC11C => .LV,
        0xC138 => .LV,
        0xC154 => .LV,
        0xC170 => .LV,
        0xC18C => .LV,
        0xC1A8 => .LV,
        0xC1C4 => .LV,
        0xC1E0 => .LV,
        0xC1FC => .LV,
        0xC218 => .LV,
        0xC234 => .LV,
        0xC250 => .LV,
        0xC26C => .LV,
        0xC288 => .LV,
        0xC2A4 => .LV,
        0xC2C0 => .LV,
        0xC2DC => .LV,
        0xC2F8 => .LV,
        0xC314 => .LV,
        0xC330 => .LV,
        0xC34C => .LV,
        0xC368 => .LV,
        0xC384 => .LV,
        0xC3A0 => .LV,
        0xC3BC => .LV,
        0xC3D8 => .LV,
        0xC3F4 => .LV,
        0xC410 => .LV,
        0xC42C => .LV,
        0xC448 => .LV,
        0xC464 => .LV,
        0xC480 => .LV,
        0xC49C => .LV,
        0xC4B8 => .LV,
        0xC4D4 => .LV,
        0xC4F0 => .LV,
        0xC50C => .LV,
        0xC528 => .LV,
        0xC544 => .LV,
        0xC560 => .LV,
        0xC57C => .LV,
        0xC598 => .LV,
        0xC5B4 => .LV,
        0xC5D0 => .LV,
        0xC5EC => .LV,
        0xC608 => .LV,
        0xC624 => .LV,
        0xC640 => .LV,
        0xC65C => .LV,
        0xC678 => .LV,
        0xC694 => .LV,
        0xC6B0 => .LV,
        0xC6CC => .LV,
        0xC6E8 => .LV,
        0xC704 => .LV,
        0xC720 => .LV,
        0xC73C => .LV,
        0xC758 => .LV,
        0xC774 => .LV,
        0xC790 => .LV,
        0xC7AC => .LV,
        0xC7C8 => .LV,
        0xC7E4 => .LV,
        0xC800 => .LV,
        0xC81C => .LV,
        0xC838 => .LV,
        0xC854 => .LV,
        0xC870 => .LV,
        0xC88C => .LV,
        0xC8A8 => .LV,
        0xC8C4 => .LV,
        0xC8E0 => .LV,
        0xC8FC => .LV,
        0xC918 => .LV,
        0xC934 => .LV,
        0xC950 => .LV,
        0xC96C => .LV,
        0xC988 => .LV,
        0xC9A4 => .LV,
        0xC9C0 => .LV,
        0xC9DC => .LV,
        0xC9F8 => .LV,
        0xCA14 => .LV,
        0xCA30 => .LV,
        0xCA4C => .LV,
        0xCA68 => .LV,
        0xCA84 => .LV,
        0xCAA0 => .LV,
        0xCABC => .LV,
        0xCAD8 => .LV,
        0xCAF4 => .LV,
        0xCB10 => .LV,
        0xCB2C => .LV,
        0xCB48 => .LV,
        0xCB64 => .LV,
        0xCB80 => .LV,
        0xCB9C => .LV,
        0xCBB8 => .LV,
        0xCBD4 => .LV,
        0xCBF0 => .LV,
        0xCC0C => .LV,
        0xCC28 => .LV,
        0xCC44 => .LV,
        0xCC60 => .LV,
        0xCC7C => .LV,
        0xCC98 => .LV,
        0xCCB4 => .LV,
        0xCCD0 => .LV,
        0xCCEC => .LV,
        0xCD08 => .LV,
        0xCD24 => .LV,
        0xCD40 => .LV,
        0xCD5C => .LV,
        0xCD78 => .LV,
        0xCD94 => .LV,
        0xCDB0 => .LV,
        0xCDCC => .LV,
        0xCDE8 => .LV,
        0xCE04 => .LV,
        0xCE20 => .LV,
        0xCE3C => .LV,
        0xCE58 => .LV,
        0xCE74 => .LV,
        0xCE90 => .LV,
        0xCEAC => .LV,
        0xCEC8 => .LV,
        0xCEE4 => .LV,
        0xCF00 => .LV,
        0xCF1C => .LV,
        0xCF38 => .LV,
        0xCF54 => .LV,
        0xCF70 => .LV,
        0xCF8C => .LV,
        0xCFA8 => .LV,
        0xCFC4 => .LV,
        0xCFE0 => .LV,
        0xCFFC => .LV,
        0xD018 => .LV,
        0xD034 => .LV,
        0xD050 => .LV,
        0xD06C => .LV,
        0xD088 => .LV,
        0xD0A4 => .LV,
        0xD0C0 => .LV,
        0xD0DC => .LV,
        0xD0F8 => .LV,
        0xD114 => .LV,
        0xD130 => .LV,
        0xD14C => .LV,
        0xD168 => .LV,
        0xD184 => .LV,
        0xD1A0 => .LV,
        0xD1BC => .LV,
        0xD1D8 => .LV,
        0xD1F4 => .LV,
        0xD210 => .LV,
        0xD22C => .LV,
        0xD248 => .LV,
        0xD264 => .LV,
        0xD280 => .LV,
        0xD29C => .LV,
        0xD2B8 => .LV,
        0xD2D4 => .LV,
        0xD2F0 => .LV,
        0xD30C => .LV,
        0xD328 => .LV,
        0xD344 => .LV,
        0xD360 => .LV,
        0xD37C => .LV,
        0xD398 => .LV,
        0xD3B4 => .LV,
        0xD3D0 => .LV,
        0xD3EC => .LV,
        0xD408 => .LV,
        0xD424 => .LV,
        0xD440 => .LV,
        0xD45C => .LV,
        0xD478 => .LV,
        0xD494 => .LV,
        0xD4B0 => .LV,
        0xD4CC => .LV,
        0xD4E8 => .LV,
        0xD504 => .LV,
        0xD520 => .LV,
        0xD53C => .LV,
        0xD558 => .LV,
        0xD574 => .LV,
        0xD590 => .LV,
        0xD5AC => .LV,
        0xD5C8 => .LV,
        0xD5E4 => .LV,
        0xD600 => .LV,
        0xD61C => .LV,
        0xD638 => .LV,
        0xD654 => .LV,
        0xD670 => .LV,
        0xD68C => .LV,
        0xD6A8 => .LV,
        0xD6C4 => .LV,
        0xD6E0 => .LV,
        0xD6FC => .LV,
        0xD718 => .LV,
        0xD734 => .LV,
        0xD750 => .LV,
        0xD76C => .LV,
        0xD788 => .LV,
        0xAC01...0xAC1B => .LVT,
        0xAC1D...0xAC37 => .LVT,
        0xAC39...0xAC53 => .LVT,
        0xAC55...0xAC6F => .LVT,
        0xAC71...0xAC8B => .LVT,
        0xAC8D...0xACA7 => .LVT,
        0xACA9...0xACC3 => .LVT,
        0xACC5...0xACDF => .LVT,
        0xACE1...0xACFB => .LVT,
        0xACFD...0xAD17 => .LVT,
        0xAD19...0xAD33 => .LVT,
        0xAD35...0xAD4F => .LVT,
        0xAD51...0xAD6B => .LVT,
        0xAD6D...0xAD87 => .LVT,
        0xAD89...0xADA3 => .LVT,
        0xADA5...0xADBF => .LVT,
        0xADC1...0xADDB => .LVT,
        0xADDD...0xADF7 => .LVT,
        0xADF9...0xAE13 => .LVT,
        0xAE15...0xAE2F => .LVT,
        0xAE31...0xAE4B => .LVT,
        0xAE4D...0xAE67 => .LVT,
        0xAE69...0xAE83 => .LVT,
        0xAE85...0xAE9F => .LVT,
        0xAEA1...0xAEBB => .LVT,
        0xAEBD...0xAED7 => .LVT,
        0xAED9...0xAEF3 => .LVT,
        0xAEF5...0xAF0F => .LVT,
        0xAF11...0xAF2B => .LVT,
        0xAF2D...0xAF47 => .LVT,
        0xAF49...0xAF63 => .LVT,
        0xAF65...0xAF7F => .LVT,
        0xAF81...0xAF9B => .LVT,
        0xAF9D...0xAFB7 => .LVT,
        0xAFB9...0xAFD3 => .LVT,
        0xAFD5...0xAFEF => .LVT,
        0xAFF1...0xB00B => .LVT,
        0xB00D...0xB027 => .LVT,
        0xB029...0xB043 => .LVT,
        0xB045...0xB05F => .LVT,
        0xB061...0xB07B => .LVT,
        0xB07D...0xB097 => .LVT,
        0xB099...0xB0B3 => .LVT,
        0xB0B5...0xB0CF => .LVT,
        0xB0D1...0xB0EB => .LVT,
        0xB0ED...0xB107 => .LVT,
        0xB109...0xB123 => .LVT,
        0xB125...0xB13F => .LVT,
        0xB141...0xB15B => .LVT,
        0xB15D...0xB177 => .LVT,
        0xB179...0xB193 => .LVT,
        0xB195...0xB1AF => .LVT,
        0xB1B1...0xB1CB => .LVT,
        0xB1CD...0xB1E7 => .LVT,
        0xB1E9...0xB203 => .LVT,
        0xB205...0xB21F => .LVT,
        0xB221...0xB23B => .LVT,
        0xB23D...0xB257 => .LVT,
        0xB259...0xB273 => .LVT,
        0xB275...0xB28F => .LVT,
        0xB291...0xB2AB => .LVT,
        0xB2AD...0xB2C7 => .LVT,
        0xB2C9...0xB2E3 => .LVT,
        0xB2E5...0xB2FF => .LVT,
        0xB301...0xB31B => .LVT,
        0xB31D...0xB337 => .LVT,
        0xB339...0xB353 => .LVT,
        0xB355...0xB36F => .LVT,
        0xB371...0xB38B => .LVT,
        0xB38D...0xB3A7 => .LVT,
        0xB3A9...0xB3C3 => .LVT,
        0xB3C5...0xB3DF => .LVT,
        0xB3E1...0xB3FB => .LVT,
        0xB3FD...0xB417 => .LVT,
        0xB419...0xB433 => .LVT,
        0xB435...0xB44F => .LVT,
        0xB451...0xB46B => .LVT,
        0xB46D...0xB487 => .LVT,
        0xB489...0xB4A3 => .LVT,
        0xB4A5...0xB4BF => .LVT,
        0xB4C1...0xB4DB => .LVT,
        0xB4DD...0xB4F7 => .LVT,
        0xB4F9...0xB513 => .LVT,
        0xB515...0xB52F => .LVT,
        0xB531...0xB54B => .LVT,
        0xB54D...0xB567 => .LVT,
        0xB569...0xB583 => .LVT,
        0xB585...0xB59F => .LVT,
        0xB5A1...0xB5BB => .LVT,
        0xB5BD...0xB5D7 => .LVT,
        0xB5D9...0xB5F3 => .LVT,
        0xB5F5...0xB60F => .LVT,
        0xB611...0xB62B => .LVT,
        0xB62D...0xB647 => .LVT,
        0xB649...0xB663 => .LVT,
        0xB665...0xB67F => .LVT,
        0xB681...0xB69B => .LVT,
        0xB69D...0xB6B7 => .LVT,
        0xB6B9...0xB6D3 => .LVT,
        0xB6D5...0xB6EF => .LVT,
        0xB6F1...0xB70B => .LVT,
        0xB70D...0xB727 => .LVT,
        0xB729...0xB743 => .LVT,
        0xB745...0xB75F => .LVT,
        0xB761...0xB77B => .LVT,
        0xB77D...0xB797 => .LVT,
        0xB799...0xB7B3 => .LVT,
        0xB7B5...0xB7CF => .LVT,
        0xB7D1...0xB7EB => .LVT,
        0xB7ED...0xB807 => .LVT,
        0xB809...0xB823 => .LVT,
        0xB825...0xB83F => .LVT,
        0xB841...0xB85B => .LVT,
        0xB85D...0xB877 => .LVT,
        0xB879...0xB893 => .LVT,
        0xB895...0xB8AF => .LVT,
        0xB8B1...0xB8CB => .LVT,
        0xB8CD...0xB8E7 => .LVT,
        0xB8E9...0xB903 => .LVT,
        0xB905...0xB91F => .LVT,
        0xB921...0xB93B => .LVT,
        0xB93D...0xB957 => .LVT,
        0xB959...0xB973 => .LVT,
        0xB975...0xB98F => .LVT,
        0xB991...0xB9AB => .LVT,
        0xB9AD...0xB9C7 => .LVT,
        0xB9C9...0xB9E3 => .LVT,
        0xB9E5...0xB9FF => .LVT,
        0xBA01...0xBA1B => .LVT,
        0xBA1D...0xBA37 => .LVT,
        0xBA39...0xBA53 => .LVT,
        0xBA55...0xBA6F => .LVT,
        0xBA71...0xBA8B => .LVT,
        0xBA8D...0xBAA7 => .LVT,
        0xBAA9...0xBAC3 => .LVT,
        0xBAC5...0xBADF => .LVT,
        0xBAE1...0xBAFB => .LVT,
        0xBAFD...0xBB17 => .LVT,
        0xBB19...0xBB33 => .LVT,
        0xBB35...0xBB4F => .LVT,
        0xBB51...0xBB6B => .LVT,
        0xBB6D...0xBB87 => .LVT,
        0xBB89...0xBBA3 => .LVT,
        0xBBA5...0xBBBF => .LVT,
        0xBBC1...0xBBDB => .LVT,
        0xBBDD...0xBBF7 => .LVT,
        0xBBF9...0xBC13 => .LVT,
        0xBC15...0xBC2F => .LVT,
        0xBC31...0xBC4B => .LVT,
        0xBC4D...0xBC67 => .LVT,
        0xBC69...0xBC83 => .LVT,
        0xBC85...0xBC9F => .LVT,
        0xBCA1...0xBCBB => .LVT,
        0xBCBD...0xBCD7 => .LVT,
        0xBCD9...0xBCF3 => .LVT,
        0xBCF5...0xBD0F => .LVT,
        0xBD11...0xBD2B => .LVT,
        0xBD2D...0xBD47 => .LVT,
        0xBD49...0xBD63 => .LVT,
        0xBD65...0xBD7F => .LVT,
        0xBD81...0xBD9B => .LVT,
        0xBD9D...0xBDB7 => .LVT,
        0xBDB9...0xBDD3 => .LVT,
        0xBDD5...0xBDEF => .LVT,
        0xBDF1...0xBE0B => .LVT,
        0xBE0D...0xBE27 => .LVT,
        0xBE29...0xBE43 => .LVT,
        0xBE45...0xBE5F => .LVT,
        0xBE61...0xBE7B => .LVT,
        0xBE7D...0xBE97 => .LVT,
        0xBE99...0xBEB3 => .LVT,
        0xBEB5...0xBECF => .LVT,
        0xBED1...0xBEEB => .LVT,
        0xBEED...0xBF07 => .LVT,
        0xBF09...0xBF23 => .LVT,
        0xBF25...0xBF3F => .LVT,
        0xBF41...0xBF5B => .LVT,
        0xBF5D...0xBF77 => .LVT,
        0xBF79...0xBF93 => .LVT,
        0xBF95...0xBFAF => .LVT,
        0xBFB1...0xBFCB => .LVT,
        0xBFCD...0xBFE7 => .LVT,
        0xBFE9...0xC003 => .LVT,
        0xC005...0xC01F => .LVT,
        0xC021...0xC03B => .LVT,
        0xC03D...0xC057 => .LVT,
        0xC059...0xC073 => .LVT,
        0xC075...0xC08F => .LVT,
        0xC091...0xC0AB => .LVT,
        0xC0AD...0xC0C7 => .LVT,
        0xC0C9...0xC0E3 => .LVT,
        0xC0E5...0xC0FF => .LVT,
        0xC101...0xC11B => .LVT,
        0xC11D...0xC137 => .LVT,
        0xC139...0xC153 => .LVT,
        0xC155...0xC16F => .LVT,
        0xC171...0xC18B => .LVT,
        0xC18D...0xC1A7 => .LVT,
        0xC1A9...0xC1C3 => .LVT,
        0xC1C5...0xC1DF => .LVT,
        0xC1E1...0xC1FB => .LVT,
        0xC1FD...0xC217 => .LVT,
        0xC219...0xC233 => .LVT,
        0xC235...0xC24F => .LVT,
        0xC251...0xC26B => .LVT,
        0xC26D...0xC287 => .LVT,
        0xC289...0xC2A3 => .LVT,
        0xC2A5...0xC2BF => .LVT,
        0xC2C1...0xC2DB => .LVT,
        0xC2DD...0xC2F7 => .LVT,
        0xC2F9...0xC313 => .LVT,
        0xC315...0xC32F => .LVT,
        0xC331...0xC34B => .LVT,
        0xC34D...0xC367 => .LVT,
        0xC369...0xC383 => .LVT,
        0xC385...0xC39F => .LVT,
        0xC3A1...0xC3BB => .LVT,
        0xC3BD...0xC3D7 => .LVT,
        0xC3D9...0xC3F3 => .LVT,
        0xC3F5...0xC40F => .LVT,
        0xC411...0xC42B => .LVT,
        0xC42D...0xC447 => .LVT,
        0xC449...0xC463 => .LVT,
        0xC465...0xC47F => .LVT,
        0xC481...0xC49B => .LVT,
        0xC49D...0xC4B7 => .LVT,
        0xC4B9...0xC4D3 => .LVT,
        0xC4D5...0xC4EF => .LVT,
        0xC4F1...0xC50B => .LVT,
        0xC50D...0xC527 => .LVT,
        0xC529...0xC543 => .LVT,
        0xC545...0xC55F => .LVT,
        0xC561...0xC57B => .LVT,
        0xC57D...0xC597 => .LVT,
        0xC599...0xC5B3 => .LVT,
        0xC5B5...0xC5CF => .LVT,
        0xC5D1...0xC5EB => .LVT,
        0xC5ED...0xC607 => .LVT,
        0xC609...0xC623 => .LVT,
        0xC625...0xC63F => .LVT,
        0xC641...0xC65B => .LVT,
        0xC65D...0xC677 => .LVT,
        0xC679...0xC693 => .LVT,
        0xC695...0xC6AF => .LVT,
        0xC6B1...0xC6CB => .LVT,
        0xC6CD...0xC6E7 => .LVT,
        0xC6E9...0xC703 => .LVT,
        0xC705...0xC71F => .LVT,
        0xC721...0xC73B => .LVT,
        0xC73D...0xC757 => .LVT,
        0xC759...0xC773 => .LVT,
        0xC775...0xC78F => .LVT,
        0xC791...0xC7AB => .LVT,
        0xC7AD...0xC7C7 => .LVT,
        0xC7C9...0xC7E3 => .LVT,
        0xC7E5...0xC7FF => .LVT,
        0xC801...0xC81B => .LVT,
        0xC81D...0xC837 => .LVT,
        0xC839...0xC853 => .LVT,
        0xC855...0xC86F => .LVT,
        0xC871...0xC88B => .LVT,
        0xC88D...0xC8A7 => .LVT,
        0xC8A9...0xC8C3 => .LVT,
        0xC8C5...0xC8DF => .LVT,
        0xC8E1...0xC8FB => .LVT,
        0xC8FD...0xC917 => .LVT,
        0xC919...0xC933 => .LVT,
        0xC935...0xC94F => .LVT,
        0xC951...0xC96B => .LVT,
        0xC96D...0xC987 => .LVT,
        0xC989...0xC9A3 => .LVT,
        0xC9A5...0xC9BF => .LVT,
        0xC9C1...0xC9DB => .LVT,
        0xC9DD...0xC9F7 => .LVT,
        0xC9F9...0xCA13 => .LVT,
        0xCA15...0xCA2F => .LVT,
        0xCA31...0xCA4B => .LVT,
        0xCA4D...0xCA67 => .LVT,
        0xCA69...0xCA83 => .LVT,
        0xCA85...0xCA9F => .LVT,
        0xCAA1...0xCABB => .LVT,
        0xCABD...0xCAD7 => .LVT,
        0xCAD9...0xCAF3 => .LVT,
        0xCAF5...0xCB0F => .LVT,
        0xCB11...0xCB2B => .LVT,
        0xCB2D...0xCB47 => .LVT,
        0xCB49...0xCB63 => .LVT,
        0xCB65...0xCB7F => .LVT,
        0xCB81...0xCB9B => .LVT,
        0xCB9D...0xCBB7 => .LVT,
        0xCBB9...0xCBD3 => .LVT,
        0xCBD5...0xCBEF => .LVT,
        0xCBF1...0xCC0B => .LVT,
        0xCC0D...0xCC27 => .LVT,
        0xCC29...0xCC43 => .LVT,
        0xCC45...0xCC5F => .LVT,
        0xCC61...0xCC7B => .LVT,
        0xCC7D...0xCC97 => .LVT,
        0xCC99...0xCCB3 => .LVT,
        0xCCB5...0xCCCF => .LVT,
        0xCCD1...0xCCEB => .LVT,
        0xCCED...0xCD07 => .LVT,
        0xCD09...0xCD23 => .LVT,
        0xCD25...0xCD3F => .LVT,
        0xCD41...0xCD5B => .LVT,
        0xCD5D...0xCD77 => .LVT,
        0xCD79...0xCD93 => .LVT,
        0xCD95...0xCDAF => .LVT,
        0xCDB1...0xCDCB => .LVT,
        0xCDCD...0xCDE7 => .LVT,
        0xCDE9...0xCE03 => .LVT,
        0xCE05...0xCE1F => .LVT,
        0xCE21...0xCE3B => .LVT,
        0xCE3D...0xCE57 => .LVT,
        0xCE59...0xCE73 => .LVT,
        0xCE75...0xCE8F => .LVT,
        0xCE91...0xCEAB => .LVT,
        0xCEAD...0xCEC7 => .LVT,
        0xCEC9...0xCEE3 => .LVT,
        0xCEE5...0xCEFF => .LVT,
        0xCF01...0xCF1B => .LVT,
        0xCF1D...0xCF37 => .LVT,
        0xCF39...0xCF53 => .LVT,
        0xCF55...0xCF6F => .LVT,
        0xCF71...0xCF8B => .LVT,
        0xCF8D...0xCFA7 => .LVT,
        0xCFA9...0xCFC3 => .LVT,
        0xCFC5...0xCFDF => .LVT,
        0xCFE1...0xCFFB => .LVT,
        0xCFFD...0xD017 => .LVT,
        0xD019...0xD033 => .LVT,
        0xD035...0xD04F => .LVT,
        0xD051...0xD06B => .LVT,
        0xD06D...0xD087 => .LVT,
        0xD089...0xD0A3 => .LVT,
        0xD0A5...0xD0BF => .LVT,
        0xD0C1...0xD0DB => .LVT,
        0xD0DD...0xD0F7 => .LVT,
        0xD0F9...0xD113 => .LVT,
        0xD115...0xD12F => .LVT,
        0xD131...0xD14B => .LVT,
        0xD14D...0xD167 => .LVT,
        0xD169...0xD183 => .LVT,
        0xD185...0xD19F => .LVT,
        0xD1A1...0xD1BB => .LVT,
        0xD1BD...0xD1D7 => .LVT,
        0xD1D9...0xD1F3 => .LVT,
        0xD1F5...0xD20F => .LVT,
        0xD211...0xD22B => .LVT,
        0xD22D...0xD247 => .LVT,
        0xD249...0xD263 => .LVT,
        0xD265...0xD27F => .LVT,
        0xD281...0xD29B => .LVT,
        0xD29D...0xD2B7 => .LVT,
        0xD2B9...0xD2D3 => .LVT,
        0xD2D5...0xD2EF => .LVT,
        0xD2F1...0xD30B => .LVT,
        0xD30D...0xD327 => .LVT,
        0xD329...0xD343 => .LVT,
        0xD345...0xD35F => .LVT,
        0xD361...0xD37B => .LVT,
        0xD37D...0xD397 => .LVT,
        0xD399...0xD3B3 => .LVT,
        0xD3B5...0xD3CF => .LVT,
        0xD3D1...0xD3EB => .LVT,
        0xD3ED...0xD407 => .LVT,
        0xD409...0xD423 => .LVT,
        0xD425...0xD43F => .LVT,
        0xD441...0xD45B => .LVT,
        0xD45D...0xD477 => .LVT,
        0xD479...0xD493 => .LVT,
        0xD495...0xD4AF => .LVT,
        0xD4B1...0xD4CB => .LVT,
        0xD4CD...0xD4E7 => .LVT,
        0xD4E9...0xD503 => .LVT,
        0xD505...0xD51F => .LVT,
        0xD521...0xD53B => .LVT,
        0xD53D...0xD557 => .LVT,
        0xD559...0xD573 => .LVT,
        0xD575...0xD58F => .LVT,
        0xD591...0xD5AB => .LVT,
        0xD5AD...0xD5C7 => .LVT,
        0xD5C9...0xD5E3 => .LVT,
        0xD5E5...0xD5FF => .LVT,
        0xD601...0xD61B => .LVT,
        0xD61D...0xD637 => .LVT,
        0xD639...0xD653 => .LVT,
        0xD655...0xD66F => .LVT,
        0xD671...0xD68B => .LVT,
        0xD68D...0xD6A7 => .LVT,
        0xD6A9...0xD6C3 => .LVT,
        0xD6C5...0xD6DF => .LVT,
        0xD6E1...0xD6FB => .LVT,
        0xD6FD...0xD717 => .LVT,
        0xD719...0xD733 => .LVT,
        0xD735...0xD74F => .LVT,
        0xD751...0xD76B => .LVT,
        0xD76D...0xD787 => .LVT,
        0xD789...0xD7A3 => .LVT,
        else => null,
    };
}
