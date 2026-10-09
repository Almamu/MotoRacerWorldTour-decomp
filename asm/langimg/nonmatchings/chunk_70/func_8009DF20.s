nonmatching func_8009DF20, 0x38

glabel func_8009DF20
    /* 8C730 8009DF20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8C734 8009DF24 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8C738 8009DF28 800A828C */  lw         $v0, 0xA80($a0)
    /* 8C73C 8009DF2C 00000000 */  nop
    /* 8C740 8009DF30 6000448C */  lw         $a0, 0x60($v0)
    /* 8C744 8009DF34 00000000 */  nop
    /* 8C748 8009DF38 03008010 */  beqz       $a0, .L8009DF48
    /* 8C74C 8009DF3C 00000000 */   nop
    /* 8C750 8009DF40 7376020C */  jal        func_8009D9CC
    /* 8C754 8009DF44 00000000 */   nop
  .L8009DF48:
    /* 8C758 8009DF48 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8C75C 8009DF4C 00000000 */  nop
    /* 8C760 8009DF50 0800E003 */  jr         $ra
    /* 8C764 8009DF54 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009DF20
