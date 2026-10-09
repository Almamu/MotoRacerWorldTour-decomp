nonmatching func_800269C4, 0x2C

glabel func_800269C4
    /* 151D4 800269C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 151D8 800269C8 21108000 */  addu       $v0, $a0, $zero
    /* 151DC 800269CC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 151E0 800269D0 A005448C */  lw         $a0, 0x5A0($v0)
    /* 151E4 800269D4 FA034684 */  lh         $a2, 0x3FA($v0)
    /* 151E8 800269D8 BC8D000C */  jal        func_800236F0
    /* 151EC 800269DC 00000000 */   nop
    /* 151F0 800269E0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 151F4 800269E4 00000000 */  nop
    /* 151F8 800269E8 0800E003 */  jr         $ra
    /* 151FC 800269EC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800269C4
