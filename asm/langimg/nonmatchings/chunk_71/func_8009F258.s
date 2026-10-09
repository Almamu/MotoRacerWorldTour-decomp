nonmatching func_8009F258, 0x38

glabel func_8009F258
    /* 8DA68 8009F258 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DA6C 8009F25C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DA70 8009F260 800A828C */  lw         $v0, 0xA80($a0)
    /* 8DA74 8009F264 00000000 */  nop
    /* 8DA78 8009F268 6000448C */  lw         $a0, 0x60($v0)
    /* 8DA7C 8009F26C 00000000 */  nop
    /* 8DA80 8009F270 03008010 */  beqz       $a0, .L8009F280
    /* 8DA84 8009F274 00000000 */   nop
    /* 8DA88 8009F278 BB7A020C */  jal        func_8009EAEC
    /* 8DA8C 8009F27C 00000000 */   nop
  .L8009F280:
    /* 8DA90 8009F280 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DA94 8009F284 00000000 */  nop
    /* 8DA98 8009F288 0800E003 */  jr         $ra
    /* 8DA9C 8009F28C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F258
