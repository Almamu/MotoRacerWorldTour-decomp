nonmatching func_800A0D48, 0x7C

glabel func_800A0D48
    /* 8F558 800A0D48 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8F55C 800A0D4C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8F560 800A0D50 21800000 */  addu       $s0, $zero, $zero
    /* 8F564 800A0D54 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8F568 800A0D58 21888000 */  addu       $s1, $a0, $zero
    /* 8F56C 800A0D5C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8F570 800A0D60 9385020C */  jal        func_800A164C
    /* 8F574 800A0D64 28162426 */   addiu     $a0, $s1, 0x1628
    /* 8F578 800A0D68 A816248E */  lw         $a0, 0x16A8($s1)
    /* 8F57C 800A0D6C 08000224 */  addiu      $v0, $zero, 0x8
    /* 8F580 800A0D70 05008210 */  beq        $a0, $v0, .L800A0D88
    /* 8F584 800A0D74 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 8F588 800A0D78 3017238E */  lw         $v1, 0x1730($s1)
    /* 8F58C 800A0D7C 00000000 */  nop
    /* 8F590 800A0D80 05006210 */  beq        $v1, $v0, .L800A0D98
    /* 8F594 800A0D84 04000224 */   addiu     $v0, $zero, 0x4
  .L800A0D88:
    /* 8F598 800A0D88 9683020C */  jal        func_800A0E58
    /* 8F59C 800A0D8C 21202002 */   addu      $a0, $s1, $zero
    /* 8F5A0 800A0D90 6B830208 */  j          .L800A0DAC
    /* 8F5A4 800A0D94 21804000 */   addu      $s0, $v0, $zero
  .L800A0D98:
    /* 8F5A8 800A0D98 05008214 */  bne        $a0, $v0, .L800A0DB0
    /* 8F5AC 800A0D9C 21100002 */   addu      $v0, $s0, $zero
    /* 8F5B0 800A0DA0 5C84020C */  jal        func_800A1170
    /* 8F5B4 800A0DA4 21202002 */   addu      $a0, $s1, $zero
    /* 8F5B8 800A0DA8 21804000 */  addu       $s0, $v0, $zero
  .L800A0DAC:
    /* 8F5BC 800A0DAC 21100002 */  addu       $v0, $s0, $zero
  .L800A0DB0:
    /* 8F5C0 800A0DB0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8F5C4 800A0DB4 1400B18F */  lw         $s1, 0x14($sp)
    /* 8F5C8 800A0DB8 1000B08F */  lw         $s0, 0x10($sp)
    /* 8F5CC 800A0DBC 0800E003 */  jr         $ra
    /* 8F5D0 800A0DC0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800A0D48
