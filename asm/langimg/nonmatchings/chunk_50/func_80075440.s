nonmatching func_80075440, 0x28

glabel func_80075440
    /* 63C50 80075440 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 63C54 80075444 1000BFAF */  sw         $ra, 0x10($sp)
    /* 63C58 80075448 709C020C */  jal        __builtin_new
    /* 63C5C 8007544C 20000424 */   addiu     $a0, $zero, 0x20
    /* 63C60 80075450 4CD3010C */  jal        func_80074D30
    /* 63C64 80075454 21204000 */   addu      $a0, $v0, $zero
    /* 63C68 80075458 1000BF8F */  lw         $ra, 0x10($sp)
    /* 63C6C 8007545C 00000000 */  nop
    /* 63C70 80075460 0800E003 */  jr         $ra
    /* 63C74 80075464 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80075440
