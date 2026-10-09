nonmatching func_8009C534, 0x160

glabel func_8009C534
    /* 8AD44 8009C534 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8AD48 8009C538 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8AD4C 8009C53C 21988000 */  addu       $s3, $a0, $zero
    /* 8AD50 8009C540 0D80053C */  lui        $a1, %hi(D_800C9328)
    /* 8AD54 8009C544 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8AD58 8009C548 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8AD5C 8009C54C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8AD60 8009C550 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8AD64 8009C554 800A728E */  lw         $s2, 0xA80($s3)
    /* 8AD68 8009C558 00000000 */  nop
    /* 8AD6C 8009C55C 0000448E */  lw         $a0, 0x0($s2)
    /* 8AD70 8009C560 6000518E */  lw         $s1, 0x60($s2)
    /* 8AD74 8009C564 2B98020C */  jal        func_800A60AC
    /* 8AD78 8009C568 2893A524 */   addiu     $a1, $a1, %lo(D_800C9328)
    /* 8AD7C 8009C56C 42004014 */  bnez       $v0, .L8009C678
    /* 8AD80 8009C570 00000000 */   nop
    /* 8AD84 8009C574 E021228E */  lw         $v0, 0x21E0($s1)
    /* 8AD88 8009C578 00000000 */  nop
    /* 8AD8C 8009C57C 30004010 */  beqz       $v0, .L8009C640
    /* 8AD90 8009C580 00000000 */   nop
    /* 8AD94 8009C584 D821228E */  lw         $v0, 0x21D8($s1)
    /* 8AD98 8009C588 00000000 */  nop
    /* 8AD9C 8009C58C 24004010 */  beqz       $v0, .L8009C620
    /* 8ADA0 8009C590 00000000 */   nop
    /* 8ADA4 8009C594 6000508E */  lw         $s0, 0x60($s2)
    /* 8ADA8 8009C598 9C0A658E */  lw         $a1, 0xA9C($s3)
    /* 8ADAC 8009C59C 0400038E */  lw         $v1, 0x4($s0)
    /* 8ADB0 8009C5A0 00000000 */  nop
    /* 8ADB4 8009C5A4 7F016688 */  lwl        $a2, 0x17F($v1)
    /* 8ADB8 8009C5A8 7C016698 */  lwr        $a2, 0x17C($v1)
    /* 8ADBC 8009C5AC 83016788 */  lwl        $a3, 0x183($v1)
    /* 8ADC0 8009C5B0 80016798 */  lwr        $a3, 0x180($v1)
    /* 8ADC4 8009C5B4 84016880 */  lb         $t0, 0x184($v1)
    /* 8ADC8 8009C5B8 85016980 */  lb         $t1, 0x185($v1)
    /* 8ADCC 8009C5BC 8A0166A8 */  swl        $a2, 0x18A($v1)
    /* 8ADD0 8009C5C0 870166B8 */  swr        $a2, 0x187($v1)
    /* 8ADD4 8009C5C4 8E0167A8 */  swl        $a3, 0x18E($v1)
    /* 8ADD8 8009C5C8 8B0167B8 */  swr        $a3, 0x18B($v1)
    /* 8ADDC 8009C5CC 8F0168A0 */  sb         $t0, 0x18F($v1)
    /* 8ADE0 8009C5D0 900169A0 */  sb         $t1, 0x190($v1)
    /* 8ADE4 8009C5D4 86016680 */  lb         $a2, 0x186($v1)
    /* 8ADE8 8009C5D8 00000000 */  nop
    /* 8ADEC 8009C5DC 910166A0 */  sb         $a2, 0x191($v1)
    /* 8ADF0 8009C5E0 0400028E */  lw         $v0, 0x4($s0)
    /* 8ADF4 8009C5E4 00000000 */  nop
    /* 8ADF8 8009C5E8 90014490 */  lbu        $a0, 0x190($v0)
    /* 8ADFC 8009C5EC 0800A524 */  addiu      $a1, $a1, 0x8
    /* 8AE00 8009C5F0 4400A4AC */  sw         $a0, 0x44($a1)
    /* 8AE04 8009C5F4 0400028E */  lw         $v0, 0x4($s0)
    /* 8AE08 8009C5F8 00000000 */  nop
    /* 8AE0C 8009C5FC 91014390 */  lbu        $v1, 0x191($v0)
    /* 8AE10 8009C600 21206002 */  addu       $a0, $s3, $zero
    /* 8AE14 8009C604 6E6F020C */  jal        func_8009BDB8
    /* 8AE18 8009C608 4800A3AC */   sw        $v1, 0x48($a1)
    /* 8AE1C 8009C60C 21204002 */  addu       $a0, $s2, $zero
    /* 8AE20 8009C610 EF70020C */  jal        func_8009C3BC
    /* 8AE24 8009C614 21280000 */   addu      $a1, $zero, $zero
    /* 8AE28 8009C618 99710208 */  j          .L8009C664
    /* 8AE2C 8009C61C E02100AE */   sw        $zero, 0x21E0($s0)
  .L8009C620:
    /* 8AE30 8009C620 DC21228E */  lw         $v0, 0x21DC($s1)
    /* 8AE34 8009C624 00000000 */  nop
    /* 8AE38 8009C628 0E004010 */  beqz       $v0, .L8009C664
    /* 8AE3C 8009C62C 21204002 */   addu      $a0, $s2, $zero
    /* 8AE40 8009C630 EF70020C */  jal        func_8009C3BC
    /* 8AE44 8009C634 21280000 */   addu      $a1, $zero, $zero
    /* 8AE48 8009C638 99710208 */  j          .L8009C664
    /* 8AE4C 8009C63C E02120AE */   sw        $zero, 0x21E0($s1)
  .L8009C640:
    /* 8AE50 8009C640 D421228E */  lw         $v0, 0x21D4($s1)
    /* 8AE54 8009C644 00000000 */  nop
    /* 8AE58 8009C648 08004010 */  beqz       $v0, .L8009C66C
    /* 8AE5C 8009C64C 00000000 */   nop
    /* 8AE60 8009C650 21204002 */  addu       $a0, $s2, $zero
    /* 8AE64 8009C654 EF70020C */  jal        func_8009C3BC
    /* 8AE68 8009C658 01000524 */   addiu     $a1, $zero, 0x1
    /* 8AE6C 8009C65C 01000224 */  addiu      $v0, $zero, 0x1
    /* 8AE70 8009C660 E02122AE */  sw         $v0, 0x21E0($s1)
  .L8009C664:
    /* 8AE74 8009C664 6CF9000C */  jal        func_8003E5B0
    /* 8AE78 8009C668 21206002 */   addu      $a0, $s3, $zero
  .L8009C66C:
    /* 8AE7C 8009C66C D42120AE */  sw         $zero, 0x21D4($s1)
    /* 8AE80 8009C670 D82120AE */  sw         $zero, 0x21D8($s1)
    /* 8AE84 8009C674 DC2120AE */  sw         $zero, 0x21DC($s1)
  .L8009C678:
    /* 8AE88 8009C678 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8AE8C 8009C67C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8AE90 8009C680 1800B28F */  lw         $s2, 0x18($sp)
    /* 8AE94 8009C684 1400B18F */  lw         $s1, 0x14($sp)
    /* 8AE98 8009C688 1000B08F */  lw         $s0, 0x10($sp)
    /* 8AE9C 8009C68C 0800E003 */  jr         $ra
    /* 8AEA0 8009C690 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009C534
