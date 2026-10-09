nonmatching CdDataSync, 0x20

glabel CdDataSync
    /* 47BC 801372F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 47C0 801372F4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 47C4 801372F8 BAE1040C */  jal        CD_datasync
    /* 47C8 801372FC 00000000 */   nop
    /* 47CC 80137300 1000BF8F */  lw         $ra, 0x10($sp)
    /* 47D0 80137304 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 47D4 80137308 0800E003 */  jr         $ra
    /* 47D8 8013730C 00000000 */   nop
endlabel CdDataSync
