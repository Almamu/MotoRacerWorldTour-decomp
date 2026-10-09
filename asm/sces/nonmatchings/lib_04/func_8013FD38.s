nonmatching func_8013FD38, 0x20

glabel func_8013FD38
    /* D204 8013FD38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D208 8013FD3C 1000BFAF */  sw         $ra, 0x10($sp)
    /* D20C 8013FD40 C200050C */  jal        PadStartCom
    /* D210 8013FD44 00000000 */   nop
    /* D214 8013FD48 1000BF8F */  lw         $ra, 0x10($sp)
    /* D218 8013FD4C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D21C 8013FD50 0800E003 */  jr         $ra
    /* D220 8013FD54 00000000 */   nop
endlabel func_8013FD38
