nonmatching func_8013728C, 0x20

glabel func_8013728C
    /* 4758 8013728C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 475C 80137290 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4760 80137294 14E2040C */  jal        CD_getsector
    /* 4764 80137298 00000000 */   nop
    /* 4768 8013729C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 476C 801372A0 0100422C */  sltiu      $v0, $v0, 0x1
    /* 4770 801372A4 0800E003 */  jr         $ra
    /* 4774 801372A8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013728C
