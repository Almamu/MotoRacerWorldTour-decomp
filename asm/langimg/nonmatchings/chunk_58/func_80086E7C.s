nonmatching func_80086E7C, 0x44

glabel func_80086E7C
    /* 7568C 80086E7C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 75690 80086E80 1400B1AF */  sw         $s1, 0x14($sp)
    /* 75694 80086E84 21888000 */  addu       $s1, $a0, $zero
    /* 75698 80086E88 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7569C 80086E8C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 756A0 80086E90 B01B020C */  jal        func_80086EC0
    /* 756A4 80086E94 2180A000 */   addu      $s0, $a1, $zero
    /* 756A8 80086E98 01001032 */  andi       $s0, $s0, 0x1
    /* 756AC 80086E9C 03000012 */  beqz       $s0, .L80086EAC
    /* 756B0 80086EA0 00000000 */   nop
    /* 756B4 80086EA4 679C020C */  jal        __builtin_delete
    /* 756B8 80086EA8 21202002 */   addu      $a0, $s1, $zero
  .L80086EAC:
    /* 756BC 80086EAC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 756C0 80086EB0 1400B18F */  lw         $s1, 0x14($sp)
    /* 756C4 80086EB4 1000B08F */  lw         $s0, 0x10($sp)
    /* 756C8 80086EB8 0800E003 */  jr         $ra
    /* 756CC 80086EBC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80086E7C
