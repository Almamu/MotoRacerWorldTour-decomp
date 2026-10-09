nonmatching func_801468A4, 0x20

glabel func_801468A4
    /* 13D70 801468A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 13D74 801468A8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 13D78 801468AC F519050C */  jal        SpuSetReverb
    /* 13D7C 801468B0 21200000 */   addu      $a0, $zero, $zero
    /* 13D80 801468B4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 13D84 801468B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 13D88 801468BC 0800E003 */  jr         $ra
    /* 13D8C 801468C0 00000000 */   nop
endlabel func_801468A4
