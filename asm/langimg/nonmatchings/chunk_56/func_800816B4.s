nonmatching func_800816B4, 0x44

glabel func_800816B4
    /* 6FEC4 800816B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6FEC8 800816B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6FECC 800816BC 21888000 */  addu       $s1, $a0, $zero
    /* 6FED0 800816C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6FED4 800816C4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6FED8 800816C8 8A05020C */  jal        func_80081628
    /* 6FEDC 800816CC 2180A000 */   addu      $s0, $a1, $zero
    /* 6FEE0 800816D0 01001032 */  andi       $s0, $s0, 0x1
    /* 6FEE4 800816D4 03000012 */  beqz       $s0, .L800816E4
    /* 6FEE8 800816D8 00000000 */   nop
    /* 6FEEC 800816DC 679C020C */  jal        __builtin_delete
    /* 6FEF0 800816E0 21202002 */   addu      $a0, $s1, $zero
  .L800816E4:
    /* 6FEF4 800816E4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6FEF8 800816E8 1400B18F */  lw         $s1, 0x14($sp)
    /* 6FEFC 800816EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 6FF00 800816F0 0800E003 */  jr         $ra
    /* 6FF04 800816F4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800816B4
