nonmatching SsInit, 0x40

glabel SsInit
    /* 10EBC 801439F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 10EC0 801439F4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 10EC4 801439F8 A6EC040C */  jal        ResetCallback
    /* 10EC8 801439FC 00000000 */   nop
    /* 10ECC 80143A00 8C0E050C */  jal        func_80143A30
    /* 10ED0 80143A04 00000000 */   nop
    /* 10ED4 80143A08 E20A050C */  jal        SpuClearReverbWorkArea
    /* 10ED8 80143A0C 07000424 */   addiu     $a0, $zero, 0x7
    /* 10EDC 80143A10 940E050C */  jal        _SsInit
    /* 10EE0 80143A14 00000000 */   nop
    /* 10EE4 80143A18 1000BF8F */  lw         $ra, 0x10($sp)
    /* 10EE8 80143A1C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 10EEC 80143A20 0800E003 */  jr         $ra
    /* 10EF0 80143A24 00000000 */   nop
    /* 10EF4 80143A28 00000000 */  nop
    /* 10EF8 80143A2C 00000000 */  nop
endlabel SsInit
