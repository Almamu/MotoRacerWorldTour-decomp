nonmatching func_80136090, 0x3C

glabel func_80136090
    /* 355C 80136090 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3560 80136094 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3564 80136098 291A050C */  jal        func_801468A4
    /* 3568 8013609C 00000000 */   nop
    /* 356C 801360A0 E20A050C */  jal        SpuClearReverbWorkArea
    /* 3570 801360A4 05000424 */   addiu     $a0, $zero, 0x5
    /* 3574 801360A8 CE19050C */  jal        SsUtSetReverbType
    /* 3578 801360AC 21200000 */   addu      $a0, $zero, $zero
    /* 357C 801360B0 21200000 */  addu       $a0, $zero, $zero
    /* 3580 801360B4 3E17050C */  jal        SsUtSetReverbDepth
    /* 3584 801360B8 21280000 */   addu      $a1, $zero, $zero
    /* 3588 801360BC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 358C 801360C0 00000000 */  nop
    /* 3590 801360C4 0800E003 */  jr         $ra
    /* 3594 801360C8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80136090
