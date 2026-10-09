nonmatching func_8001456C, 0x3C

glabel func_8001456C
    /* 2D7C 8001456C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2D80 80014570 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2D84 80014574 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2D88 80014578 9F50000C */  jal        func_8001427C
    /* 2D8C 8001457C 21800000 */   addu      $s0, $zero, $zero
    /* 2D90 80014580 04004010 */  beqz       $v0, .L80014594
    /* 2D94 80014584 00000000 */   nop
    /* 2D98 80014588 1000428C */  lw         $v0, 0x10($v0)
    /* 2D9C 8001458C 00000000 */  nop
    /* 2DA0 80014590 04005030 */  andi       $s0, $v0, 0x4
  .L80014594:
    /* 2DA4 80014594 21100002 */  addu       $v0, $s0, $zero
    /* 2DA8 80014598 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2DAC 8001459C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2DB0 800145A0 0800E003 */  jr         $ra
    /* 2DB4 800145A4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001456C
