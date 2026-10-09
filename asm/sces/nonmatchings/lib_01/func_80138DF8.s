nonmatching func_80138DF8, 0x20

glabel func_80138DF8
    /* 62C4 80138DF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 62C8 80138DFC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 62CC 80138E00 E82B050C */  jal        strncmp
    /* 62D0 80138E04 0C000624 */   addiu     $a2, $zero, 0xC
    /* 62D4 80138E08 1000BF8F */  lw         $ra, 0x10($sp)
    /* 62D8 80138E0C 0100422C */  sltiu      $v0, $v0, 0x1
    /* 62DC 80138E10 0800E003 */  jr         $ra
    /* 62E0 80138E14 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80138DF8
