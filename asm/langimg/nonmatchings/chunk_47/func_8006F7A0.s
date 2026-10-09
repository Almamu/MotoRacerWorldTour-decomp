nonmatching func_8006F7A0, 0x34

glabel func_8006F7A0
    /* 5DFB0 8006F7A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5DFB4 8006F7A4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5DFB8 8006F7A8 F5BD010C */  jal        func_8006F7D4
    /* 5DFBC 8006F7AC 00000000 */   nop
    /* 5DFC0 8006F7B0 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5DFC4 8006F7B4 6A51000C */  jal        func_800145A8
    /* 5DFC8 8006F7B8 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5DFCC 8006F7BC E4B7010C */  jal        func_8006DF90
    /* 5DFD0 8006F7C0 00000000 */   nop
    /* 5DFD4 8006F7C4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5DFD8 8006F7C8 00000000 */  nop
    /* 5DFDC 8006F7CC 0800E003 */  jr         $ra
    /* 5DFE0 8006F7D0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006F7A0
