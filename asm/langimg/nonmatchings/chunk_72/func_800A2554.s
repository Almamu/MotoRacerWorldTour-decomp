nonmatching func_800A2554, 0x44

glabel func_800A2554
    /* 90D64 800A2554 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90D68 800A2558 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90D6C 800A255C 98AA020C */  jal        func_800AAA60
    /* 90D70 800A2560 00000000 */   nop
    /* 90D74 800A2564 0D80043C */  lui        $a0, %hi(D_800D6094)
    /* 90D78 800A2568 03000324 */  addiu      $v1, $zero, 0x3
    /* 90D7C 800A256C 0D80053C */  lui        $a1, %hi(D_800D60A0)
    /* 90D80 800A2570 A060A524 */  addiu      $a1, $a1, %lo(D_800D60A0)
    /* 90D84 800A2574 946083AC */  sw         $v1, %lo(D_800D6094)($a0)
    /* 90D88 800A2578 0C00A38C */  lw         $v1, 0xC($a1)
    /* 90D8C 800A257C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90D90 800A2580 0D80043C */  lui        $a0, %hi(D_800D6070)
    /* 90D94 800A2584 706082AC */  sw         $v0, %lo(D_800D6070)($a0)
    /* 90D98 800A2588 01006324 */  addiu      $v1, $v1, 0x1
    /* 90D9C 800A258C 0C00A3AC */  sw         $v1, 0xC($a1)
    /* 90DA0 800A2590 0800E003 */  jr         $ra
    /* 90DA4 800A2594 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A2554
