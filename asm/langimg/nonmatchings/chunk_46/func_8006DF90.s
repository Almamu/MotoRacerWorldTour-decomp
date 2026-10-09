nonmatching func_8006DF90, 0x24

glabel func_8006DF90
    /* 5C7A0 8006DF90 3838848F */  lw         $a0, %gp_rel(D_800C7F28)($gp)
    /* 5C7A4 8006DF94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5C7A8 8006DF98 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5C7AC 8006DF9C 7BB4010C */  jal        func_8006D1EC
    /* 5C7B0 8006DFA0 00000000 */   nop
    /* 5C7B4 8006DFA4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5C7B8 8006DFA8 00000000 */  nop
    /* 5C7BC 8006DFAC 0800E003 */  jr         $ra
    /* 5C7C0 8006DFB0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006DF90
