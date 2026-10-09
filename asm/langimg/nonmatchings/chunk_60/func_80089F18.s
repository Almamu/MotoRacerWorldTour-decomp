nonmatching func_80089F18, 0x44

glabel func_80089F18
    /* 78728 80089F18 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7872C 80089F1C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 78730 80089F20 21888000 */  addu       $s1, $a0, $zero
    /* 78734 80089F24 1000B0AF */  sw         $s0, 0x10($sp)
    /* 78738 80089F28 1800BFAF */  sw         $ra, 0x18($sp)
    /* 7873C 80089F2C ED27020C */  jal        func_80089FB4
    /* 78740 80089F30 2180A000 */   addu      $s0, $a1, $zero
    /* 78744 80089F34 01001032 */  andi       $s0, $s0, 0x1
    /* 78748 80089F38 03000012 */  beqz       $s0, .L80089F48
    /* 7874C 80089F3C 00000000 */   nop
    /* 78750 80089F40 679C020C */  jal        __builtin_delete
    /* 78754 80089F44 21202002 */   addu      $a0, $s1, $zero
  .L80089F48:
    /* 78758 80089F48 1800BF8F */  lw         $ra, 0x18($sp)
    /* 7875C 80089F4C 1400B18F */  lw         $s1, 0x14($sp)
    /* 78760 80089F50 1000B08F */  lw         $s0, 0x10($sp)
    /* 78764 80089F54 0800E003 */  jr         $ra
    /* 78768 80089F58 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80089F18
