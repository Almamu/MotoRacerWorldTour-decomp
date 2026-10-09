/* Handwritten function */
nonmatching func_8008B7F8, 0x1A0

glabel func_8008B7F8
    /* 7A008 8008B7F8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 7A00C 8008B7FC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 7A010 8008B800 21908000 */  addu       $s2, $a0, $zero
    /* 7A014 8008B804 2800BFAF */  sw         $ra, 0x28($sp)
    /* 7A018 8008B808 2400B5AF */  sw         $s5, 0x24($sp)
    /* 7A01C 8008B80C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 7A020 8008B810 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 7A024 8008B814 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7A028 8008B818 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7A02C 8008B81C 00E85448 */  cfc2       $s4, $29 /* handwritten instruction */
    /* 7A030 8008B820 00F05548 */  cfc2       $s5, $30 /* handwritten instruction */
    /* 7A034 8008B824 0D80033C */  lui        $v1, %hi(D_800CA934)
    /* 7A038 8008B828 34A9638C */  lw         $v1, %lo(D_800CA934)($v1)
    /* 7A03C 8008B82C 0008043C */  lui        $a0, (0x8000000 >> 16)
    /* 7A040 8008B830 031B0300 */  sra        $v1, $v1, 12
    /* 7A044 8008B834 40100300 */  sll        $v0, $v1, 1
    /* 7A048 8008B838 21104300 */  addu       $v0, $v0, $v1
    /* 7A04C 8008B83C C0120200 */  sll        $v0, $v0, 11
    /* 7A050 8008B840 1A008200 */  div        $zero, $a0, $v0
    /* 7A054 8008B844 12100000 */  mflo       $v0
    /* 7A058 8008B848 401B0300 */  sll        $v1, $v1, 13
    /* 7A05C 8008B84C 00000000 */  nop
    /* 7A060 8008B850 1A008300 */  div        $zero, $a0, $v1
    /* 7A064 8008B854 12200000 */  mflo       $a0
    /* 7A068 8008B858 00E8C248 */  ctc2       $v0, $29 /* handwritten instruction */
    /* 7A06C 8008B85C 00F0C448 */  ctc2       $a0, $30 /* handwritten instruction */
    /* 7A070 8008B860 08004396 */  lhu        $v1, 0x8($s2)
    /* 7A074 8008B864 2C00508E */  lw         $s0, 0x2C($s2)
    /* 7A078 8008B868 00000000 */  nop
    /* 7A07C 8008B86C 3F000012 */  beqz       $s0, .L8008B96C
    /* 7A080 8008B870 01007330 */   andi      $s3, $v1, 0x1
  .L8008B874:
    /* 7A084 8008B874 2C000396 */  lhu        $v1, 0x2C($s0)
    /* 7A088 8008B878 08004296 */  lhu        $v0, 0x8($s2)
    /* 7A08C 8008B87C 00000000 */  nop
    /* 7A090 8008B880 36006214 */  bne        $v1, $v0, .L8008B95C
    /* 7A094 8008B884 2E000226 */   addiu     $v0, $s0, 0x2E
    /* 7A098 8008B888 21105300 */  addu       $v0, $v0, $s3
    /* 7A09C 8008B88C 00004380 */  lb         $v1, 0x0($v0)
    /* 7A0A0 8008B890 00000000 */  nop
    /* 7A0A4 8008B894 31006010 */  beqz       $v1, .L8008B95C
    /* 7A0A8 8008B898 00000000 */   nop
    /* 7A0AC 8008B89C 0800028E */  lw         $v0, 0x8($s0)
    /* 7A0B0 8008B8A0 00000000 */  nop
    /* 7A0B4 8008B8A4 1800478C */  lw         $a3, 0x18($v0)
    /* 7A0B8 8008B8A8 00000000 */  nop
    /* 7A0BC 8008B8AC 0028C748 */  ctc2       $a3, $5 /* handwritten instruction */
    /* 7A0C0 8008B8B0 1C00478C */  lw         $a3, 0x1C($v0)
    /* 7A0C4 8008B8B4 00000000 */  nop
    /* 7A0C8 8008B8B8 0030C748 */  ctc2       $a3, $6 /* handwritten instruction */
    /* 7A0CC 8008B8BC 2000478C */  lw         $a3, 0x20($v0)
    /* 7A0D0 8008B8C0 00000000 */  nop
    /* 7A0D4 8008B8C4 0038C748 */  ctc2       $a3, $7 /* handwritten instruction */
    /* 7A0D8 8008B8C8 0800448C */  lw         $a0, 0x8($v0)
    /* 7A0DC 8008B8CC 3000058E */  lw         $a1, 0x30($s0)
    /* 7A0E0 8008B8D0 34000682 */  lb         $a2, 0x34($s0)
    /* 7A0E4 8008B8D4 5A2C020C */  jal        func_8008B168
    /* 7A0E8 8008B8D8 80881300 */   sll       $s1, $s3, 2
    /* 7A0EC 8008B8DC 0C000226 */  addiu      $v0, $s0, 0xC
    /* 7A0F0 8008B8E0 21105100 */  addu       $v0, $v0, $s1
    /* 7A0F4 8008B8E4 0000458C */  lw         $a1, 0x0($v0)
    /* 7A0F8 8008B8E8 00000000 */  nop
    /* 7A0FC 8008B8EC 0400A010 */  beqz       $a1, .L8008B900
    /* 7A100 8008B8F0 14000226 */   addiu     $v0, $s0, 0x14
    /* 7A104 8008B8F4 402D020C */  jal        func_8008B500
    /* 7A108 8008B8F8 21204002 */   addu      $a0, $s2, $zero
    /* 7A10C 8008B8FC 14000226 */  addiu      $v0, $s0, 0x14
  .L8008B900:
    /* 7A110 8008B900 21105100 */  addu       $v0, $v0, $s1
    /* 7A114 8008B904 0000458C */  lw         $a1, 0x0($v0)
    /* 7A118 8008B908 00000000 */  nop
    /* 7A11C 8008B90C 0400A010 */  beqz       $a1, .L8008B920
    /* 7A120 8008B910 1C000226 */   addiu     $v0, $s0, 0x1C
    /* 7A124 8008B914 972D020C */  jal        func_8008B65C
    /* 7A128 8008B918 21204002 */   addu      $a0, $s2, $zero
    /* 7A12C 8008B91C 1C000226 */  addiu      $v0, $s0, 0x1C
  .L8008B920:
    /* 7A130 8008B920 21105100 */  addu       $v0, $v0, $s1
    /* 7A134 8008B924 0000458C */  lw         $a1, 0x0($v0)
    /* 7A138 8008B928 00000000 */  nop
    /* 7A13C 8008B92C 0400A010 */  beqz       $a1, .L8008B940
    /* 7A140 8008B930 24000226 */   addiu     $v0, $s0, 0x24
    /* 7A144 8008B934 822C020C */  jal        func_8008B208
    /* 7A148 8008B938 21204002 */   addu      $a0, $s2, $zero
    /* 7A14C 8008B93C 24000226 */  addiu      $v0, $s0, 0x24
  .L8008B940:
    /* 7A150 8008B940 21105100 */  addu       $v0, $v0, $s1
    /* 7A154 8008B944 0000458C */  lw         $a1, 0x0($v0)
    /* 7A158 8008B948 00000000 */  nop
    /* 7A15C 8008B94C 0300A010 */  beqz       $a1, .L8008B95C
    /* 7A160 8008B950 00000000 */   nop
    /* 7A164 8008B954 D92C020C */  jal        func_8008B364
    /* 7A168 8008B958 21204002 */   addu      $a0, $s2, $zero
  .L8008B95C:
    /* 7A16C 8008B95C 0400108E */  lw         $s0, 0x4($s0)
    /* 7A170 8008B960 00000000 */  nop
    /* 7A174 8008B964 C3FF0016 */  bnez       $s0, .L8008B874
    /* 7A178 8008B968 00000000 */   nop
  .L8008B96C:
    /* 7A17C 8008B96C 00E8D448 */  ctc2       $s4, $29 /* handwritten instruction */
    /* 7A180 8008B970 00F0D548 */  ctc2       $s5, $30 /* handwritten instruction */
    /* 7A184 8008B974 2800BF8F */  lw         $ra, 0x28($sp)
    /* 7A188 8008B978 2400B58F */  lw         $s5, 0x24($sp)
    /* 7A18C 8008B97C 2000B48F */  lw         $s4, 0x20($sp)
    /* 7A190 8008B980 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 7A194 8008B984 1800B28F */  lw         $s2, 0x18($sp)
    /* 7A198 8008B988 1400B18F */  lw         $s1, 0x14($sp)
    /* 7A19C 8008B98C 1000B08F */  lw         $s0, 0x10($sp)
    /* 7A1A0 8008B990 0800E003 */  jr         $ra
    /* 7A1A4 8008B994 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8008B7F8
