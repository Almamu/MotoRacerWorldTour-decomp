nonmatching _._10CobjetLink, 0x44

glabel _._10CobjetLink
    /* 63294 80074A84 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 63298 80074A88 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6329C 80074A8C 05008010 */  beqz       $a0, .L80074AA4
    /* 632A0 80074A90 21188000 */   addu      $v1, $a0, $zero
  .L80074A94:
    /* 632A4 80074A94 0000638C */  lw         $v1, 0x0($v1)
    /* 632A8 80074A98 00000000 */  nop
    /* 632AC 80074A9C FDFF6014 */  bnez       $v1, .L80074A94
    /* 632B0 80074AA0 00000000 */   nop
  .L80074AA4:
    /* 632B4 80074AA4 0100A230 */  andi       $v0, $a1, 0x1
    /* 632B8 80074AA8 03004010 */  beqz       $v0, .L80074AB8
    /* 632BC 80074AAC 00000000 */   nop
    /* 632C0 80074AB0 679C020C */  jal        __builtin_delete
    /* 632C4 80074AB4 00000000 */   nop
  .L80074AB8:
    /* 632C8 80074AB8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 632CC 80074ABC 00000000 */  nop
    /* 632D0 80074AC0 0800E003 */  jr         $ra
    /* 632D4 80074AC4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel _._10CobjetLink
