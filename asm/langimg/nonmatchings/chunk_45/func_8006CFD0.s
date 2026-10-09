nonmatching func_8006CFD0, 0xEC

glabel func_8006CFD0
    /* 5B7E0 8006CFD0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 5B7E4 8006CFD4 2400B5AF */  sw         $s5, 0x24($sp)
    /* 5B7E8 8006CFD8 21A8A000 */  addu       $s5, $a1, $zero
    /* 5B7EC 8006CFDC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 5B7F0 8006CFE0 21A0C000 */  addu       $s4, $a2, $zero
    /* 5B7F4 8006CFE4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B7F8 8006CFE8 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* 5B7FC 8006CFEC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B800 8006CFF0 21880000 */  addu       $s1, $zero, $zero
    /* 5B804 8006CFF4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5B808 8006CFF8 21988000 */  addu       $s3, $a0, $zero
    /* 5B80C 8006CFFC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B810 8006D000 00047026 */  addiu      $s0, $s3, 0x400
    /* 5B814 8006D004 2800BFAF */  sw         $ra, 0x28($sp)
  .L8006D008:
    /* 5B818 8006D008 86B3010C */  jal        func_8006CE18
    /* 5B81C 8006D00C 21200002 */   addu      $a0, $s0, $zero
    /* 5B820 8006D010 1C004014 */  bnez       $v0, .L8006D084
    /* 5B824 8006D014 21206002 */   addu      $a0, $s3, $zero
    /* 5B828 8006D018 21380000 */  addu       $a3, $zero, $zero
    /* 5B82C 8006D01C 21300000 */  addu       $a2, $zero, $zero
    /* 5B830 8006D020 0800858E */  lw         $a1, 0x8($s4)
    /* 5B834 8006D024 04008386 */  lh         $v1, 0x4($s4)
  .L8006D028:
    /* 5B838 8006D028 0000828C */  lw         $v0, 0x0($a0)
    /* 5B83C 8006D02C 00000000 */  nop
    /* 5B840 8006D030 08004014 */  bnez       $v0, .L8006D054
    /* 5B844 8006D034 00000000 */   nop
    /* 5B848 8006D038 000085AC */  sw         $a1, 0x0($a0)
    /* 5B84C 8006D03C 0800A524 */  addiu      $a1, $a1, 0x8
    /* 5B850 8006D040 080087AC */  sw         $a3, 0x8($a0)
    /* 5B854 8006D044 21388000 */  addu       $a3, $a0, $zero
    /* 5B858 8006D048 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 5B85C 8006D04C 05006010 */  beqz       $v1, .L8006D064
    /* 5B860 8006D050 0C0080A4 */   sh        $zero, 0xC($a0)
  .L8006D054:
    /* 5B864 8006D054 0100C624 */  addiu      $a2, $a2, 0x1
    /* 5B868 8006D058 1000C22C */  sltiu      $v0, $a2, 0x10
    /* 5B86C 8006D05C F2FF4014 */  bnez       $v0, .L8006D028
    /* 5B870 8006D060 40008424 */   addiu     $a0, $a0, 0x40
  .L8006D064:
    /* 5B874 8006D064 21200002 */  addu       $a0, $s0, $zero
    /* 5B878 8006D068 2128A002 */  addu       $a1, $s5, $zero
    /* 5B87C 8006D06C 82B3010C */  jal        func_8006CE08
    /* 5B880 8006D070 21308002 */   addu      $a2, $s4, $zero
    /* 5B884 8006D074 89B3010C */  jal        func_8006CE24
    /* 5B888 8006D078 21200002 */   addu      $a0, $s0, $zero
    /* 5B88C 8006D07C 25B40108 */  j          .L8006D094
    /* 5B890 8006D080 21902002 */   addu      $s2, $s1, $zero
  .L8006D084:
    /* 5B894 8006D084 01003126 */  addiu      $s1, $s1, 0x1
    /* 5B898 8006D088 1000222E */  sltiu      $v0, $s1, 0x10
    /* 5B89C 8006D08C DEFF4014 */  bnez       $v0, .L8006D008
    /* 5B8A0 8006D090 0C001026 */   addiu     $s0, $s0, 0xC
  .L8006D094:
    /* 5B8A4 8006D094 21104002 */  addu       $v0, $s2, $zero
    /* 5B8A8 8006D098 2800BF8F */  lw         $ra, 0x28($sp)
    /* 5B8AC 8006D09C 2400B58F */  lw         $s5, 0x24($sp)
    /* 5B8B0 8006D0A0 2000B48F */  lw         $s4, 0x20($sp)
    /* 5B8B4 8006D0A4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5B8B8 8006D0A8 1800B28F */  lw         $s2, 0x18($sp)
    /* 5B8BC 8006D0AC 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B8C0 8006D0B0 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B8C4 8006D0B4 0800E003 */  jr         $ra
    /* 5B8C8 8006D0B8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8006CFD0
