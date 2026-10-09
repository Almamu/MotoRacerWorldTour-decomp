nonmatching func_800A2510, 0x44

glabel func_800A2510
    /* 90D20 800A2510 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90D24 800A2514 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90D28 800A2518 98AA020C */  jal        _card_chan
    /* 90D2C 800A251C 00000000 */   nop
    /* 90D30 800A2520 0D80043C */  lui        $a0, %hi(D_800D6094)
    /* 90D34 800A2524 02000324 */  addiu      $v1, $zero, 0x2
    /* 90D38 800A2528 0D80053C */  lui        $a1, %hi(D_800D60A0)
    /* 90D3C 800A252C A060A524 */  addiu      $a1, $a1, %lo(D_800D60A0)
    /* 90D40 800A2530 946083AC */  sw         $v1, %lo(D_800D6094)($a0)
    /* 90D44 800A2534 0800A38C */  lw         $v1, 0x8($a1)
    /* 90D48 800A2538 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90D4C 800A253C 0D80043C */  lui        $a0, %hi(D_800D6070)
    /* 90D50 800A2540 706082AC */  sw         $v0, %lo(D_800D6070)($a0)
    /* 90D54 800A2544 01006324 */  addiu      $v1, $v1, 0x1
    /* 90D58 800A2548 0800A3AC */  sw         $v1, 0x8($a1)
    /* 90D5C 800A254C 0800E003 */  jr         $ra
    /* 90D60 800A2550 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A2510
