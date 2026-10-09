nonmatching func_80081628, 0x8C

glabel func_80081628
    /* 6FE38 80081628 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6FE3C 8008162C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6FE40 80081630 21808000 */  addu       $s0, $a0, $zero
    /* 6FE44 80081634 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6FE48 80081638 06000392 */  lbu        $v1, 0x6($s0)
    /* 6FE4C 8008163C 00000000 */  nop
    /* 6FE50 80081640 01006230 */  andi       $v0, $v1, 0x1
    /* 6FE54 80081644 0C004010 */  beqz       $v0, .L80081678
    /* 6FE58 80081648 21200002 */   addu      $a0, $s0, $zero
    /* 6FE5C 8008164C 1C00048E */  lw         $a0, 0x1C($s0)
    /* 6FE60 80081650 00000000 */  nop
    /* 6FE64 80081654 06008010 */  beqz       $a0, .L80081670
    /* 6FE68 80081658 FE006230 */   andi      $v0, $v1, 0xFE
    /* 6FE6C 8008165C 8D9C020C */  jal        __builtin_vec_delete
    /* 6FE70 80081660 00000000 */   nop
    /* 6FE74 80081664 06000392 */  lbu        $v1, 0x6($s0)
    /* 6FE78 80081668 1C0000AE */  sw         $zero, 0x1C($s0)
    /* 6FE7C 8008166C FE006230 */  andi       $v0, $v1, 0xFE
  .L80081670:
    /* 6FE80 80081670 060002A2 */  sb         $v0, 0x6($s0)
    /* 6FE84 80081674 21200002 */  addu       $a0, $s0, $zero
  .L80081678:
    /* 6FE88 80081678 21280000 */  addu       $a1, $zero, $zero
    /* 6FE8C 8008167C BE05020C */  jal        func_800816F8
    /* 6FE90 80081680 21300000 */   addu      $a2, $zero, $zero
    /* 6FE94 80081684 2400048E */  lw         $a0, 0x24($s0)
    /* 6FE98 80081688 00000000 */  nop
    /* 6FE9C 8008168C 04008010 */  beqz       $a0, .L800816A0
    /* 6FEA0 80081690 00000000 */   nop
    /* 6FEA4 80081694 8D9C020C */  jal        __builtin_vec_delete
    /* 6FEA8 80081698 00000000 */   nop
    /* 6FEAC 8008169C 240000AE */  sw         $zero, 0x24($s0)
  .L800816A0:
    /* 6FEB0 800816A0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6FEB4 800816A4 040000A6 */  sh         $zero, 0x4($s0)
    /* 6FEB8 800816A8 1000B08F */  lw         $s0, 0x10($sp)
    /* 6FEBC 800816AC 0800E003 */  jr         $ra
    /* 6FEC0 800816B0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80081628
