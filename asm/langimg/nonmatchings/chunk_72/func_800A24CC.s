nonmatching func_800A24CC, 0x44

glabel func_800A24CC
    /* 90CDC 800A24CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90CE0 800A24D0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90CE4 800A24D4 98AA020C */  jal        _card_chan
    /* 90CE8 800A24D8 00000000 */   nop
    /* 90CEC 800A24DC 0D80043C */  lui        $a0, %hi(D_800D6094)
    /* 90CF0 800A24E0 01000324 */  addiu      $v1, $zero, 0x1
    /* 90CF4 800A24E4 0D80053C */  lui        $a1, %hi(D_800D60A0)
    /* 90CF8 800A24E8 A060A524 */  addiu      $a1, $a1, %lo(D_800D60A0)
    /* 90CFC 800A24EC 946083AC */  sw         $v1, %lo(D_800D6094)($a0)
    /* 90D00 800A24F0 0400A38C */  lw         $v1, 0x4($a1)
    /* 90D04 800A24F4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90D08 800A24F8 0D80043C */  lui        $a0, %hi(D_800D6070)
    /* 90D0C 800A24FC 706082AC */  sw         $v0, %lo(D_800D6070)($a0)
    /* 90D10 800A2500 01006324 */  addiu      $v1, $v1, 0x1
    /* 90D14 800A2504 0400A3AC */  sw         $v1, 0x4($a1)
    /* 90D18 800A2508 0800E003 */  jr         $ra
    /* 90D1C 800A250C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A24CC
