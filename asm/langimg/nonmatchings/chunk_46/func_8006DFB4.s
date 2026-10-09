nonmatching func_8006DFB4, 0x24

glabel func_8006DFB4
    /* 5C7C4 8006DFB4 3838848F */  lw         $a0, %gp_rel(D_800C7F28)($gp)
    /* 5C7C8 8006DFB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5C7CC 8006DFBC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5C7D0 8006DFC0 8CB4010C */  jal        func_8006D230
    /* 5C7D4 8006DFC4 00000000 */   nop
    /* 5C7D8 8006DFC8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5C7DC 8006DFCC 00000000 */  nop
    /* 5C7E0 8006DFD0 0800E003 */  jr         $ra
    /* 5C7E4 8006DFD4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006DFB4
