nonmatching func_80136D68, 0x3C

glabel func_80136D68
    /* 4234 80136D68 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4238 80136D6C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 423C 80136D70 42E1040C */  jal        CD_init
    /* 4240 80136D74 00000000 */   nop
    /* 4244 80136D78 05004014 */  bnez       $v0, .L80136D90
    /* 4248 80136D7C 00000000 */   nop
    /* 424C 80136D80 06E1040C */  jal        CD_initvol
    /* 4250 80136D84 00000000 */   nop
    /* 4254 80136D88 65DB0408 */  j          .L80136D94
    /* 4258 80136D8C 0100422C */   sltiu     $v0, $v0, 0x1
  .L80136D90:
    /* 425C 80136D90 21100000 */  addu       $v0, $zero, $zero
  .L80136D94:
    /* 4260 80136D94 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4264 80136D98 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4268 80136D9C 0800E003 */  jr         $ra
    /* 426C 80136DA0 00000000 */   nop
endlabel func_80136D68
