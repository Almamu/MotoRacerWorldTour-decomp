nonmatching CdReady, 0x20

glabel CdReady
    /* 4354 80136E88 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4358 80136E8C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 435C 80136E90 1CDF040C */  jal        CD_ready
    /* 4360 80136E94 00000000 */   nop
    /* 4364 80136E98 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4368 80136E9C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 436C 80136EA0 0800E003 */  jr         $ra
    /* 4370 80136EA4 00000000 */   nop
endlabel CdReady
