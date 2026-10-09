nonmatching func_800499B8, 0x24

glabel func_800499B8
    /* 381C8 800499B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 381CC 800499BC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 381D0 800499C0 7803848C */  lw         $a0, 0x378($a0)
    /* 381D4 800499C4 2943010C */  jal        func_80050CA4
    /* 381D8 800499C8 00000000 */   nop
    /* 381DC 800499CC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 381E0 800499D0 00000000 */  nop
    /* 381E4 800499D4 0800E003 */  jr         $ra
    /* 381E8 800499D8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800499B8
