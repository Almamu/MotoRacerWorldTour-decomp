nonmatching CdDataSync, 0x20

glabel CdDataSync
    /* 9630C 800A7AFC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 96310 800A7B00 1000BFAF */  sw         $ra, 0x10($sp)
    /* 96314 800A7B04 DFA3020C */  jal        CD_datasync
    /* 96318 800A7B08 00000000 */   nop
    /* 9631C 800A7B0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 96320 800A7B10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 96324 800A7B14 0800E003 */  jr         $ra
    /* 96328 800A7B18 00000000 */   nop
endlabel CdDataSync
