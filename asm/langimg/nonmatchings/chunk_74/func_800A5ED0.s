nonmatching func_800A5ED0, 0xC0

glabel func_800A5ED0
    /* 946E0 800A5ED0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 946E4 800A5ED4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 946E8 800A5ED8 21808000 */  addu       $s0, $a0, $zero
    /* 946EC 800A5EDC 2120A000 */  addu       $a0, $a1, $zero
    /* 946F0 800A5EE0 1000A527 */  addiu      $a1, $sp, 0x10
    /* 946F4 800A5EE4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 946F8 800A5EE8 2188C000 */  addu       $s1, $a2, $zero
    /* 946FC 800A5EEC 1400A627 */  addiu      $a2, $sp, 0x14
    /* 94700 800A5EF0 2800BFAF */  sw         $ra, 0x28($sp)
    /* 94704 800A5EF4 3497020C */  jal        func_800A5CD0
    /* 94708 800A5EF8 1800A727 */   addiu     $a3, $sp, 0x18
    /* 9470C 800A5EFC 1F004010 */  beqz       $v0, .L800A5F7C
    /* 94710 800A5F00 21100002 */   addu      $v0, $s0, $zero
    /* 94714 800A5F04 1000A58F */  lw         $a1, 0x10($sp)
    /* 94718 800A5F08 00000000 */  nop
    /* 9471C 800A5F0C 0300A01C */  bgtz       $a1, .L800A5F1C
    /* 94720 800A5F10 02002232 */   andi      $v0, $s1, 0x2
    /* 94724 800A5F14 0C004014 */  bnez       $v0, .L800A5F48
    /* 94728 800A5F18 00000000 */   nop
  .L800A5F1C:
    /* 9472C 800A5F1C E497020C */  jal        func_800A5F90
    /* 94730 800A5F20 21200002 */   addu      $a0, $s0, $zero
    /* 94734 800A5F24 21804000 */  addu       $s0, $v0, $zero
    /* 94738 800A5F28 20000324 */  addiu      $v1, $zero, 0x20
    /* 9473C 800A5F2C 000003A2 */  sb         $v1, 0x0($s0)
    /* 94740 800A5F30 01001026 */  addiu      $s0, $s0, 0x1
    /* 94744 800A5F34 3A000224 */  addiu      $v0, $zero, 0x3A
    /* 94748 800A5F38 000002A2 */  sb         $v0, 0x0($s0)
    /* 9474C 800A5F3C 01001026 */  addiu      $s0, $s0, 0x1
    /* 94750 800A5F40 000003A2 */  sb         $v1, 0x0($s0)
    /* 94754 800A5F44 01001026 */  addiu      $s0, $s0, 0x1
  .L800A5F48:
    /* 94758 800A5F48 1400A58F */  lw         $a1, 0x14($sp)
    /* 9475C 800A5F4C 00000000 */  nop
    /* 94760 800A5F50 0400A01C */  bgtz       $a1, .L800A5F64
    /* 94764 800A5F54 0100223A */   xori      $v0, $s1, 0x1
    /* 94768 800A5F58 01004230 */  andi       $v0, $v0, 0x1
    /* 9476C 800A5F5C 07004010 */  beqz       $v0, .L800A5F7C
    /* 94770 800A5F60 21100002 */   addu      $v0, $s0, $zero
  .L800A5F64:
    /* 94774 800A5F64 21200002 */  addu       $a0, $s0, $zero
    /* 94778 800A5F68 02000624 */  addiu      $a2, $zero, 0x2
    /* 9477C 800A5F6C 0098020C */  jal        func_800A6000
    /* 94780 800A5F70 30000724 */   addiu     $a3, $zero, 0x30
    /* 94784 800A5F74 21804000 */  addu       $s0, $v0, $zero
    /* 94788 800A5F78 21100002 */  addu       $v0, $s0, $zero
  .L800A5F7C:
    /* 9478C 800A5F7C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 94790 800A5F80 2400B18F */  lw         $s1, 0x24($sp)
    /* 94794 800A5F84 2000B08F */  lw         $s0, 0x20($sp)
    /* 94798 800A5F88 0800E003 */  jr         $ra
    /* 9479C 800A5F8C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800A5ED0
