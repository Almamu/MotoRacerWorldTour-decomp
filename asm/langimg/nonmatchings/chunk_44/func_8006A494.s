nonmatching func_8006A494, 0x44

glabel func_8006A494
    /* 58CA4 8006A494 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 58CA8 8006A498 1400B1AF */  sw         $s1, 0x14($sp)
    /* 58CAC 8006A49C 21888000 */  addu       $s1, $a0, $zero
    /* 58CB0 8006A4A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 58CB4 8006A4A4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 58CB8 8006A4A8 36A9010C */  jal        func_8006A4D8
    /* 58CBC 8006A4AC 2180A000 */   addu      $s0, $a1, $zero
    /* 58CC0 8006A4B0 01001032 */  andi       $s0, $s0, 0x1
    /* 58CC4 8006A4B4 03000012 */  beqz       $s0, .L8006A4C4
    /* 58CC8 8006A4B8 00000000 */   nop
    /* 58CCC 8006A4BC 679C020C */  jal        __builtin_delete
    /* 58CD0 8006A4C0 21202002 */   addu      $a0, $s1, $zero
  .L8006A4C4:
    /* 58CD4 8006A4C4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 58CD8 8006A4C8 1400B18F */  lw         $s1, 0x14($sp)
    /* 58CDC 8006A4CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 58CE0 8006A4D0 0800E003 */  jr         $ra
    /* 58CE4 8006A4D4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006A494
