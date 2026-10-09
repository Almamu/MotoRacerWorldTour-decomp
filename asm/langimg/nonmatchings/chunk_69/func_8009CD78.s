nonmatching func_8009CD78, 0x134

glabel func_8009CD78
    /* 8B588 8009CD78 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8B58C 8009CD7C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8B590 8009CD80 21908000 */  addu       $s2, $a0, $zero
    /* 8B594 8009CD84 2800BFAF */  sw         $ra, 0x28($sp)
    /* 8B598 8009CD88 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8B59C 8009CD8C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8B5A0 8009CD90 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8B5A4 8009CD94 900A438E */  lw         $v1, 0xA90($s2)
    /* 8B5A8 8009CD98 01000224 */  addiu      $v0, $zero, 0x1
    /* 8B5AC 8009CD9C 03006210 */  beq        $v1, $v0, .L8009CDAC
    /* 8B5B0 8009CDA0 04000224 */   addiu     $v0, $zero, 0x4
    /* 8B5B4 8009CDA4 04006214 */  bne        $v1, $v0, .L8009CDB8
    /* 8B5B8 8009CDA8 00000000 */   nop
  .L8009CDAC:
    /* 8B5BC 8009CDAC 840A448E */  lw         $a0, 0xA84($s2)
    /* 8B5C0 8009CDB0 6F730208 */  j          .L8009CDBC
    /* 8B5C4 8009CDB4 00000000 */   nop
  .L8009CDB8:
    /* 8B5C8 8009CDB8 800A448E */  lw         $a0, 0xA80($s2)
  .L8009CDBC:
    /* 8B5CC 8009CDBC 00000000 */  nop
    /* 8B5D0 8009CDC0 6000918C */  lw         $s1, 0x60($a0)
    /* 8B5D4 8009CDC4 00000000 */  nop
    /* 8B5D8 8009CDC8 14002286 */  lh         $v0, 0x14($s1)
    /* 8B5DC 8009CDCC 980A538E */  lw         $s3, 0xA98($s2)
    /* 8B5E0 8009CDD0 20004010 */  beqz       $v0, .L8009CE54
    /* 8B5E4 8009CDD4 00000000 */   nop
    /* 8B5E8 8009CDD8 2878020C */  jal        func_8009E0A0
    /* 8B5EC 8009CDDC 21202002 */   addu      $a0, $s1, $zero
    /* 8B5F0 8009CDE0 21284000 */  addu       $a1, $v0, $zero
    /* 8B5F4 8009CDE4 0C80043C */  lui        $a0, %hi(D_800BC884)
    /* 8B5F8 8009CDE8 84C8848C */  lw         $a0, %lo(D_800BC884)($a0)
    /* 8B5FC 8009CDEC 46D8020C */  jal        func_800B6118
    /* 8B600 8009CDF0 AC150624 */   addiu     $a2, $zero, 0x15AC
    /* 8B604 8009CDF4 2878020C */  jal        func_8009E0A0
    /* 8B608 8009CDF8 21202002 */   addu      $a0, $s1, $zero
    /* 8B60C 8009CDFC 21204002 */  addu       $a0, $s2, $zero
    /* 8B610 8009CE00 04004524 */  addiu      $a1, $v0, 0x4
    /* 8B614 8009CE04 54010624 */  addiu      $a2, $zero, 0x154
    /* 8B618 8009CE08 01000224 */  addiu      $v0, $zero, 0x1
    /* 8B61C 8009CE0C FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 8B620 8009CE10 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8B624 8009CE14 80ED000C */  jal        func_8003B600
    /* 8B628 8009CE18 1400A2AF */   sw        $v0, 0x14($sp)
    /* 8B62C 8009CE1C 0D80103C */  lui        $s0, %hi(D_800C886C)
    /* 8B630 8009CE20 6C88108E */  lw         $s0, %lo(D_800C886C)($s0)
    /* 8B634 8009CE24 2878020C */  jal        func_8009E0A0
    /* 8B638 8009CE28 21202002 */   addu      $a0, $s1, $zero
    /* 8B63C 8009CE2C 0001438C */  lw         $v1, 0x100($v0)
    /* 8B640 8009CE30 21202002 */  addu       $a0, $s1, $zero
    /* 8B644 8009CE34 2878020C */  jal        func_8009E0A0
    /* 8B648 8009CE38 600103AE */   sw        $v1, 0x160($s0)
    /* 8B64C 8009CE3C 0401458C */  lw         $a1, 0x104($v0)
    /* 8B650 8009CE40 21200002 */  addu       $a0, $s0, $zero
    /* 8B654 8009CE44 B7E4010C */  jal        func_800792DC
    /* 8B658 8009CE48 640105AE */   sw        $a1, 0x164($s0)
    /* 8B65C 8009CE4C 2182020C */  jal        func_800A0884
    /* 8B660 8009CE50 E0006426 */   addiu     $a0, $s3, 0xE0
  .L8009CE54:
    /* 8B664 8009CE54 0176020C */  jal        func_8009D804
    /* 8B668 8009CE58 21202002 */   addu      $a0, $s1, $zero
    /* 8B66C 8009CE5C 0B000424 */  addiu      $a0, $zero, 0xB
    /* 8B670 8009CE60 01000524 */  addiu      $a1, $zero, 0x1
    /* 8B674 8009CE64 340160AE */  sw         $zero, 0x134($s3)
    /* 8B678 8009CE68 E299020C */  jal        func_800A6788
    /* 8B67C 8009CE6C 2C0160AE */   sw        $zero, 0x12C($s3)
    /* 8B680 8009CE70 4CF3000C */  jal        func_8003CD30
    /* 8B684 8009CE74 21204002 */   addu      $a0, $s2, $zero
    /* 8B688 8009CE78 0C000424 */  addiu      $a0, $zero, 0xC
    /* 8B68C 8009CE7C 940A438E */  lw         $v1, 0xA94($s2)
    /* 8B690 8009CE80 7F000524 */  addiu      $a1, $zero, 0x7F
    /* 8B694 8009CE84 40006334 */  ori        $v1, $v1, 0x40
    /* 8B698 8009CE88 A1B2010C */  jal        func_8006CA84
    /* 8B69C 8009CE8C 940A43AE */   sw        $v1, 0xA94($s2)
    /* 8B6A0 8009CE90 2800BF8F */  lw         $ra, 0x28($sp)
    /* 8B6A4 8009CE94 2400B38F */  lw         $s3, 0x24($sp)
    /* 8B6A8 8009CE98 2000B28F */  lw         $s2, 0x20($sp)
    /* 8B6AC 8009CE9C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8B6B0 8009CEA0 1800B08F */  lw         $s0, 0x18($sp)
    /* 8B6B4 8009CEA4 0800E003 */  jr         $ra
    /* 8B6B8 8009CEA8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8009CD78
