nonmatching func_80078B58, 0x20

glabel func_80078B58
    /* 67368 80078B58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6736C 80078B5C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 67370 80078B60 F523020C */  jal        func_80088FD4
    /* 67374 80078B64 30008424 */   addiu     $a0, $a0, 0x30
    /* 67378 80078B68 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6737C 80078B6C 00000000 */  nop
    /* 67380 80078B70 0800E003 */  jr         $ra
    /* 67384 80078B74 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80078B58
