nonmatching func_800812C4, 0x54

glabel func_800812C4
    /* 6FAD4 800812C4 0000828C */  lw         $v0, 0x0($a0)
    /* 6FAD8 800812C8 00000000 */  nop
    /* 6FADC 800812CC 10004010 */  beqz       $v0, .L80081310
    /* 6FAE0 800812D0 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 6FAE4 800812D4 21180000 */  addu       $v1, $zero, $zero
    /* 6FAE8 800812D8 0800848C */  lw         $a0, 0x8($a0)
    /* 6FAEC 800812DC FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 6FAF0 800812E0 21284000 */  addu       $a1, $v0, $zero
  .L800812E4:
    /* 6FAF4 800812E4 2A106400 */  slt        $v0, $v1, $a0
    /* 6FAF8 800812E8 09004010 */  beqz       $v0, .L80081310
    /* 6FAFC 800812EC 00000000 */   nop
    /* 6FB00 800812F0 0000A28C */  lw         $v0, 0x0($a1)
    /* 6FB04 800812F4 00000000 */  nop
    /* 6FB08 800812F8 02004014 */  bnez       $v0, .L80081304
    /* 6FB0C 800812FC 00000000 */   nop
    /* 6FB10 80081300 21306000 */  addu       $a2, $v1, $zero
  .L80081304:
    /* 6FB14 80081304 0400A524 */  addiu      $a1, $a1, 0x4
    /* 6FB18 80081308 F6FFC710 */  beq        $a2, $a3, .L800812E4
    /* 6FB1C 8008130C 01006324 */   addiu     $v1, $v1, 0x1
  .L80081310:
    /* 6FB20 80081310 0800E003 */  jr         $ra
    /* 6FB24 80081314 2110C000 */   addu      $v0, $a2, $zero
endlabel func_800812C4
