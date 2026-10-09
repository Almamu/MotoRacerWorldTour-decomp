nonmatching func_80079494, 0x20

glabel func_80079494
    /* 67CA4 80079494 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 67CA8 80079498 1000BFAF */  sw         $ra, 0x10($sp)
    /* 67CAC 8007949C 3BE3010C */  jal        func_80078CEC
    /* 67CB0 800794A0 00000000 */   nop
    /* 67CB4 800794A4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 67CB8 800794A8 00000000 */  nop
    /* 67CBC 800794AC 0800E003 */  jr         $ra
    /* 67CC0 800794B0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80079494
