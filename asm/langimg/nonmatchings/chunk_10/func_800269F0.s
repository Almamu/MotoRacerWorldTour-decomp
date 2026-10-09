nonmatching func_800269F0, 0x2C

glabel func_800269F0
    /* 15200 800269F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 15204 800269F4 21108000 */  addu       $v0, $a0, $zero
    /* 15208 800269F8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1520C 800269FC A005448C */  lw         $a0, 0x5A0($v0)
    /* 15210 80026A00 FA034684 */  lh         $a2, 0x3FA($v0)
    /* 15214 80026A04 E28D000C */  jal        func_80023788
    /* 15218 80026A08 00000000 */   nop
    /* 1521C 80026A0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 15220 80026A10 00000000 */  nop
    /* 15224 80026A14 0800E003 */  jr         $ra
    /* 15228 80026A18 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800269F0
