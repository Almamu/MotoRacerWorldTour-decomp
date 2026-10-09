nonmatching SsUtReverbOn, 0x20

glabel SsUtReverbOn
    /* 13D90 801468C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 13D94 801468C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 13D98 801468CC F519050C */  jal        SpuSetReverb
    /* 13D9C 801468D0 01000424 */   addiu     $a0, $zero, 0x1
    /* 13DA0 801468D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 13DA4 801468D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 13DA8 801468DC 0800E003 */  jr         $ra
    /* 13DAC 801468E0 00000000 */   nop
endlabel SsUtReverbOn
