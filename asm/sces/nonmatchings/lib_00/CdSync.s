nonmatching CdSync, 0x20

glabel CdSync
    /* 4320 80136E54 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4324 80136E58 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4328 80136E5C D1E0040C */  jal        CD_flush
    /* 432C 80136E60 00000000 */   nop
    /* 4330 80136E64 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4334 80136E68 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4338 80136E6C 0800E003 */  jr         $ra
    /* 433C 80136E70 00000000 */   nop
endlabel CdSync
