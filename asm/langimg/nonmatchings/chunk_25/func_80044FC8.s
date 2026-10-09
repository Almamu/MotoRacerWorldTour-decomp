nonmatching func_80044FC8, 0x20

glabel func_80044FC8
    /* 337D8 80044FC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 337DC 80044FCC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 337E0 80044FD0 3EFF000C */  jal        func_8003FCF8
    /* 337E4 80044FD4 00000000 */   nop
    /* 337E8 80044FD8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 337EC 80044FDC 00000000 */  nop
    /* 337F0 80044FE0 0800E003 */  jr         $ra
    /* 337F4 80044FE4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80044FC8
