nonmatching func_8002E548, 0x13C

glabel func_8002E548
    /* 1CD58 8002E548 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1CD5C 8002E54C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1CD60 8002E550 21808000 */  addu       $s0, $a0, $zero
    /* 1CD64 8002E554 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1CD68 8002E558 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1CD6C 8002E55C A002038E */  lw         $v1, 0x2A0($s0)
    /* 1CD70 8002E560 00000000 */  nop
    /* 1CD74 8002E564 E2FA6228 */  slti       $v0, $v1, -0x51E
    /* 1CD78 8002E568 05004014 */  bnez       $v0, .L8002E580
    /* 1CD7C 8002E56C 21206000 */   addu      $a0, $v1, $zero
    /* 1CD80 8002E570 1F056228 */  slti       $v0, $v1, 0x51F
    /* 1CD84 8002E574 02004014 */  bnez       $v0, .L8002E580
    /* 1CD88 8002E578 21200000 */   addu      $a0, $zero, $zero
    /* 1CD8C 8002E57C 21206000 */  addu       $a0, $v1, $zero
  .L8002E580:
    /* 1CD90 8002E580 A402038E */  lw         $v1, 0x2A4($s0)
    /* 1CD94 8002E584 00000000 */  nop
    /* 1CD98 8002E588 E2FA6228 */  slti       $v0, $v1, -0x51E
    /* 1CD9C 8002E58C 04004014 */  bnez       $v0, .L8002E5A0
    /* 1CDA0 8002E590 A00204AE */   sw        $a0, 0x2A0($s0)
    /* 1CDA4 8002E594 1F056228 */  slti       $v0, $v1, 0x51F
    /* 1CDA8 8002E598 02004014 */  bnez       $v0, .L8002E5A4
    /* 1CDAC 8002E59C 21200000 */   addu      $a0, $zero, $zero
  .L8002E5A0:
    /* 1CDB0 8002E5A0 21206000 */  addu       $a0, $v1, $zero
  .L8002E5A4:
    /* 1CDB4 8002E5A4 A802038E */  lw         $v1, 0x2A8($s0)
    /* 1CDB8 8002E5A8 00000000 */  nop
    /* 1CDBC 8002E5AC E2FA6228 */  slti       $v0, $v1, -0x51E
    /* 1CDC0 8002E5B0 04004014 */  bnez       $v0, .L8002E5C4
    /* 1CDC4 8002E5B4 A40204AE */   sw        $a0, 0x2A4($s0)
    /* 1CDC8 8002E5B8 1F056228 */  slti       $v0, $v1, 0x51F
    /* 1CDCC 8002E5BC 02004014 */  bnez       $v0, .L8002E5C8
    /* 1CDD0 8002E5C0 21280000 */   addu      $a1, $zero, $zero
  .L8002E5C4:
    /* 1CDD4 8002E5C4 21286000 */  addu       $a1, $v1, $zero
  .L8002E5C8:
    /* 1CDD8 8002E5C8 A0021126 */  addiu      $s1, $s0, 0x2A0
    /* 1CDDC 8002E5CC 21202002 */  addu       $a0, $s1, $zero
    /* 1CDE0 8002E5D0 8F64020C */  jal        func_8009923C
    /* 1CDE4 8002E5D4 A80205AE */   sw        $a1, 0x2A8($s0)
    /* 1CDE8 8002E5D8 C805038E */  lw         $v1, 0x5C8($s0)
    /* 1CDEC 8002E5DC 43210200 */  sra        $a0, $v0, 5
    /* 1CDF0 8002E5E0 9C0204AE */  sw         $a0, 0x29C($s0)
    /* 1CDF4 8002E5E4 1000628C */  lw         $v0, 0x10($v1)
    /* 1CDF8 8002E5E8 00000000 */  nop
    /* 1CDFC 8002E5EC 07004014 */  bnez       $v0, .L8002E60C
    /* 1CE00 8002E5F0 00000000 */   nop
    /* 1CE04 8002E5F4 CC05028E */  lw         $v0, 0x5CC($s0)
    /* 1CE08 8002E5F8 00000000 */  nop
    /* 1CE0C 8002E5FC 1000438C */  lw         $v1, 0x10($v0)
    /* 1CE10 8002E600 00000000 */  nop
    /* 1CE14 8002E604 0D006010 */  beqz       $v1, .L8002E63C
    /* 1CE18 8002E608 00000000 */   nop
  .L8002E60C:
    /* 1CE1C 8002E60C 1801058E */  lw         $a1, 0x118($s0)
    /* 1CE20 8002E610 00000000 */  nop
    /* 1CE24 8002E614 2A10A400 */  slt        $v0, $a1, $a0
    /* 1CE28 8002E618 08004010 */  beqz       $v0, .L8002E63C
    /* 1CE2C 8002E61C 21202002 */   addu      $a0, $s1, $zero
    /* 1CE30 8002E620 9C0205AE */  sw         $a1, 0x29C($s0)
    /* 1CE34 8002E624 40290500 */  sll        $a1, $a1, 5
    /* 1CE38 8002E628 0200A104 */  bgez       $a1, .L8002E634
    /* 1CE3C 8002E62C 00000000 */   nop
    /* 1CE40 8002E630 23280500 */  negu       $a1, $a1
  .L8002E634:
    /* 1CE44 8002E634 508C000C */  jal        func_80023140
    /* 1CE48 8002E638 18000624 */   addiu     $a2, $zero, 0x18
  .L8002E63C:
    /* 1CE4C 8002E63C 9C02028E */  lw         $v0, 0x29C($s0)
    /* 1CE50 8002E640 00000000 */  nop
    /* 1CE54 8002E644 03004010 */  beqz       $v0, .L8002E654
    /* 1CE58 8002E648 21200002 */   addu      $a0, $s0, $zero
    /* 1CE5C 8002E64C 9CB90008 */  j          .L8002E670
    /* 1CE60 8002E650 240300AE */   sw        $zero, 0x324($s0)
  .L8002E654:
    /* 1CE64 8002E654 F9B9000C */  jal        func_8002E7E4
    /* 1CE68 8002E658 21280000 */   addu      $a1, $zero, $zero
    /* 1CE6C 8002E65C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1CE70 8002E660 240302AE */  sw         $v0, 0x324($s0)
    /* 1CE74 8002E664 A00200AE */  sw         $zero, 0x2A0($s0)
    /* 1CE78 8002E668 040020AE */  sw         $zero, 0x4($s1)
    /* 1CE7C 8002E66C 080020AE */  sw         $zero, 0x8($s1)
  .L8002E670:
    /* 1CE80 8002E670 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1CE84 8002E674 1400B18F */  lw         $s1, 0x14($sp)
    /* 1CE88 8002E678 1000B08F */  lw         $s0, 0x10($sp)
    /* 1CE8C 8002E67C 0800E003 */  jr         $ra
    /* 1CE90 8002E680 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8002E548
