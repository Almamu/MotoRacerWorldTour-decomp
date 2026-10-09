nonmatching func_800A2290, 0x20

glabel func_800A2290
    /* 90AA0 800A2290 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90AA4 800A2294 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90AA8 800A2298 8454000C */  jal        func_80015210
    /* 90AAC 800A229C 00000000 */   nop
    /* 90AB0 800A22A0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90AB4 800A22A4 00000000 */  nop
    /* 90AB8 800A22A8 0800E003 */  jr         $ra
    /* 90ABC 800A22AC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A2290
