nonmatching func_800AD7E8, 0x48

glabel func_800AD7E8
    /* 9BFF8 800AD7E8 0004033C */  lui        $v1, (0x4000002 >> 16)
    /* 9BFFC 800AD7EC 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9C000 800AD7F0 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9C004 800AD7F4 02006334 */  ori        $v1, $v1, (0x4000002 & 0xFFFF)
    /* 9C008 800AD7F8 000043AC */  sw         $v1, 0x0($v0)
    /* 9C00C 800AD7FC 0C80023C */  lui        $v0, %hi(D_800BF34C)
    /* 9C010 800AD800 4CF3428C */  lw         $v0, %lo(D_800BF34C)($v0)
    /* 9C014 800AD804 00000000 */  nop
    /* 9C018 800AD808 000044AC */  sw         $a0, 0x0($v0)
    /* 9C01C 800AD80C 0C80023C */  lui        $v0, %hi(D_800BF350)
    /* 9C020 800AD810 50F3428C */  lw         $v0, %lo(D_800BF350)($v0)
    /* 9C024 800AD814 0001033C */  lui        $v1, (0x1000401 >> 16)
    /* 9C028 800AD818 000040AC */  sw         $zero, 0x0($v0)
    /* 9C02C 800AD81C 0C80023C */  lui        $v0, %hi(D_800BF354)
    /* 9C030 800AD820 54F3428C */  lw         $v0, %lo(D_800BF354)($v0)
    /* 9C034 800AD824 01046334 */  ori        $v1, $v1, (0x1000401 & 0xFFFF)
    /* 9C038 800AD828 0800E003 */  jr         $ra
    /* 9C03C 800AD82C 000043AC */   sw        $v1, 0x0($v0)
endlabel func_800AD7E8
