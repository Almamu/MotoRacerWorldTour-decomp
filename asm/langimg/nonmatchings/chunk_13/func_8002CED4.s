/* Handwritten function */
nonmatching func_8002CED4, 0x318

glabel func_8002CED4
    /* 1B6E4 8002CED4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1B6E8 8002CED8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1B6EC 8002CEDC 21988000 */  addu       $s3, $a0, $zero
    /* 1B6F0 8002CEE0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1B6F4 8002CEE4 2190A000 */  addu       $s2, $a1, $zero
    /* 1B6F8 8002CEE8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1B6FC 8002CEEC 4400B18F */  lw         $s1, 0x44($sp)
    /* 1B700 8002CEF0 21204002 */  addu       $a0, $s2, $zero
    /* 1B704 8002CEF4 2800B6AF */  sw         $s6, 0x28($sp)
    /* 1B708 8002CEF8 4800B68F */  lw         $s6, 0x48($sp)
    /* 1B70C 8002CEFC 3800A527 */  addiu      $a1, $sp, 0x38
    /* 1B710 8002CF00 3800A6AF */  sw         $a2, 0x38($sp)
    /* 1B714 8002CF04 0C000624 */  addiu      $a2, $zero, 0xC
    /* 1B718 8002CF08 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 1B71C 8002CF0C 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1B720 8002CF10 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1B724 8002CF14 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1B728 8002CF18 0867020C */  jal        func_80099C20
    /* 1B72C 8002CF1C 3C00A7AF */   sw        $a3, 0x3C($sp)
    /* 1B730 8002CF20 A7004104 */  bgez       $v0, .L8002D1C0
    /* 1B734 8002CF24 21A80000 */   addu      $s5, $zero, $zero
    /* 1B738 8002CF28 C764020C */  jal        func_8009931C
    /* 1B73C 8002CF2C 21204002 */   addu      $a0, $s2, $zero
    /* 1B740 8002CF30 21280000 */  addu       $a1, $zero, $zero
    /* 1B744 8002CF34 3C00A68F */  lw         $a2, 0x3C($sp)
    /* 1B748 8002CF38 00000000 */  nop
    /* 1B74C 8002CF3C 1C00C010 */  beqz       $a2, .L8002CFB0
    /* 1B750 8002CF40 21A04000 */   addu      $s4, $v0, $zero
    /* 1B754 8002CF44 0C000B24 */  addiu      $t3, $zero, 0xC
    /* 1B758 8002CF48 0000498E */  lw         $t1, 0x0($s2)
    /* 1B75C 8002CF4C 3800AA8F */  lw         $t2, 0x38($sp)
    /* 1B760 8002CF50 00000000 */  nop
    /* 1B764 8002CF54 18002A01 */  mult       $t1, $t2
    /* 1B768 8002CF58 20000334 */  ori        $v1, $zero, 0x20
    /* 1B76C 8002CF5C 22186B00 */  sub        $v1, $v1, $t3 /* handwritten instruction */
    /* 1B770 8002CF60 10100000 */  mfhi       $v0
    /* 1B774 8002CF64 04106200 */  sllv       $v0, $v0, $v1
    /* 1B778 8002CF68 12180000 */  mflo       $v1
    /* 1B77C 8002CF6C 06186301 */  srlv       $v1, $v1, $t3
    /* 1B780 8002CF70 25104300 */  or         $v0, $v0, $v1
    /* 1B784 8002CF74 0800498E */  lw         $t1, 0x8($s2)
    /* 1B788 8002CF78 4000AA8F */  lw         $t2, 0x40($sp)
    /* 1B78C 8002CF7C 00000000 */  nop
    /* 1B790 8002CF80 18002A01 */  mult       $t1, $t2
    /* 1B794 8002CF84 20000534 */  ori        $a1, $zero, 0x20
    /* 1B798 8002CF88 2228AB00 */  sub        $a1, $a1, $t3 /* handwritten instruction */
    /* 1B79C 8002CF8C 10200000 */  mfhi       $a0
    /* 1B7A0 8002CF90 0420A400 */  sllv       $a0, $a0, $a1
    /* 1B7A4 8002CF94 12280000 */  mflo       $a1
    /* 1B7A8 8002CF98 06286501 */  srlv       $a1, $a1, $t3
    /* 1B7AC 8002CF9C 25208500 */  or         $a0, $a0, $a1
    /* 1B7B0 8002CFA0 21204400 */  addu       $a0, $v0, $a0
    /* 1B7B4 8002CFA4 9A5E020C */  jal        func_80097A68
    /* 1B7B8 8002CFA8 0C000524 */   addiu     $a1, $zero, 0xC
    /* 1B7BC 8002CFAC 23280200 */  negu       $a1, $v0
  .L8002CFB0:
    /* 1B7C0 8002CFB0 0C80023C */  lui        $v0, %hi(D_800C5E14)
    /* 1B7C4 8002CFB4 145E428C */  lw         $v0, %lo(D_800C5E14)($v0)
    /* 1B7C8 8002CFB8 00000000 */  nop
    /* 1B7CC 8002CFBC 7803438C */  lw         $v1, 0x378($v0)
    /* 1B7D0 8002CFC0 0400488E */  lw         $t0, 0x4($s2)
    /* 1B7D4 8002CFC4 1000648C */  lw         $a0, 0x10($v1)
    /* 1B7D8 8002CFC8 2380A800 */  subu       $s0, $a1, $t0
    /* 1B7DC 8002CFCC 2C05858C */  lw         $a1, 0x52C($a0)
    /* 1B7E0 8002CFD0 06000224 */  addiu      $v0, $zero, 0x6
    /* 1B7E4 8002CFD4 1000A214 */  bne        $a1, $v0, .L8002D018
    /* 1B7E8 8002CFD8 0100023C */   lui       $v0, (0x10000 >> 16)
    /* 1B7EC 8002CFDC 2A185000 */  slt        $v1, $v0, $s0
    /* 1B7F0 8002CFE0 02006014 */  bnez       $v1, .L8002CFEC
    /* 1B7F4 8002CFE4 23800202 */   subu      $s0, $s0, $v0
    /* 1B7F8 8002CFE8 21800000 */  addu       $s0, $zero, $zero
  .L8002CFEC:
    /* 1B7FC 8002CFEC 3404628E */  lw         $v0, 0x434($s3)
    /* 1B800 8002CFF0 00000000 */  nop
    /* 1B804 8002CFF4 C8004228 */  slti       $v0, $v0, 0xC8
    /* 1B808 8002CFF8 07004014 */  bnez       $v0, .L8002D018
    /* 1B80C 8002CFFC 00021124 */   addiu     $s1, $zero, 0x200
    /* 1B810 8002D000 3C00A28F */  lw         $v0, 0x3C($sp)
    /* 1B814 8002D004 00000000 */  nop
    /* 1B818 8002D008 C10F4228 */  slti       $v0, $v0, 0xFC1
    /* 1B81C 8002D00C 02004014 */  bnez       $v0, .L8002D018
    /* 1B820 8002D010 00101124 */   addiu     $s1, $zero, 0x1000
    /* 1B824 8002D014 00021124 */  addiu      $s1, $zero, 0x200
  .L8002D018:
    /* 1B828 8002D018 58006782 */  lb         $a3, 0x58($s3)
    /* 1B82C 8002D01C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1B830 8002D020 2600E214 */  bne        $a3, $v0, .L8002D0BC
    /* 1B834 8002D024 03000224 */   addiu     $v0, $zero, 0x3
    /* 1B838 8002D028 00101124 */  addiu      $s1, $zero, 0x1000
    /* 1B83C 8002D02C A005648E */  lw         $a0, 0x5A0($s3)
    /* 1B840 8002D030 08000624 */  addiu      $a2, $zero, 0x8
    /* 1B844 8002D034 6C01828C */  lw         $v0, 0x16C($a0)
    /* 1B848 8002D038 00000000 */  nop
    /* 1B84C 8002D03C 17004010 */  beqz       $v0, .L8002D09C
    /* 1B850 8002D040 08000524 */   addiu     $a1, $zero, 0x8
    /* 1B854 8002D044 7001838C */  lw         $v1, 0x170($a0)
    /* 1B858 8002D048 00000000 */  nop
    /* 1B85C 8002D04C 40100300 */  sll        $v0, $v1, 1
    /* 1B860 8002D050 21104300 */  addu       $v0, $v0, $v1
    /* 1B864 8002D054 80100200 */  sll        $v0, $v0, 2
    /* 1B868 8002D058 23104300 */  subu       $v0, $v0, $v1
    /* 1B86C 8002D05C 21108200 */  addu       $v0, $a0, $v0
    /* 1B870 8002D060 86014390 */  lbu        $v1, 0x186($v0)
    /* 1B874 8002D064 00000000 */  nop
    /* 1B878 8002D068 03006014 */  bnez       $v1, .L8002D078
    /* 1B87C 8002D06C 00000000 */   nop
    /* 1B880 8002D070 27B40008 */  j          .L8002D09C
    /* 1B884 8002D074 06000624 */   addiu     $a2, $zero, 0x6
  .L8002D078:
    /* 1B888 8002D078 04006714 */  bne        $v1, $a3, .L8002D08C
    /* 1B88C 8002D07C 02000224 */   addiu     $v0, $zero, 0x2
    /* 1B890 8002D080 08000624 */  addiu      $a2, $zero, 0x8
    /* 1B894 8002D084 27B40008 */  j          .L8002D09C
    /* 1B898 8002D088 07000524 */   addiu     $a1, $zero, 0x7
  .L8002D08C:
    /* 1B89C 8002D08C 04006214 */  bne        $v1, $v0, .L8002D0A0
    /* 1B8A0 8002D090 401C0600 */   sll       $v1, $a2, 17
    /* 1B8A4 8002D094 0A000624 */  addiu      $a2, $zero, 0xA
    /* 1B8A8 8002D098 06000524 */  addiu      $a1, $zero, 0x6
  .L8002D09C:
    /* 1B8AC 8002D09C 401C0600 */  sll        $v1, $a2, 17
  .L8002D0A0:
    /* 1B8B0 8002D0A0 2A107000 */  slt        $v0, $v1, $s0
    /* 1B8B4 8002D0A4 0A004014 */  bnez       $v0, .L8002D0D0
    /* 1B8B8 8002D0A8 00000000 */   nop
    /* 1B8BC 8002D0AC 1A000502 */  div        $zero, $s0, $a1
    /* 1B8C0 8002D0B0 12800000 */  mflo       $s0
    /* 1B8C4 8002D0B4 3AB40008 */  j          .L8002D0E8
    /* 1B8C8 8002D0B8 00000000 */   nop
  .L8002D0BC:
    /* 1B8CC 8002D0BC 0A00E214 */  bne        $a3, $v0, .L8002D0E8
    /* 1B8D0 8002D0C0 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 1B8D4 8002D0C4 2A107000 */  slt        $v0, $v1, $s0
    /* 1B8D8 8002D0C8 03004010 */  beqz       $v0, .L8002D0D8
    /* 1B8DC 8002D0CC 00101124 */   addiu     $s1, $zero, 0x1000
  .L8002D0D0:
    /* 1B8E0 8002D0D0 3AB40008 */  j          .L8002D0E8
    /* 1B8E4 8002D0D4 23800302 */   subu      $s0, $s0, $v1
  .L8002D0D8:
    /* 1B8E8 8002D0D8 02000106 */  bgez       $s0, .L8002D0E4
    /* 1B8EC 8002D0DC 21100002 */   addu      $v0, $s0, $zero
    /* 1B8F0 8002D0E0 0F000226 */  addiu      $v0, $s0, 0xF
  .L8002D0E4:
    /* 1B8F4 8002D0E4 03810200 */  sra        $s0, $v0, 4
  .L8002D0E8:
    /* 1B8F8 8002D0E8 35000012 */  beqz       $s0, .L8002D1C0
    /* 1B8FC 8002D0EC 00100224 */   addiu     $v0, $zero, 0x1000
    /* 1B900 8002D0F0 0A002212 */  beq        $s1, $v0, .L8002D11C
    /* 1B904 8002D0F4 0C000A24 */   addiu     $t2, $zero, 0xC
    /* 1B908 8002D0F8 18001102 */  mult       $s0, $s1
    /* 1B90C 8002D0FC 20000234 */  ori        $v0, $zero, 0x20
    /* 1B910 8002D100 22104A00 */  sub        $v0, $v0, $t2 /* handwritten instruction */
    /* 1B914 8002D104 10480000 */  mfhi       $t1
    /* 1B918 8002D108 04484900 */  sllv       $t1, $t1, $v0
    /* 1B91C 8002D10C 12100000 */  mflo       $v0
    /* 1B920 8002D110 06104201 */  srlv       $v0, $v0, $t2
    /* 1B924 8002D114 25482201 */  or         $t1, $t1, $v0
    /* 1B928 8002D118 21802001 */  addu       $s0, $t1, $zero
  .L8002D11C:
    /* 1B92C 8002D11C 28000012 */  beqz       $s0, .L8002D1C0
    /* 1B930 8002D120 21101001 */   addu      $v0, $t0, $s0
    /* 1B934 8002D124 01001524 */  addiu      $s5, $zero, 0x1
    /* 1B938 8002D128 040042AE */  sw         $v0, 0x4($s2)
    /* 1B93C 8002D12C C764020C */  jal        func_8009931C
    /* 1B940 8002D130 21204002 */   addu      $a0, $s2, $zero
    /* 1B944 8002D134 21204000 */  addu       $a0, $v0, $zero
    /* 1B948 8002D138 07008010 */  beqz       $a0, .L8002D158
    /* 1B94C 8002D13C 21180000 */   addu      $v1, $zero, $zero
    /* 1B950 8002D140 0400C016 */  bnez       $s6, .L8002D154
    /* 1B954 8002D144 00208226 */   addiu     $v0, $s4, 0x2000
    /* 1B958 8002D148 2A104400 */  slt        $v0, $v0, $a0
    /* 1B95C 8002D14C 02004010 */  beqz       $v0, .L8002D158
    /* 1B960 8002D150 00000000 */   nop
  .L8002D154:
    /* 1B964 8002D154 01000324 */  addiu      $v1, $zero, 0x1
  .L8002D158:
    /* 1B968 8002D158 19006010 */  beqz       $v1, .L8002D1C0
    /* 1B96C 8002D15C 21288002 */   addu      $a1, $s4, $zero
    /* 1B970 8002D160 21204002 */  addu       $a0, $s2, $zero
    /* 1B974 8002D164 508C000C */  jal        func_80023140
    /* 1B978 8002D168 18000624 */   addiu     $a2, $zero, 0x18
    /* 1B97C 8002D16C 9C02628E */  lw         $v0, 0x29C($s3)
    /* 1B980 8002D170 00000000 */  nop
    /* 1B984 8002D174 01504228 */  slti       $v0, $v0, 0x5001
    /* 1B988 8002D178 12004014 */  bnez       $v0, .L8002D1C4
    /* 1B98C 8002D17C 2110A002 */   addu      $v0, $s5, $zero
    /* 1B990 8002D180 A005638E */  lw         $v1, 0x5A0($s3)
    /* 1B994 8002D184 00000000 */  nop
    /* 1B998 8002D188 68016284 */  lh         $v0, 0x168($v1)
    /* 1B99C 8002D18C 43291000 */  sra        $a1, $s0, 5
    /* 1B9A0 8002D190 1A00A200 */  div        $zero, $a1, $v0
    /* 1B9A4 8002D194 12100000 */  mflo       $v0
    /* 1B9A8 8002D198 00100324 */  addiu      $v1, $zero, 0x1000
    /* 1B9AC 8002D19C 23286200 */  subu       $a1, $v1, $v0
    /* 1B9B0 8002D1A0 000CA428 */  slti       $a0, $a1, 0xC00
    /* 1B9B4 8002D1A4 02008010 */  beqz       $a0, .L8002D1B0
    /* 1B9B8 8002D1A8 00000000 */   nop
    /* 1B9BC 8002D1AC 000C0524 */  addiu      $a1, $zero, 0xC00
  .L8002D1B0:
    /* 1B9C0 8002D1B0 0400508E */  lw         $s0, 0x4($s2)
    /* 1B9C4 8002D1B4 7165020C */  jal        func_800995C4
    /* 1B9C8 8002D1B8 21204002 */   addu      $a0, $s2, $zero
    /* 1B9CC 8002D1BC 040050AE */  sw         $s0, 0x4($s2)
  .L8002D1C0:
    /* 1B9D0 8002D1C0 2110A002 */  addu       $v0, $s5, $zero
  .L8002D1C4:
    /* 1B9D4 8002D1C4 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 1B9D8 8002D1C8 2800B68F */  lw         $s6, 0x28($sp)
    /* 1B9DC 8002D1CC 2400B58F */  lw         $s5, 0x24($sp)
    /* 1B9E0 8002D1D0 2000B48F */  lw         $s4, 0x20($sp)
    /* 1B9E4 8002D1D4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1B9E8 8002D1D8 1800B28F */  lw         $s2, 0x18($sp)
    /* 1B9EC 8002D1DC 1400B18F */  lw         $s1, 0x14($sp)
    /* 1B9F0 8002D1E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 1B9F4 8002D1E4 0800E003 */  jr         $ra
    /* 1B9F8 8002D1E8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8002CED4
