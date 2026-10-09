nonmatching func_8013FD58, 0x20

glabel func_8013FD58
    /* D224 8013FD58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D228 8013FD5C 1000BFAF */  sw         $ra, 0x10($sp)
    /* D22C 8013FD60 F500050C */  jal        PadStopCom
    /* D230 8013FD64 00000000 */   nop
    /* D234 8013FD68 1000BF8F */  lw         $ra, 0x10($sp)
    /* D238 8013FD6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D23C 8013FD70 0800E003 */  jr         $ra
    /* D240 8013FD74 00000000 */   nop
endlabel func_8013FD58
