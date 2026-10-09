nonmatching CdGetSector2, 0x20

glabel CdGetSector2
    /* 962C8 800A7AB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 962CC 800A7ABC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 962D0 800A7AC0 79A4020C */  jal        CD_getsector2
    /* 962D4 800A7AC4 00000000 */   nop
    /* 962D8 800A7AC8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 962DC 800A7ACC 0100422C */  sltiu      $v0, $v0, 0x1
    /* 962E0 800A7AD0 0800E003 */  jr         $ra
    /* 962E4 800A7AD4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel CdGetSector2
