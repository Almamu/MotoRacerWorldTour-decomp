nonmatching func_800A22B0, 0x20

glabel func_800A22B0
    /* 90AC0 800A22B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90AC4 800A22B4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90AC8 800A22B8 B954000C */  jal        func_800152E4
    /* 90ACC 800A22BC 00000000 */   nop
    /* 90AD0 800A22C0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90AD4 800A22C4 00000000 */  nop
    /* 90AD8 800A22C8 0800E003 */  jr         $ra
    /* 90ADC 800A22CC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A22B0
