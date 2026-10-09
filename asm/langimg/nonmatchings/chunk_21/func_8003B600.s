nonmatching func_8003B600, 0x134

glabel func_8003B600
    /* 29E10 8003B600 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 29E14 8003B604 1800B2AF */  sw         $s2, 0x18($sp)
    /* 29E18 8003B608 3800B28F */  lw         $s2, 0x38($sp)
    /* 29E1C 8003B60C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 29E20 8003B610 21888000 */  addu       $s1, $a0, $zero
    /* 29E24 8003B614 2000B4AF */  sw         $s4, 0x20($sp)
    /* 29E28 8003B618 21A0A000 */  addu       $s4, $a1, $zero
    /* 29E2C 8003B61C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 29E30 8003B620 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 29E34 8003B624 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 29E38 8003B628 2400BFAF */  sw         $ra, 0x24($sp)
    /* 29E3C 8003B62C 0500E210 */  beq        $a3, $v0, .L8003B644
    /* 29E40 8003B630 1000B0AF */   sw        $s0, 0x10($sp)
    /* 29E44 8003B634 03004016 */  bnez       $s2, .L8003B644
    /* 29E48 8003B638 00000000 */   nop
    /* 29E4C 8003B63C 82100700 */  srl        $v0, $a3, 2
    /* 29E50 8003B640 B00A22AE */  sw         $v0, 0xAB0($s1)
  .L8003B644:
    /* 29E54 8003B644 B00A238E */  lw         $v1, 0xAB0($s1)
    /* 29E58 8003B648 82100600 */  srl        $v0, $a2, 2
    /* 29E5C 8003B64C AC0A22AE */  sw         $v0, 0xAAC($s1)
    /* 29E60 8003B650 21104300 */  addu       $v0, $v0, $v1
    /* 29E64 8003B654 19004016 */  bnez       $s2, .L8003B6BC
    /* 29E68 8003B658 02004224 */   addiu     $v0, $v0, 0x2
    /* 29E6C 8003B65C 80800200 */  sll        $s0, $v0, 2
    /* 29E70 8003B660 959C020C */  jal        __builtin_vec_new
    /* 29E74 8003B664 21200002 */   addu      $a0, $s0, $zero
    /* 29E78 8003B668 21204000 */  addu       $a0, $v0, $zero
    /* 29E7C 8003B66C AC0A268E */  lw         $a2, 0xAAC($s1)
    /* 29E80 8003B670 B00A238E */  lw         $v1, 0xAB0($s1)
    /* 29E84 8003B674 21280000 */  addu       $a1, $zero, $zero
    /* 29E88 8003B678 9C0A22AE */  sw         $v0, 0xA9C($s1)
    /* 29E8C 8003B67C 2130C300 */  addu       $a2, $a2, $v1
    /* 29E90 8003B680 0200C624 */  addiu      $a2, $a2, 0x2
    /* 29E94 8003B684 56D8020C */  jal        func_800B6158
    /* 29E98 8003B688 80300600 */   sll       $a2, $a2, 2
    /* 29E9C 8003B68C 959C020C */  jal        __builtin_vec_new
    /* 29EA0 8003B690 21200002 */   addu      $a0, $s0, $zero
    /* 29EA4 8003B694 21204000 */  addu       $a0, $v0, $zero
    /* 29EA8 8003B698 AC0A268E */  lw         $a2, 0xAAC($s1)
    /* 29EAC 8003B69C B00A238E */  lw         $v1, 0xAB0($s1)
    /* 29EB0 8003B6A0 21280000 */  addu       $a1, $zero, $zero
    /* 29EB4 8003B6A4 A40A22AE */  sw         $v0, 0xAA4($s1)
    /* 29EB8 8003B6A8 2130C300 */  addu       $a2, $a2, $v1
    /* 29EBC 8003B6AC 0200C624 */  addiu      $a2, $a2, 0x2
    /* 29EC0 8003B6B0 56D8020C */  jal        func_800B6158
    /* 29EC4 8003B6B4 80300600 */   sll       $a2, $a2, 2
    /* 29EC8 8003B6B8 B00A238E */  lw         $v1, 0xAB0($s1)
  .L8003B6BC:
    /* 29ECC 8003B6BC 00000000 */  nop
    /* 29ED0 8003B6C0 02006224 */  addiu      $v0, $v1, 0x2
    /* 29ED4 8003B6C4 9C0A238E */  lw         $v1, 0xA9C($s1)
    /* 29ED8 8003B6C8 80100200 */  sll        $v0, $v0, 2
    /* 29EDC 8003B6CC 21206200 */  addu       $a0, $v1, $v0
    /* 29EE0 8003B6D0 03004012 */  beqz       $s2, .L8003B6E0
    /* 29EE4 8003B6D4 980A24AE */   sw        $a0, 0xA98($s1)
    /* 29EE8 8003B6D8 05006012 */  beqz       $s3, .L8003B6F0
    /* 29EEC 8003B6DC 00000000 */   nop
  .L8003B6E0:
    /* 29EF0 8003B6E0 AC0A268E */  lw         $a2, 0xAAC($s1)
    /* 29EF4 8003B6E4 21288002 */  addu       $a1, $s4, $zero
    /* 29EF8 8003B6E8 46D8020C */  jal        func_800B6118
    /* 29EFC 8003B6EC 80300600 */   sll       $a2, $a2, 2
  .L8003B6F0:
    /* 29F00 8003B6F0 B00A248E */  lw         $a0, 0xAB0($s1)
    /* 29F04 8003B6F4 980A258E */  lw         $a1, 0xA98($s1)
    /* 29F08 8003B6F8 A40A228E */  lw         $v0, 0xAA4($s1)
    /* 29F0C 8003B6FC AC0A268E */  lw         $a2, 0xAAC($s1)
    /* 29F10 8003B700 02008424 */  addiu      $a0, $a0, 0x2
    /* 29F14 8003B704 80200400 */  sll        $a0, $a0, 2
    /* 29F18 8003B708 21204400 */  addu       $a0, $v0, $a0
    /* 29F1C 8003B70C 46D8020C */  jal        func_800B6118
    /* 29F20 8003B710 80300600 */   sll       $a2, $a2, 2
    /* 29F24 8003B714 2400BF8F */  lw         $ra, 0x24($sp)
    /* 29F28 8003B718 2000B48F */  lw         $s4, 0x20($sp)
    /* 29F2C 8003B71C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 29F30 8003B720 1800B28F */  lw         $s2, 0x18($sp)
    /* 29F34 8003B724 1400B18F */  lw         $s1, 0x14($sp)
    /* 29F38 8003B728 1000B08F */  lw         $s0, 0x10($sp)
    /* 29F3C 8003B72C 0800E003 */  jr         $ra
    /* 29F40 8003B730 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8003B600
