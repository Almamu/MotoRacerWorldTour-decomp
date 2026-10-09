nonmatching func_800A01FC, 0x20

glabel func_800A01FC
    /* 8EA0C 800A01FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8EA10 800A0200 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8EA14 800A0204 4980020C */  jal        func_800A0124
    /* 8EA18 800A0208 40008424 */   addiu     $a0, $a0, 0x40
    /* 8EA1C 800A020C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8EA20 800A0210 00000000 */  nop
    /* 8EA24 800A0214 0800E003 */  jr         $ra
    /* 8EA28 800A0218 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A01FC
