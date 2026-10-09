nonmatching func_8004CD5C, 0x1A0

glabel func_8004CD5C
    /* 3B56C 8004CD5C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3B570 8004CD60 21488000 */  addu       $t1, $a0, $zero
    /* 3B574 8004CD64 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3B578 8004CD68 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3B57C 8004CD6C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 3B580 8004CD70 6404228D */  lw         $v0, 0x464($t1)
    /* 3B584 8004CD74 80280500 */  sll        $a1, $a1, 2
    /* 3B588 8004CD78 2110A200 */  addu       $v0, $a1, $v0
    /* 3B58C 8004CD7C 0000478C */  lw         $a3, 0x0($v0)
    /* 3B590 8004CD80 21282501 */  addu       $a1, $t1, $a1
    /* 3B594 8004CD84 3C04B18C */  lw         $s1, 0x43C($a1)
    /* 3B598 8004CD88 0400E38C */  lw         $v1, 0x4($a3)
    /* 3B59C 8004CD8C 3400E88C */  lw         $t0, 0x34($a3)
    /* 3B5A0 8004CD90 00806330 */  andi       $v1, $v1, 0x8000
    /* 3B5A4 8004CD94 02006010 */  beqz       $v1, .L8004CDA0
    /* 3B5A8 8004CD98 21100000 */   addu      $v0, $zero, $zero
    /* 3B5AC 8004CD9C 2110E000 */  addu       $v0, $a3, $zero
  .L8004CDA0:
    /* 3B5B0 8004CDA0 27004010 */  beqz       $v0, .L8004CE40
    /* 3B5B4 8004CDA4 00000000 */   nop
    /* 3B5B8 8004CDA8 5C00468C */  lw         $a2, 0x5C($v0)
    /* 3B5BC 8004CDAC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3B5C0 8004CDB0 2300C210 */  beq        $a2, $v0, .L8004CE40
    /* 3B5C4 8004CDB4 00000000 */   nop
    /* 3B5C8 8004CDB8 7400238D */  lw         $v1, 0x74($t1)
    /* 3B5CC 8004CDBC 0500C004 */  bltz       $a2, .L8004CDD4
    /* 3B5D0 8004CDC0 21200000 */   addu      $a0, $zero, $zero
    /* 3B5D4 8004CDC4 0000638C */  lw         $v1, 0x0($v1)
    /* 3B5D8 8004CDC8 80100600 */  sll        $v0, $a2, 2
    /* 3B5DC 8004CDCC 21104300 */  addu       $v0, $v0, $v1
    /* 3B5E0 8004CDD0 0000448C */  lw         $a0, 0x0($v0)
  .L8004CDD4:
    /* 3B5E4 8004CDD4 1000B027 */  addiu      $s0, $sp, 0x10
    /* 3B5E8 8004CDD8 1400078D */  lw         $a3, 0x14($t0)
    /* 3B5EC 8004CDDC 1800028D */  lw         $v0, 0x18($t0)
    /* 3B5F0 8004CDE0 1C00038D */  lw         $v1, 0x1C($t0)
    /* 3B5F4 8004CDE4 21280002 */  addu       $a1, $s0, $zero
    /* 3B5F8 8004CDE8 1000A7AF */  sw         $a3, 0x10($sp)
    /* 3B5FC 8004CDEC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3B600 8004CDF0 1800A3AF */  sw         $v1, 0x18($sp)
    /* 3B604 8004CDF4 0400068E */  lw         $a2, 0x4($s0)
    /* 3B608 8004CDF8 0800038E */  lw         $v1, 0x8($s0)
    /* 3B60C 8004CDFC F8002226 */  addiu      $v0, $s1, 0xF8
    /* 3B610 8004CE00 F80027AE */  sw         $a3, 0xF8($s1)
    /* 3B614 8004CE04 040046AC */  sw         $a2, 0x4($v0)
    /* 3B618 8004CE08 EE59000C */  jal        func_800167B8
    /* 3B61C 8004CE0C 080043AC */   sw        $v1, 0x8($v0)
    /* 3B620 8004CE10 21202002 */  addu       $a0, $s1, $zero
    /* 3B624 8004CE14 21280002 */  addu       $a1, $s0, $zero
    /* 3B628 8004CE18 1000A38F */  lw         $v1, 0x10($sp)
    /* 3B62C 8004CE1C 0400068E */  lw         $a2, 0x4($s0)
    /* 3B630 8004CE20 0800078E */  lw         $a3, 0x8($s0)
    /* 3B634 8004CE24 1C012226 */  addiu      $v0, $s1, 0x11C
    /* 3B638 8004CE28 1C0123AE */  sw         $v1, 0x11C($s1)
    /* 3B63C 8004CE2C 040046AC */  sw         $a2, 0x4($v0)
    /* 3B640 8004CE30 16E1010C */  jal        func_80078458
    /* 3B644 8004CE34 080047AC */   sw        $a3, 0x8($v0)
    /* 3B648 8004CE38 BA330108 */  j          .L8004CEE8
    /* 3B64C 8004CE3C 00000000 */   nop
  .L8004CE40:
    /* 3B650 8004CE40 00000A8D */  lw         $t2, 0x0($t0)
    /* 3B654 8004CE44 04000B8D */  lw         $t3, 0x4($t0)
    /* 3B658 8004CE48 08000C8D */  lw         $t4, 0x8($t0)
    /* 3B65C 8004CE4C 0C000D8D */  lw         $t5, 0xC($t0)
    /* 3B660 8004CE50 00002AAE */  sw         $t2, 0x0($s1)
    /* 3B664 8004CE54 04002BAE */  sw         $t3, 0x4($s1)
    /* 3B668 8004CE58 08002CAE */  sw         $t4, 0x8($s1)
    /* 3B66C 8004CE5C 0C002DAE */  sw         $t5, 0xC($s1)
    /* 3B670 8004CE60 10000A8D */  lw         $t2, 0x10($t0)
    /* 3B674 8004CE64 14000B8D */  lw         $t3, 0x14($t0)
    /* 3B678 8004CE68 18000C8D */  lw         $t4, 0x18($t0)
    /* 3B67C 8004CE6C 1C000D8D */  lw         $t5, 0x1C($t0)
    /* 3B680 8004CE70 10002AAE */  sw         $t2, 0x10($s1)
    /* 3B684 8004CE74 14002BAE */  sw         $t3, 0x14($s1)
    /* 3B688 8004CE78 18002CAE */  sw         $t4, 0x18($s1)
    /* 3B68C 8004CE7C 1C002DAE */  sw         $t5, 0x1C($s1)
    /* 3B690 8004CE80 1C0020AE */  sw         $zero, 0x1C($s1)
    /* 3B694 8004CE84 180020AE */  sw         $zero, 0x18($s1)
    /* 3B698 8004CE88 140020AE */  sw         $zero, 0x14($s1)
    /* 3B69C 8004CE8C 1400068D */  lw         $a2, 0x14($t0)
    /* 3B6A0 8004CE90 1800038D */  lw         $v1, 0x18($t0)
    /* 3B6A4 8004CE94 1C00048D */  lw         $a0, 0x1C($t0)
    /* 3B6A8 8004CE98 1000A227 */  addiu      $v0, $sp, 0x10
    /* 3B6AC 8004CE9C 1000A6AF */  sw         $a2, 0x10($sp)
    /* 3B6B0 8004CEA0 1400A3AF */  sw         $v1, 0x14($sp)
    /* 3B6B4 8004CEA4 1800A4AF */  sw         $a0, 0x18($sp)
    /* 3B6B8 8004CEA8 0400438C */  lw         $v1, 0x4($v0)
    /* 3B6BC 8004CEAC 0800458C */  lw         $a1, 0x8($v0)
    /* 3B6C0 8004CEB0 F8002426 */  addiu      $a0, $s1, 0xF8
    /* 3B6C4 8004CEB4 F80026AE */  sw         $a2, 0xF8($s1)
    /* 3B6C8 8004CEB8 040083AC */  sw         $v1, 0x4($a0)
    /* 3B6CC 8004CEBC 080085AC */  sw         $a1, 0x8($a0)
    /* 3B6D0 8004CEC0 0400E28C */  lw         $v0, 0x4($a3)
    /* 3B6D4 8004CEC4 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 3B6D8 8004CEC8 24104300 */  and        $v0, $v0, $v1
    /* 3B6DC 8004CECC 06004010 */  beqz       $v0, .L8004CEE8
    /* 3B6E0 8004CED0 00000000 */   nop
    /* 3B6E4 8004CED4 0D80043C */  lui        $a0, %hi(D_800CB2F0)
    /* 3B6E8 8004CED8 F0B28424 */  addiu      $a0, $a0, %lo(D_800CB2F0)
    /* 3B6EC 8004CEDC 2002E68C */  lw         $a2, 0x220($a3)
    /* 3B6F0 8004CEE0 8E3F010C */  jal        func_8004FE38
    /* 3B6F4 8004CEE4 21282002 */   addu      $a1, $s1, $zero
  .L8004CEE8:
    /* 3B6F8 8004CEE8 2800BF8F */  lw         $ra, 0x28($sp)
    /* 3B6FC 8004CEEC 2400B18F */  lw         $s1, 0x24($sp)
    /* 3B700 8004CEF0 2000B08F */  lw         $s0, 0x20($sp)
    /* 3B704 8004CEF4 0800E003 */  jr         $ra
    /* 3B708 8004CEF8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8004CD5C
