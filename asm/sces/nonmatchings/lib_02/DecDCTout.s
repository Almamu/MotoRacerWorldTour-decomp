nonmatching DecDCTout, 0x20

glabel DecDCTout
    /* 8104 8013AC38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8108 8013AC3C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 810C 8013AC40 8EEB040C */  jal        func_8013AE38
    /* 8110 8013AC44 00000000 */   nop
    /* 8114 8013AC48 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8118 8013AC4C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 811C 8013AC50 0800E003 */  jr         $ra
    /* 8120 8013AC54 00000000 */   nop
endlabel DecDCTout
