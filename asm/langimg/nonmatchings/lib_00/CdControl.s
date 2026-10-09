nonmatching CdControl, 0x13C

glabel CdControl
    /* 95ECC 800A76BC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 95ED0 800A76C0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 95ED4 800A76C4 2188A000 */  addu       $s1, $a1, $zero
    /* 95ED8 800A76C8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 95EDC 800A76CC 2190C000 */  addu       $s2, $a2, $zero
    /* 95EE0 800A76D0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 95EE4 800A76D4 21A08000 */  addu       $s4, $a0, $zero
    /* 95EE8 800A76D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 95EEC 800A76DC 03001024 */  addiu      $s0, $zero, 0x3
    /* 95EF0 800A76E0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 95EF4 800A76E4 FF009332 */  andi       $s3, $s4, 0xFF
    /* 95EF8 800A76E8 0C80033C */  lui        $v1, %hi(D_800BCF90)
    /* 95EFC 800A76EC 90CF6324 */  addiu      $v1, $v1, %lo(D_800BCF90)
    /* 95F00 800A76F0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 95F04 800A76F4 0C80153C */  lui        $s5, %hi(D_800BD018)
    /* 95F08 800A76F8 18D0B58E */  lw         $s5, %lo(D_800BD018)($s5)
    /* 95F0C 800A76FC 80101300 */  sll        $v0, $s3, 2
    /* 95F10 800A7700 2800B6AF */  sw         $s6, 0x28($sp)
    /* 95F14 800A7704 21B04300 */  addu       $s6, $v0, $v1
    /* 95F18 800A7708 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 95F1C 800A770C 21B80000 */  addu       $s7, $zero, $zero
    /* 95F20 800A7710 3000BEAF */  sw         $fp, 0x30($sp)
    /* 95F24 800A7714 FFFF1E24 */  addiu      $fp, $zero, -0x1
    /* 95F28 800A7718 3400BFAF */  sw         $ra, 0x34($sp)
  .L800A771C:
    /* 95F2C 800A771C 0C80013C */  lui        $at, %hi(D_800BD018)
    /* 95F30 800A7720 18D020AC */  sw         $zero, %lo(D_800BD018)($at)
    /* 95F34 800A7724 01000824 */  addiu      $t0, $zero, 0x1
    /* 95F38 800A7728 0B006812 */  beq        $s3, $t0, .L800A7758
    /* 95F3C 800A772C 00000000 */   nop
    /* 95F40 800A7730 0C80023C */  lui        $v0, %hi(D_800BD024)
    /* 95F44 800A7734 24D04290 */  lbu        $v0, %lo(D_800BD024)($v0)
    /* 95F48 800A7738 00000000 */  nop
    /* 95F4C 800A773C 10004230 */  andi       $v0, $v0, 0x10
    /* 95F50 800A7740 05004010 */  beqz       $v0, .L800A7758
    /* 95F54 800A7744 01000424 */   addiu     $a0, $zero, 0x1
    /* 95F58 800A7748 21280000 */  addu       $a1, $zero, $zero
    /* 95F5C 800A774C 21300000 */  addu       $a2, $zero, $zero
    /* 95F60 800A7750 D1A1020C */  jal        CD_cw
    /* 95F64 800A7754 21380000 */   addu      $a3, $zero, $zero
  .L800A7758:
    /* 95F68 800A7758 0B002012 */  beqz       $s1, .L800A7788
    /* 95F6C 800A775C 00000000 */   nop
    /* 95F70 800A7760 0000C28E */  lw         $v0, 0x0($s6)
    /* 95F74 800A7764 00000000 */  nop
    /* 95F78 800A7768 07004010 */  beqz       $v0, .L800A7788
    /* 95F7C 800A776C 02000424 */   addiu     $a0, $zero, 0x2
    /* 95F80 800A7770 21282002 */  addu       $a1, $s1, $zero
    /* 95F84 800A7774 21304002 */  addu       $a2, $s2, $zero
    /* 95F88 800A7778 D1A1020C */  jal        CD_cw
    /* 95F8C 800A777C 21380000 */   addu      $a3, $zero, $zero
    /* 95F90 800A7780 0A004014 */  bnez       $v0, .L800A77AC
    /* 95F94 800A7784 00000000 */   nop
  .L800A7788:
    /* 95F98 800A7788 0C80013C */  lui        $at, %hi(D_800BD018)
    /* 95F9C 800A778C 18D035AC */  sw         $s5, %lo(D_800BD018)($at)
    /* 95FA0 800A7790 FF008432 */  andi       $a0, $s4, 0xFF
    /* 95FA4 800A7794 21282002 */  addu       $a1, $s1, $zero
    /* 95FA8 800A7798 21304002 */  addu       $a2, $s2, $zero
    /* 95FAC 800A779C D1A1020C */  jal        CD_cw
    /* 95FB0 800A77A0 21380000 */   addu      $a3, $zero, $zero
    /* 95FB4 800A77A4 08004010 */  beqz       $v0, .L800A77C8
    /* 95FB8 800A77A8 0100E226 */   addiu     $v0, $s7, 0x1
  .L800A77AC:
    /* 95FBC 800A77AC FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 95FC0 800A77B0 DAFF1E16 */  bne        $s0, $fp, .L800A771C
    /* 95FC4 800A77B4 00000000 */   nop
    /* 95FC8 800A77B8 0C80013C */  lui        $at, %hi(D_800BD018)
    /* 95FCC 800A77BC 18D035AC */  sw         $s5, %lo(D_800BD018)($at)
    /* 95FD0 800A77C0 FFFF1724 */  addiu      $s7, $zero, -0x1
    /* 95FD4 800A77C4 0100E226 */  addiu      $v0, $s7, 0x1
  .L800A77C8:
    /* 95FD8 800A77C8 3400BF8F */  lw         $ra, 0x34($sp)
    /* 95FDC 800A77CC 3000BE8F */  lw         $fp, 0x30($sp)
    /* 95FE0 800A77D0 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 95FE4 800A77D4 2800B68F */  lw         $s6, 0x28($sp)
    /* 95FE8 800A77D8 2400B58F */  lw         $s5, 0x24($sp)
    /* 95FEC 800A77DC 2000B48F */  lw         $s4, 0x20($sp)
    /* 95FF0 800A77E0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 95FF4 800A77E4 1800B28F */  lw         $s2, 0x18($sp)
    /* 95FF8 800A77E8 1400B18F */  lw         $s1, 0x14($sp)
    /* 95FFC 800A77EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 96000 800A77F0 0800E003 */  jr         $ra
    /* 96004 800A77F4 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel CdControl
