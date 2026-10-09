nonmatching func_800928CC, 0x30

glabel func_800928CC
    /* 810DC 800928CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 810E0 800928D0 2110A000 */  addu       $v0, $a1, $zero
    /* 810E4 800928D4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 810E8 800928D8 00004584 */  lh         $a1, 0x0($v0)
    /* 810EC 800928DC 02004684 */  lh         $a2, 0x2($v0)
    /* 810F0 800928E0 04004784 */  lh         $a3, 0x4($v0)
    /* 810F4 800928E4 935F020C */  jal        func_80097E4C
    /* 810F8 800928E8 00000000 */   nop
    /* 810FC 800928EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 81100 800928F0 00000000 */  nop
    /* 81104 800928F4 0800E003 */  jr         $ra
    /* 81108 800928F8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800928CC
