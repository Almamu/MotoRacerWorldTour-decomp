nonmatching func_8009F290, 0x38

glabel func_8009F290
    /* 8DAA0 8009F290 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DAA4 8009F294 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DAA8 8009F298 800A828C */  lw         $v0, 0xA80($a0)
    /* 8DAAC 8009F29C 00000000 */  nop
    /* 8DAB0 8009F2A0 6000448C */  lw         $a0, 0x60($v0)
    /* 8DAB4 8009F2A4 00000000 */  nop
    /* 8DAB8 8009F2A8 03008010 */  beqz       $a0, .L8009F2B8
    /* 8DABC 8009F2AC 00000000 */   nop
    /* 8DAC0 8009F2B0 D878020C */  jal        func_8009E360
    /* 8DAC4 8009F2B4 00000000 */   nop
  .L8009F2B8:
    /* 8DAC8 8009F2B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DACC 8009F2BC 00000000 */  nop
    /* 8DAD0 8009F2C0 0800E003 */  jr         $ra
    /* 8DAD4 8009F2C4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F290
