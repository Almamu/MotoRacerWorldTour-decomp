nonmatching func_80017A0C, 0x24

glabel func_80017A0C
    /* 621C 80017A0C 3E008580 */  lb         $a1, 0x3E($a0)
    /* 6220 80017A10 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6224 80017A14 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6228 80017A18 635E000C */  jal        func_8001798C
    /* 622C 80017A1C 00000000 */   nop
    /* 6230 80017A20 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6234 80017A24 00000000 */  nop
    /* 6238 80017A28 0800E003 */  jr         $ra
    /* 623C 80017A2C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80017A0C
