nonmatching func_801354B0, 0x24

glabel func_801354B0
    /* 297C 801354B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2980 801354B4 1580043C */  lui        $a0, %hi(D_8014D3F8)
    /* 2984 801354B8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2988 801354BC 24D3040C */  jal        func_80134C90
    /* 298C 801354C0 F8D38424 */   addiu     $a0, $a0, %lo(D_8014D3F8)
    /* 2990 801354C4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2994 801354C8 00000000 */  nop
    /* 2998 801354CC 0800E003 */  jr         $ra
    /* 299C 801354D0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_801354B0
