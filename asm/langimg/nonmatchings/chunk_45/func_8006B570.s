nonmatching func_8006B570, 0xE8

glabel func_8006B570
    /* 59D80 8006B570 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 59D84 8006B574 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 59D88 8006B578 21988000 */  addu       $s3, $a0, $zero
    /* 59D8C 8006B57C 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 59D90 8006B580 2800B6AF */  sw         $s6, 0x28($sp)
    /* 59D94 8006B584 2400B5AF */  sw         $s5, 0x24($sp)
    /* 59D98 8006B588 2000B4AF */  sw         $s4, 0x20($sp)
    /* 59D9C 8006B58C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 59DA0 8006B590 1400B1AF */  sw         $s1, 0x14($sp)
    /* 59DA4 8006B594 1000B0AF */  sw         $s0, 0x10($sp)
    /* 59DA8 8006B598 0000718E */  lw         $s1, 0x0($s3)
    /* 59DAC 8006B59C 00000000 */  nop
    /* 59DB0 8006B5A0 2300201A */  blez       $s1, .L8006B630
    /* 59DB4 8006B5A4 01001624 */   addiu     $s6, $zero, 0x1
    /* 59DB8 8006B5A8 02001524 */  addiu      $s5, $zero, 0x2
    /* 59DBC 8006B5AC 03001424 */  addiu      $s4, $zero, 0x3
    /* 59DC0 8006B5B0 1400708E */  lw         $s0, 0x14($s3)
    /* 59DC4 8006B5B4 0D80123C */  lui        $s2, %hi(D_800D60EC)
    /* 59DC8 8006B5B8 EC60528E */  lw         $s2, %lo(D_800D60EC)($s2)
  .L8006B5BC:
    /* 59DCC 8006B5BC 0400038E */  lw         $v1, 0x4($s0)
    /* 59DD0 8006B5C0 00000000 */  nop
    /* 59DD4 8006B5C4 09007610 */  beq        $v1, $s6, .L8006B5EC
    /* 59DD8 8006B5C8 02006228 */   slti      $v0, $v1, 0x2
    /* 59DDC 8006B5CC 14004014 */  bnez       $v0, .L8006B620
    /* 59DE0 8006B5D0 00000000 */   nop
    /* 59DE4 8006B5D4 0B007510 */  beq        $v1, $s5, .L8006B604
    /* 59DE8 8006B5D8 21206002 */   addu      $a0, $s3, $zero
    /* 59DEC 8006B5DC 0E007410 */  beq        $v1, $s4, .L8006B618
    /* 59DF0 8006B5E0 21280002 */   addu      $a1, $s0, $zero
    /* 59DF4 8006B5E4 89AD0108 */  j          .L8006B624
    /* 59DF8 8006B5E8 24001026 */   addiu     $s0, $s0, 0x24
  .L8006B5EC:
    /* 59DFC 8006B5EC 21206002 */  addu       $a0, $s3, $zero
    /* 59E00 8006B5F0 21280002 */  addu       $a1, $s0, $zero
    /* 59E04 8006B5F4 CCAC010C */  jal        func_8006B330
    /* 59E08 8006B5F8 21304002 */   addu      $a2, $s2, $zero
    /* 59E0C 8006B5FC 89AD0108 */  j          .L8006B624
    /* 59E10 8006B600 24001026 */   addiu     $s0, $s0, 0x24
  .L8006B604:
    /* 59E14 8006B604 21280002 */  addu       $a1, $s0, $zero
    /* 59E18 8006B608 ECAC010C */  jal        func_8006B3B0
    /* 59E1C 8006B60C 21304002 */   addu      $a2, $s2, $zero
    /* 59E20 8006B610 89AD0108 */  j          .L8006B624
    /* 59E24 8006B614 24001026 */   addiu     $s0, $s0, 0x24
  .L8006B618:
    /* 59E28 8006B618 40AD010C */  jal        func_8006B500
    /* 59E2C 8006B61C 21304002 */   addu      $a2, $s2, $zero
  .L8006B620:
    /* 59E30 8006B620 24001026 */  addiu      $s0, $s0, 0x24
  .L8006B624:
    /* 59E34 8006B624 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 59E38 8006B628 E4FF2016 */  bnez       $s1, .L8006B5BC
    /* 59E3C 8006B62C 00000000 */   nop
  .L8006B630:
    /* 59E40 8006B630 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 59E44 8006B634 2800B68F */  lw         $s6, 0x28($sp)
    /* 59E48 8006B638 2400B58F */  lw         $s5, 0x24($sp)
    /* 59E4C 8006B63C 2000B48F */  lw         $s4, 0x20($sp)
    /* 59E50 8006B640 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 59E54 8006B644 1800B28F */  lw         $s2, 0x18($sp)
    /* 59E58 8006B648 1400B18F */  lw         $s1, 0x14($sp)
    /* 59E5C 8006B64C 1000B08F */  lw         $s0, 0x10($sp)
    /* 59E60 8006B650 0800E003 */  jr         $ra
    /* 59E64 8006B654 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8006B570
