nonmatching func_8008107C, 0x44

glabel func_8008107C
    /* 6F88C 8008107C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6F890 80081080 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6F894 80081084 21888000 */  addu       $s1, $a0, $zero
    /* 6F898 80081088 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6F89C 8008108C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6F8A0 80081090 3004020C */  jal        func_800810C0
    /* 6F8A4 80081094 2180A000 */   addu      $s0, $a1, $zero
    /* 6F8A8 80081098 01001032 */  andi       $s0, $s0, 0x1
    /* 6F8AC 8008109C 03000012 */  beqz       $s0, .L800810AC
    /* 6F8B0 800810A0 00000000 */   nop
    /* 6F8B4 800810A4 679C020C */  jal        __builtin_delete
    /* 6F8B8 800810A8 21202002 */   addu      $a0, $s1, $zero
  .L800810AC:
    /* 6F8BC 800810AC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6F8C0 800810B0 1400B18F */  lw         $s1, 0x14($sp)
    /* 6F8C4 800810B4 1000B08F */  lw         $s0, 0x10($sp)
    /* 6F8C8 800810B8 0800E003 */  jr         $ra
    /* 6F8CC 800810BC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8008107C
