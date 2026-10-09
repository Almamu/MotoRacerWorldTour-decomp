nonmatching func_80136DF4, 0x28

glabel func_80136DF4
    /* 42C0 80136DF4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 42C4 80136DF8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 42C8 80136DFC 00F0043C */  lui        $a0, (0xF0000003 >> 16)
    /* 42CC 80136E00 03008434 */  ori        $a0, $a0, (0xF0000003 & 0xFFFF)
    /* 42D0 80136E04 D72A050C */  jal        func_8014AB5C
    /* 42D4 80136E08 40000524 */   addiu     $a1, $zero, 0x40
    /* 42D8 80136E0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 42DC 80136E10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 42E0 80136E14 0800E003 */  jr         $ra
    /* 42E4 80136E18 00000000 */   nop
endlabel func_80136DF4
    /* 42E8 80136E1C 00000000 */  nop
    /* 42EC 80136E20 00000000 */  nop
    /* 42F0 80136E24 00000000 */  nop
