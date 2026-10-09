nonmatching func_800A265C, 0x44

glabel func_800A265C
    /* 90E6C 800A265C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90E70 800A2660 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90E74 800A2664 98AA020C */  jal        func_800AAA60
    /* 90E78 800A2668 00000000 */   nop
    /* 90E7C 800A266C 0D80043C */  lui        $a0, %hi(D_800D60C0)
    /* 90E80 800A2670 03000324 */  addiu      $v1, $zero, 0x3
    /* 90E84 800A2674 0D80053C */  lui        $a1, %hi(D_800D60C8)
    /* 90E88 800A2678 C860A524 */  addiu      $a1, $a1, %lo(D_800D60C8)
    /* 90E8C 800A267C C06083AC */  sw         $v1, %lo(D_800D60C0)($a0)
    /* 90E90 800A2680 0C00A38C */  lw         $v1, 0xC($a1)
    /* 90E94 800A2684 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90E98 800A2688 0D80043C */  lui        $a0, %hi(D_800D6070)
    /* 90E9C 800A268C 706082AC */  sw         $v0, %lo(D_800D6070)($a0)
    /* 90EA0 800A2690 01006324 */  addiu      $v1, $v1, 0x1
    /* 90EA4 800A2694 0C00A3AC */  sw         $v1, 0xC($a1)
    /* 90EA8 800A2698 0800E003 */  jr         $ra
    /* 90EAC 800A269C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A265C
