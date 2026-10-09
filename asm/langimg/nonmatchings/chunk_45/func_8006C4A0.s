nonmatching func_8006C4A0, 0x138

glabel func_8006C4A0
    /* 5ACB0 8006C4A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5ACB4 8006C4A4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5ACB8 8006C4A8 21808000 */  addu       $s0, $a0, $zero
    /* 5ACBC 8006C4AC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5ACC0 8006C4B0 2188A000 */  addu       $s1, $a1, $zero
    /* 5ACC4 8006C4B4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5ACC8 8006C4B8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5ACCC 8006C4BC 0400028E */  lw         $v0, 0x4($s0)
    /* 5ACD0 8006C4C0 0000038E */  lw         $v1, 0x0($s0)
    /* 5ACD4 8006C4C4 00000000 */  nop
    /* 5ACD8 8006C4C8 2B104300 */  sltu       $v0, $v0, $v1
    /* 5ACDC 8006C4CC 05004010 */  beqz       $v0, .L8006C4E4
    /* 5ACE0 8006C4D0 2190C000 */   addu      $s2, $a2, $zero
    /* 5ACE4 8006C4D4 CCB0010C */  jal        func_8006C330
    /* 5ACE8 8006C4D8 21200002 */   addu      $a0, $s0, $zero
    /* 5ACEC 8006C4DC 03004014 */  bnez       $v0, .L8006C4EC
    /* 5ACF0 8006C4E0 00000000 */   nop
  .L8006C4E4:
    /* 5ACF4 8006C4E4 70B10108 */  j          .L8006C5C0
    /* 5ACF8 8006C4E8 21100000 */   addu      $v0, $zero, $zero
  .L8006C4EC:
    /* 5ACFC 8006C4EC 16040392 */  lbu        $v1, 0x416($s0)
    /* 5AD00 8006C4F0 21202002 */  addu       $a0, $s1, $zero
    /* 5AD04 8006C4F4 E07C010C */  jal        func_8005F380
    /* 5AD08 8006C4F8 000043A6 */   sh        $v1, 0x0($s2)
    /* 5AD0C 8006C4FC 14040296 */  lhu        $v0, 0x414($s0)
    /* 5AD10 8006C500 00000000 */  nop
    /* 5AD14 8006C504 000022A6 */  sh         $v0, 0x0($s1)
    /* 5AD18 8006C508 18040392 */  lbu        $v1, 0x418($s0)
    /* 5AD1C 8006C50C 00000000 */  nop
    /* 5AD20 8006C510 040023A2 */  sb         $v1, 0x4($s1)
    /* 5AD24 8006C514 1C040282 */  lb         $v0, 0x41C($s0)
    /* 5AD28 8006C518 00000000 */  nop
    /* 5AD2C 8006C51C 2B100200 */  sltu       $v0, $zero, $v0
    /* 5AD30 8006C520 080022A2 */  sb         $v0, 0x8($s1)
    /* 5AD34 8006C524 19040392 */  lbu        $v1, 0x419($s0)
    /* 5AD38 8006C528 00000000 */  nop
    /* 5AD3C 8006C52C 050023A2 */  sb         $v1, 0x5($s1)
    /* 5AD40 8006C530 1D040282 */  lb         $v0, 0x41D($s0)
    /* 5AD44 8006C534 00000000 */  nop
    /* 5AD48 8006C538 2B100200 */  sltu       $v0, $zero, $v0
    /* 5AD4C 8006C53C 090022A2 */  sb         $v0, 0x9($s1)
    /* 5AD50 8006C540 1A040392 */  lbu        $v1, 0x41A($s0)
    /* 5AD54 8006C544 00000000 */  nop
    /* 5AD58 8006C548 070023A2 */  sb         $v1, 0x7($s1)
    /* 5AD5C 8006C54C 1E040282 */  lb         $v0, 0x41E($s0)
    /* 5AD60 8006C550 00000000 */  nop
    /* 5AD64 8006C554 2B100200 */  sltu       $v0, $zero, $v0
    /* 5AD68 8006C558 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 5AD6C 8006C55C 17040392 */  lbu        $v1, 0x417($s0)
    /* 5AD70 8006C560 00000000 */  nop
    /* 5AD74 8006C564 0D0023A2 */  sb         $v1, 0xD($s1)
    /* 5AD78 8006C568 1004048E */  lw         $a0, 0x410($s0)
    /* 5AD7C 8006C56C 0C04058E */  lw         $a1, 0x40C($s0)
    /* 5AD80 8006C570 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 5AD84 8006C574 2B10A400 */  sltu       $v0, $a1, $a0
    /* 5AD88 8006C578 0D004010 */  beqz       $v0, .L8006C5B0
    /* 5AD8C 8006C57C 00000000 */   nop
    /* 5AD90 8006C580 0400068E */  lw         $a2, 0x4($s0)
  .L8006C584:
    /* 5AD94 8006C584 80100500 */  sll        $v0, $a1, 2
    /* 5AD98 8006C588 21105000 */  addu       $v0, $v0, $s0
    /* 5AD9C 8006C58C 1000438C */  lw         $v1, 0x10($v0)
    /* 5ADA0 8006C590 00000000 */  nop
    /* 5ADA4 8006C594 FF1F6330 */  andi       $v1, $v1, 0x1FFF
    /* 5ADA8 8006C598 05006614 */  bne        $v1, $a2, .L8006C5B0
    /* 5ADAC 8006C59C 0100A324 */   addiu     $v1, $a1, 0x1
    /* 5ADB0 8006C5A0 21286000 */  addu       $a1, $v1, $zero
    /* 5ADB4 8006C5A4 2B10A400 */  sltu       $v0, $a1, $a0
    /* 5ADB8 8006C5A8 F6FF4014 */  bnez       $v0, .L8006C584
    /* 5ADBC 8006C5AC 0C0403AE */   sw        $v1, 0x40C($s0)
  .L8006C5B0:
    /* 5ADC0 8006C5B0 0400038E */  lw         $v1, 0x4($s0)
    /* 5ADC4 8006C5B4 01000224 */  addiu      $v0, $zero, 0x1
    /* 5ADC8 8006C5B8 01006324 */  addiu      $v1, $v1, 0x1
    /* 5ADCC 8006C5BC 040003AE */  sw         $v1, 0x4($s0)
  .L8006C5C0:
    /* 5ADD0 8006C5C0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5ADD4 8006C5C4 1800B28F */  lw         $s2, 0x18($sp)
    /* 5ADD8 8006C5C8 1400B18F */  lw         $s1, 0x14($sp)
    /* 5ADDC 8006C5CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 5ADE0 8006C5D0 0800E003 */  jr         $ra
    /* 5ADE4 8006C5D4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006C4A0
