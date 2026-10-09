nonmatching func_80144270, 0x20

glabel func_80144270
    /* 1173C 80144270 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 11740 80144274 1000BFAF */  sw         $ra, 0x10($sp)
    /* 11744 80144278 0810050C */  jal        func_80144020
    /* 11748 8014427C 21200000 */   addu      $a0, $zero, $zero
    /* 1174C 80144280 1000BF8F */  lw         $ra, 0x10($sp)
    /* 11750 80144284 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 11754 80144288 0800E003 */  jr         $ra
    /* 11758 8014428C 00000000 */   nop
endlabel func_80144270
