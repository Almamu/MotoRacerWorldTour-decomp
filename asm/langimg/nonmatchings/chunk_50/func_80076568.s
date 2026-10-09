nonmatching func_80076568, 0x20

glabel func_80076568
    /* 64D78 80076568 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 64D7C 8007656C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 64D80 80076570 5ED3010C */  jal        func_80074D78
    /* 64D84 80076574 00000000 */   nop
    /* 64D88 80076578 1000BF8F */  lw         $ra, 0x10($sp)
    /* 64D8C 8007657C 00000000 */  nop
    /* 64D90 80076580 0800E003 */  jr         $ra
    /* 64D94 80076584 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80076568
