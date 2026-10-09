nonmatching func_8003E5B0, 0x14C

glabel func_8003E5B0
    /* 2CDC0 8003E5B0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2CDC4 8003E5B4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2CDC8 8003E5B8 21908000 */  addu       $s2, $a0, $zero
    /* 2CDCC 8003E5BC 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2CDD0 8003E5C0 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2CDD4 8003E5C4 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2CDD8 8003E5C8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2CDDC 8003E5CC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2CDE0 8003E5D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2CDE4 8003E5D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2CDE8 8003E5D8 800A518E */  lw         $s1, 0xA80($s2)
    /* 2CDEC 8003E5DC 00000000 */  nop
    /* 2CDF0 8003E5E0 3C002012 */  beqz       $s1, .L8003E6D4
    /* 2CDF4 8003E5E4 00000000 */   nop
    /* 2CDF8 8003E5E8 780140AE */  sw         $zero, 0x178($s2)
    /* 2CDFC 8003E5EC 2C00228E */  lw         $v0, 0x2C($s1)
    /* 2CE00 8003E5F0 00000000 */  nop
    /* 2CE04 8003E5F4 80100200 */  sll        $v0, $v0, 2
    /* 2CE08 8003E5F8 83170200 */  sra        $v0, $v0, 30
    /* 2CE0C 8003E5FC 01004224 */  addiu      $v0, $v0, 0x1
    /* 2CE10 8003E600 34004018 */  blez       $v0, .L8003E6D4
    /* 2CE14 8003E604 21300000 */   addu      $a2, $zero, $zero
    /* 2CE18 8003E608 FFFF1424 */  addiu      $s4, $zero, -0x1
    /* 2CE1C 8003E60C 03001324 */  addiu      $s3, $zero, 0x3
    /* 2CE20 8003E610 01001624 */  addiu      $s6, $zero, 0x1
    /* 2CE24 8003E614 02001524 */  addiu      $s5, $zero, 0x2
    /* 2CE28 8003E618 21202002 */  addu       $a0, $s1, $zero
  .L8003E61C:
    /* 2CE2C 8003E61C 01000524 */  addiu      $a1, $zero, 0x1
    /* 2CE30 8003E620 0100D024 */  addiu      $s0, $a2, 0x1
    /* 2CE34 8003E624 0EEC000C */  jal        func_8003B038
    /* 2CE38 8003E628 21300002 */   addu      $a2, $s0, $zero
    /* 2CE3C 8003E62C 21204000 */  addu       $a0, $v0, $zero
    /* 2CE40 8003E630 0A008010 */  beqz       $a0, .L8003E65C
    /* 2CE44 8003E634 00000000 */   nop
    /* 2CE48 8003E638 0000828C */  lw         $v0, 0x0($a0)
    /* 2CE4C 8003E63C 00000000 */  nop
    /* 2CE50 8003E640 06005410 */  beq        $v0, $s4, .L8003E65C
    /* 2CE54 8003E644 00000000 */   nop
    /* 2CE58 8003E648 67E2000C */  jal        func_8003899C
    /* 2CE5C 8003E64C 01000524 */   addiu     $a1, $zero, 0x1
    /* 2CE60 8003E650 03004010 */  beqz       $v0, .L8003E660
    /* 2CE64 8003E654 21202002 */   addu      $a0, $s1, $zero
    /* 2CE68 8003E658 780153AE */  sw         $s3, 0x178($s2)
  .L8003E65C:
    /* 2CE6C 8003E65C 21202002 */  addu       $a0, $s1, $zero
  .L8003E660:
    /* 2CE70 8003E660 21280000 */  addu       $a1, $zero, $zero
    /* 2CE74 8003E664 0EEC000C */  jal        func_8003B038
    /* 2CE78 8003E668 21300002 */   addu      $a2, $s0, $zero
    /* 2CE7C 8003E66C 21204000 */  addu       $a0, $v0, $zero
    /* 2CE80 8003E670 10008010 */  beqz       $a0, .L8003E6B4
    /* 2CE84 8003E674 00000000 */   nop
    /* 2CE88 8003E678 0000828C */  lw         $v0, 0x0($a0)
    /* 2CE8C 8003E67C 00000000 */  nop
    /* 2CE90 8003E680 0C005410 */  beq        $v0, $s4, .L8003E6B4
    /* 2CE94 8003E684 00000000 */   nop
    /* 2CE98 8003E688 67E2000C */  jal        func_8003899C
    /* 2CE9C 8003E68C 21280000 */   addu      $a1, $zero, $zero
    /* 2CEA0 8003E690 08004010 */  beqz       $v0, .L8003E6B4
    /* 2CEA4 8003E694 00000000 */   nop
    /* 2CEA8 8003E698 7801428E */  lw         $v0, 0x178($s2)
    /* 2CEAC 8003E69C 00000000 */  nop
    /* 2CEB0 8003E6A0 03005314 */  bne        $v0, $s3, .L8003E6B0
    /* 2CEB4 8003E6A4 00000000 */   nop
    /* 2CEB8 8003E6A8 ADF90008 */  j          .L8003E6B4
    /* 2CEBC 8003E6AC 780156AE */   sw        $s6, 0x178($s2)
  .L8003E6B0:
    /* 2CEC0 8003E6B0 780155AE */  sw         $s5, 0x178($s2)
  .L8003E6B4:
    /* 2CEC4 8003E6B4 2C00228E */  lw         $v0, 0x2C($s1)
    /* 2CEC8 8003E6B8 21300002 */  addu       $a2, $s0, $zero
    /* 2CECC 8003E6BC 80100200 */  sll        $v0, $v0, 2
    /* 2CED0 8003E6C0 83170200 */  sra        $v0, $v0, 30
    /* 2CED4 8003E6C4 01004224 */  addiu      $v0, $v0, 0x1
    /* 2CED8 8003E6C8 2A10C200 */  slt        $v0, $a2, $v0
    /* 2CEDC 8003E6CC D3FF4014 */  bnez       $v0, .L8003E61C
    /* 2CEE0 8003E6D0 21202002 */   addu      $a0, $s1, $zero
  .L8003E6D4:
    /* 2CEE4 8003E6D4 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2CEE8 8003E6D8 2800B68F */  lw         $s6, 0x28($sp)
    /* 2CEEC 8003E6DC 2400B58F */  lw         $s5, 0x24($sp)
    /* 2CEF0 8003E6E0 2000B48F */  lw         $s4, 0x20($sp)
    /* 2CEF4 8003E6E4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2CEF8 8003E6E8 1800B28F */  lw         $s2, 0x18($sp)
    /* 2CEFC 8003E6EC 1400B18F */  lw         $s1, 0x14($sp)
    /* 2CF00 8003E6F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2CF04 8003E6F4 0800E003 */  jr         $ra
    /* 2CF08 8003E6F8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8003E5B0
