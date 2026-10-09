nonmatching func_80090E58, 0x13C

glabel func_80090E58
    /* 7F668 80090E58 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 7F66C 80090E5C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 7F670 80090E60 21908000 */  addu       $s2, $a0, $zero
    /* 7F674 80090E64 5400B3AF */  sw         $s3, 0x54($sp)
    /* 7F678 80090E68 2198C000 */  addu       $s3, $a2, $zero
    /* 7F67C 80090E6C 5800B4AF */  sw         $s4, 0x58($sp)
    /* 7F680 80090E70 21A0E000 */  addu       $s4, $a3, $zero
    /* 7F684 80090E74 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 7F688 80090E78 1000B127 */  addiu      $s1, $sp, 0x10
    /* 7F68C 80090E7C C0290500 */  sll        $a1, $a1, 7
    /* 7F690 80090E80 6000BFAF */  sw         $ra, 0x60($sp)
    /* 7F694 80090E84 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 7F698 80090E88 4800B0AF */  sw         $s0, 0x48($sp)
    /* 7F69C 80090E8C 0800428E */  lw         $v0, 0x8($s2)
    /* 7F6A0 80090E90 7800A38F */  lw         $v1, 0x78($sp)
    /* 7F6A4 80090E94 00000000 */  nop
    /* 7F6A8 80090E98 1B006010 */  beqz       $v1, .L80090F08
    /* 7F6AC 80090E9C 21A84500 */   addu      $s5, $v0, $a1
    /* 7F6B0 80090EA0 AE42020C */  jal        func_80090AB8
    /* 7F6B4 80090EA4 00000000 */   nop
    /* 7F6B8 80090EA8 21204002 */  addu       $a0, $s2, $zero
    /* 7F6BC 80090EAC 2800A327 */  addiu      $v1, $sp, 0x28
    /* 7F6C0 80090EB0 21286000 */  addu       $a1, $v1, $zero
    /* 7F6C4 80090EB4 00100624 */  addiu      $a2, $zero, 0x1000
    /* 7F6C8 80090EB8 21804000 */  addu       $s0, $v0, $zero
    /* 7F6CC 80090EBC 2800A6A7 */  sh         $a2, 0x28($sp)
    /* 7F6D0 80090EC0 3C00A0AF */  sw         $zero, 0x3C($sp)
    /* 7F6D4 80090EC4 2C00A0A7 */  sh         $zero, 0x2C($sp)
    /* 7F6D8 80090EC8 2A00A0A7 */  sh         $zero, 0x2A($sp)
    /* 7F6DC 80090ECC 080066A4 */  sh         $a2, 0x8($v1)
    /* 7F6E0 80090ED0 4000A0AF */  sw         $zero, 0x40($sp)
    /* 7F6E4 80090ED4 3200A0A7 */  sh         $zero, 0x32($sp)
    /* 7F6E8 80090ED8 2E00A0A7 */  sh         $zero, 0x2E($sp)
    /* 7F6EC 80090EDC 100066A4 */  sh         $a2, 0x10($v1)
    /* 7F6F0 80090EE0 4400A0AF */  sw         $zero, 0x44($sp)
    /* 7F6F4 80090EE4 3600A0A7 */  sh         $zero, 0x36($sp)
    /* 7F6F8 80090EE8 3B44020C */  jal        func_800910EC
    /* 7F6FC 80090EEC 3400A0A7 */   sh        $zero, 0x34($sp)
    /* 7F700 80090EF0 0800448E */  lw         $a0, 0x8($s2)
    /* 7F704 80090EF4 5A34020C */  jal        func_8008D168
    /* 7F708 80090EF8 00000000 */   nop
    /* 7F70C 80090EFC 21204002 */  addu       $a0, $s2, $zero
    /* 7F710 80090F00 E042020C */  jal        func_80090B80
    /* 7F714 80090F04 21280002 */   addu      $a1, $s0, $zero
  .L80090F08:
    /* 7F718 80090F08 FF7F033C */  lui        $v1, (0x7FFFFFFF >> 16)
    /* 7F71C 80090F0C FFFF6334 */  ori        $v1, $v1, (0x7FFFFFFF & 0xFFFF)
    /* 7F720 80090F10 21204002 */  addu       $a0, $s2, $zero
    /* 7F724 80090F14 2128A002 */  addu       $a1, $s5, $zero
    /* 7F728 80090F18 1C00A627 */  addiu      $a2, $sp, 0x1C
    /* 7F72C 80090F1C 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* 7F730 80090F20 080023AE */  sw         $v1, 0x8($s1)
    /* 7F734 80090F24 040023AE */  sw         $v1, 0x4($s1)
    /* 7F738 80090F28 1000A3AF */  sw         $v1, 0x10($sp)
    /* 7F73C 80090F2C 0800C2AC */  sw         $v0, 0x8($a2)
    /* 7F740 80090F30 0400C2AC */  sw         $v0, 0x4($a2)
    /* 7F744 80090F34 21302002 */  addu       $a2, $s1, $zero
    /* 7F748 80090F38 5D43020C */  jal        func_80090D74
    /* 7F74C 80090F3C 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 7F750 80090F40 1000A28F */  lw         $v0, 0x10($sp)
    /* 7F754 80090F44 0400238E */  lw         $v1, 0x4($s1)
    /* 7F758 80090F48 0800248E */  lw         $a0, 0x8($s1)
    /* 7F75C 80090F4C 1C00A58F */  lw         $a1, 0x1C($sp)
    /* 7F760 80090F50 2000A68F */  lw         $a2, 0x20($sp)
    /* 7F764 80090F54 2400A78F */  lw         $a3, 0x24($sp)
    /* 7F768 80090F58 6000BF8F */  lw         $ra, 0x60($sp)
    /* 7F76C 80090F5C 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 7F770 80090F60 5000B28F */  lw         $s2, 0x50($sp)
    /* 7F774 80090F64 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 7F778 80090F68 4800B08F */  lw         $s0, 0x48($sp)
    /* 7F77C 80090F6C 000062AE */  sw         $v0, 0x0($s3)
    /* 7F780 80090F70 040063AE */  sw         $v1, 0x4($s3)
    /* 7F784 80090F74 080064AE */  sw         $a0, 0x8($s3)
    /* 7F788 80090F78 000085AE */  sw         $a1, 0x0($s4)
    /* 7F78C 80090F7C 040086AE */  sw         $a2, 0x4($s4)
    /* 7F790 80090F80 080087AE */  sw         $a3, 0x8($s4)
    /* 7F794 80090F84 5800B48F */  lw         $s4, 0x58($sp)
    /* 7F798 80090F88 5400B38F */  lw         $s3, 0x54($sp)
    /* 7F79C 80090F8C 0800E003 */  jr         $ra
    /* 7F7A0 80090F90 6800BD27 */   addiu     $sp, $sp, 0x68
endlabel func_80090E58
