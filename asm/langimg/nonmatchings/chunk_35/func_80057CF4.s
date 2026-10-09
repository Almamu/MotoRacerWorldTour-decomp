nonmatching func_80057CF4, 0x20

glabel func_80057CF4
    /* 46504 80057CF4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 46508 80057CF8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4650C 80057CFC E8BD010C */  jal        func_8006F7A0
    /* 46510 80057D00 00000000 */   nop
    /* 46514 80057D04 1000BF8F */  lw         $ra, 0x10($sp)
    /* 46518 80057D08 00000000 */  nop
    /* 4651C 80057D0C 0800E003 */  jr         $ra
    /* 46520 80057D10 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80057CF4
