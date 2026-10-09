nonmatching func_8006D230, 0x44

glabel func_8006D230
    /* 5BA40 8006D230 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5BA44 8006D234 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5BA48 8006D238 21880000 */  addu       $s1, $zero, $zero
    /* 5BA4C 8006D23C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5BA50 8006D240 21808000 */  addu       $s0, $a0, $zero
    /* 5BA54 8006D244 1800BFAF */  sw         $ra, 0x18($sp)
  .L8006D248:
    /* 5BA58 8006D248 E3B3010C */  jal        func_8006CF8C
    /* 5BA5C 8006D24C 21200002 */   addu      $a0, $s0, $zero
    /* 5BA60 8006D250 01003126 */  addiu      $s1, $s1, 0x1
    /* 5BA64 8006D254 0200222E */  sltiu      $v0, $s1, 0x2
    /* 5BA68 8006D258 FBFF4014 */  bnez       $v0, .L8006D248
    /* 5BA6C 8006D25C C0041026 */   addiu     $s0, $s0, 0x4C0
    /* 5BA70 8006D260 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5BA74 8006D264 1400B18F */  lw         $s1, 0x14($sp)
    /* 5BA78 8006D268 1000B08F */  lw         $s0, 0x10($sp)
    /* 5BA7C 8006D26C 0800E003 */  jr         $ra
    /* 5BA80 8006D270 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006D230
