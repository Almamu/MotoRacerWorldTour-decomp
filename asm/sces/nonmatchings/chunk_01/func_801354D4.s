nonmatching func_801354D4, 0x28

glabel func_801354D4
    /* 29A0 801354D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 29A4 801354D8 1580043C */  lui        $a0, %hi(D_8014D3F8)
    /* 29A8 801354DC F8D38424 */  addiu      $a0, $a0, %lo(D_8014D3F8)
    /* 29AC 801354E0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 29B0 801354E4 1AD3040C */  jal        func_80134C68
    /* 29B4 801354E8 02000524 */   addiu     $a1, $zero, 0x2
    /* 29B8 801354EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 29BC 801354F0 00000000 */  nop
    /* 29C0 801354F4 0800E003 */  jr         $ra
    /* 29C4 801354F8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_801354D4
