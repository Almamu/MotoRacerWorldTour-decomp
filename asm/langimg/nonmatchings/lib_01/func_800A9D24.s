nonmatching func_800A9D24, 0x34

glabel func_800A9D24
    /* 98534 800A9D24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98538 800A9D28 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9853C 800A9D2C 0C80103C */  lui        $s0, %hi(D_800BD368)
    /* 98540 800A9D30 68D31026 */  addiu      $s0, $s0, %lo(D_800BD368)
    /* 98544 800A9D34 1400BFAF */  sw         $ra, 0x14($sp)
    /* 98548 800A9D38 0000048E */  lw         $a0, 0x0($s0)
    /* 9854C 800A9D3C A59D020C */  jal        func_800A7694
    /* 98550 800A9D40 D8FF1026 */   addiu     $s0, $s0, -0x28
    /* 98554 800A9D44 240000AE */  sw         $zero, 0x24($s0)
    /* 98558 800A9D48 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9855C 800A9D4C 1000B08F */  lw         $s0, 0x10($sp)
    /* 98560 800A9D50 0800E003 */  jr         $ra
    /* 98564 800A9D54 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A9D24
