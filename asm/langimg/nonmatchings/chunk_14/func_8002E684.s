nonmatching func_8002E684, 0x160

glabel func_8002E684
    /* 1CE94 8002E684 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1CE98 8002E688 4000B0AF */  sw         $s0, 0x40($sp)
    /* 1CE9C 8002E68C 2180A000 */  addu       $s0, $a1, $zero
    /* 1CEA0 8002E690 4400B1AF */  sw         $s1, 0x44($sp)
    /* 1CEA4 8002E694 21888000 */  addu       $s1, $a0, $zero
    /* 1CEA8 8002E698 06000016 */  bnez       $s0, .L8002E6B4
    /* 1CEAC 8002E69C 4800BFAF */   sw        $ra, 0x48($sp)
    /* 1CEB0 8002E6A0 2403228E */  lw         $v0, 0x324($s1)
    /* 1CEB4 8002E6A4 00000000 */  nop
    /* 1CEB8 8002E6A8 48004014 */  bnez       $v0, .L8002E7CC
    /* 1CEBC 8002E6AC 00000000 */   nop
    /* 1CEC0 8002E6B0 CC05308E */  lw         $s0, 0x5CC($s1)
  .L8002E6B4:
    /* 1CEC4 8002E6B4 9C02228E */  lw         $v0, 0x29C($s1)
    /* 1CEC8 8002E6B8 00000000 */  nop
    /* 1CECC 8002E6BC 05004014 */  bnez       $v0, .L8002E6D4
    /* 1CED0 8002E6C0 1000A427 */   addiu     $a0, $sp, 0x10
    /* 1CED4 8002E6C4 01000324 */  addiu      $v1, $zero, 0x1
    /* 1CED8 8002E6C8 240323AE */  sw         $v1, 0x324($s1)
    /* 1CEDC 8002E6CC F4B90008 */  j          .L8002E7D0
    /* 1CEE0 8002E6D0 21100000 */   addu      $v0, $zero, $zero
  .L8002E6D4:
    /* 1CEE4 8002E6D4 3C03288E */  lw         $t0, 0x33C($s1)
    /* 1CEE8 8002E6D8 4003298E */  lw         $t1, 0x340($s1)
    /* 1CEEC 8002E6DC 44032A8E */  lw         $t2, 0x344($s1)
    /* 1CEF0 8002E6E0 1000A8AF */  sw         $t0, 0x10($sp)
    /* 1CEF4 8002E6E4 1400A9AF */  sw         $t1, 0x14($sp)
    /* 1CEF8 8002E6E8 1800AAAF */  sw         $t2, 0x18($sp)
    /* 1CEFC 8002E6EC 5267020C */  jal        func_80099D48
    /* 1CF00 8002E6F0 0E000524 */   addiu     $a1, $zero, 0xE
    /* 1CF04 8002E6F4 1000038E */  lw         $v1, 0x10($s0)
    /* 1CF08 8002E6F8 00000000 */  nop
    /* 1CF0C 8002E6FC 21006010 */  beqz       $v1, .L8002E784
    /* 1CF10 8002E700 A0022426 */   addiu     $a0, $s1, 0x2A0
    /* 1CF14 8002E704 1800028E */  lw         $v0, 0x18($s0)
    /* 1CF18 8002E708 00000000 */  nop
    /* 1CF1C 8002E70C 04004010 */  beqz       $v0, .L8002E720
    /* 1CF20 8002E710 60022226 */   addiu     $v0, $s1, 0x260
    /* 1CF24 8002E714 6002238E */  lw         $v1, 0x260($s1)
    /* 1CF28 8002E718 CDB90008 */  j          .L8002E734
    /* 1CF2C 8002E71C 00000000 */   nop
  .L8002E720:
    /* 1CF30 8002E720 1400028E */  lw         $v0, 0x14($s0)
    /* 1CF34 8002E724 00000000 */  nop
    /* 1CF38 8002E728 07004010 */  beqz       $v0, .L8002E748
    /* 1CF3C 8002E72C 54022226 */   addiu     $v0, $s1, 0x254
    /* 1CF40 8002E730 5402238E */  lw         $v1, 0x254($s1)
  .L8002E734:
    /* 1CF44 8002E734 0400448C */  lw         $a0, 0x4($v0)
    /* 1CF48 8002E738 0800458C */  lw         $a1, 0x8($v0)
    /* 1CF4C 8002E73C 2000A3AF */  sw         $v1, 0x20($sp)
    /* 1CF50 8002E740 2400A4AF */  sw         $a0, 0x24($sp)
    /* 1CF54 8002E744 2800A5AF */  sw         $a1, 0x28($sp)
  .L8002E748:
    /* 1CF58 8002E748 2000A88F */  lw         $t0, 0x20($sp)
    /* 1CF5C 8002E74C 2400A98F */  lw         $t1, 0x24($sp)
    /* 1CF60 8002E750 2800AA8F */  lw         $t2, 0x28($sp)
    /* 1CF64 8002E754 3000A8AF */  sw         $t0, 0x30($sp)
    /* 1CF68 8002E758 3400A9AF */  sw         $t1, 0x34($sp)
    /* 1CF6C 8002E75C 3800AAAF */  sw         $t2, 0x38($sp)
    /* 1CF70 8002E760 3000A58F */  lw         $a1, 0x30($sp)
    /* 1CF74 8002E764 3400A68F */  lw         $a2, 0x34($sp)
    /* 1CF78 8002E768 3800A78F */  lw         $a3, 0x38($sp)
    /* 1CF7C 8002E76C 018C000C */  jal        func_80023004
    /* 1CF80 8002E770 1000A427 */   addiu     $a0, $sp, 0x10
    /* 1CF84 8002E774 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1CF88 8002E778 3A64020C */  jal        func_800990E8
    /* 1CF8C 8002E77C 0C000524 */   addiu     $a1, $zero, 0xC
    /* 1CF90 8002E780 A0022426 */  addiu      $a0, $s1, 0x2A0
  .L8002E784:
    /* 1CF94 8002E784 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1CF98 8002E788 0867020C */  jal        func_80099C20
    /* 1CF9C 8002E78C 0C000624 */   addiu     $a2, $zero, 0xC
    /* 1CFA0 8002E790 43210200 */  sra        $a0, $v0, 5
    /* 1CFA4 8002E794 01000324 */  addiu      $v1, $zero, 0x1
    /* 1CFA8 8002E798 240323AE */  sw         $v1, 0x324($s1)
    /* 1CFAC 8002E79C 9C02238E */  lw         $v1, 0x29C($s1)
    /* 1CFB0 8002E7A0 02008104 */  bgez       $a0, .L8002E7AC
    /* 1CFB4 8002E7A4 21108000 */   addu      $v0, $a0, $zero
    /* 1CFB8 8002E7A8 23100200 */  negu       $v0, $v0
  .L8002E7AC:
    /* 1CFBC 8002E7AC 2A106200 */  slt        $v0, $v1, $v0
    /* 1CFC0 8002E7B0 06004010 */  beqz       $v0, .L8002E7CC
    /* 1CFC4 8002E7B4 280324AE */   sw        $a0, 0x328($s1)
    /* 1CFC8 8002E7B8 03008104 */  bgez       $a0, .L8002E7C8
    /* 1CFCC 8002E7BC 23100300 */   negu      $v0, $v1
    /* 1CFD0 8002E7C0 F3B90008 */  j          .L8002E7CC
    /* 1CFD4 8002E7C4 280322AE */   sw        $v0, 0x328($s1)
  .L8002E7C8:
    /* 1CFD8 8002E7C8 280323AE */  sw         $v1, 0x328($s1)
  .L8002E7CC:
    /* 1CFDC 8002E7CC 2803228E */  lw         $v0, 0x328($s1)
  .L8002E7D0:
    /* 1CFE0 8002E7D0 4800BF8F */  lw         $ra, 0x48($sp)
    /* 1CFE4 8002E7D4 4400B18F */  lw         $s1, 0x44($sp)
    /* 1CFE8 8002E7D8 4000B08F */  lw         $s0, 0x40($sp)
    /* 1CFEC 8002E7DC 0800E003 */  jr         $ra
    /* 1CFF0 8002E7E0 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_8002E684
