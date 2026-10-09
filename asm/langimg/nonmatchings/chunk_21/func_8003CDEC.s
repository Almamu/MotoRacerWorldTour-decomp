nonmatching func_8003CDEC, 0x548

glabel func_8003CDEC
    /* 2B5FC 8003CDEC 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 2B600 8003CDF0 8400B7AF */  sw         $s7, 0x84($sp)
    /* 2B604 8003CDF4 21B88000 */  addu       $s7, $a0, $zero
    /* 2B608 8003CDF8 6800B0AF */  sw         $s0, 0x68($sp)
    /* 2B60C 8003CDFC 8800BFAF */  sw         $ra, 0x88($sp)
    /* 2B610 8003CE00 8000B6AF */  sw         $s6, 0x80($sp)
    /* 2B614 8003CE04 7C00B5AF */  sw         $s5, 0x7C($sp)
    /* 2B618 8003CE08 7800B4AF */  sw         $s4, 0x78($sp)
    /* 2B61C 8003CE0C 7400B3AF */  sw         $s3, 0x74($sp)
    /* 2B620 8003CE10 7000B2AF */  sw         $s2, 0x70($sp)
    /* 2B624 8003CE14 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 2B628 8003CE18 900AE38E */  lw         $v1, 0xA90($s7)
    /* 2B62C 8003CE1C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B630 8003CE20 04006210 */  beq        $v1, $v0, .L8003CE34
    /* 2B634 8003CE24 2180A000 */   addu      $s0, $a1, $zero
    /* 2B638 8003CE28 04000224 */  addiu      $v0, $zero, 0x4
    /* 2B63C 8003CE2C 0F006214 */  bne        $v1, $v0, .L8003CE6C
    /* 2B640 8003CE30 00000000 */   nop
  .L8003CE34:
    /* 2B644 8003CE34 840AF68E */  lw         $s6, 0xA84($s7)
    /* 2B648 8003CE38 9CF30008 */  j          .L8003CE70
    /* 2B64C 8003CE3C 00000000 */   nop
  .L8003CE40:
    /* 2B650 8003CE40 0000438E */  lw         $v1, 0x0($s2)
    /* 2B654 8003CE44 D0F30008 */  j          .L8003CF40
    /* 2B658 8003CE48 21A86200 */   addu      $s5, $v1, $v0
  .L8003CE4C:
    /* 2B65C 8003CE4C 0000238E */  lw         $v1, 0x0($s1)
    /* 2B660 8003CE50 FCF30008 */  j          .L8003CFF0
    /* 2B664 8003CE54 21A06200 */   addu      $s4, $v1, $v0
  .L8003CE58:
    /* 2B668 8003CE58 0800428E */  lw         $v0, 0x8($s2)
    /* 2B66C 8003CE5C 00000000 */  nop
    /* 2B670 8003CE60 21105100 */  addu       $v0, $v0, $s1
    /* 2B674 8003CE64 3BF40008 */  j          .L8003D0EC
    /* 2B678 8003CE68 0000A2AE */   sw        $v0, 0x0($s5)
  .L8003CE6C:
    /* 2B67C 8003CE6C 800AF68E */  lw         $s6, 0xA80($s7)
  .L8003CE70:
    /* 2B680 8003CE70 BE88020C */  jal        func_800A22F8
    /* 2B684 8003CE74 02000424 */   addiu     $a0, $zero, 0x2
    /* 2B688 8003CE78 23010012 */  beqz       $s0, .L8003D308
    /* 2B68C 8003CE7C 00000000 */   nop
    /* 2B690 8003CE80 08000286 */  lh         $v0, 0x8($s0)
    /* 2B694 8003CE84 00000000 */  nop
    /* 2B698 8003CE88 1F014010 */  beqz       $v0, .L8003D308
    /* 2B69C 8003CE8C 00000000 */   nop
    /* 2B6A0 8003CE90 0A000286 */  lh         $v0, 0xA($s0)
    /* 2B6A4 8003CE94 0C00048E */  lw         $a0, 0xC($s0)
    /* 2B6A8 8003CE98 80100200 */  sll        $v0, $v0, 2
    /* 2B6AC 8003CE9C 21104400 */  addu       $v0, $v0, $a0
    /* 2B6B0 8003CEA0 0000538C */  lw         $s3, 0x0($v0)
    /* 2B6B4 8003CEA4 00000000 */  nop
    /* 2B6B8 8003CEA8 02006396 */  lhu        $v1, 0x2($s3)
    /* 2B6BC 8003CEAC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B6C0 8003CEB0 0F006330 */  andi       $v1, $v1, 0xF
    /* 2B6C4 8003CEB4 14016214 */  bne        $v1, $v0, .L8003D308
    /* 2B6C8 8003CEB8 21206002 */   addu      $a0, $s3, $zero
    /* 2B6CC 8003CEBC 2128C002 */  addu       $a1, $s6, $zero
    /* 2B6D0 8003CEC0 21300002 */  addu       $a2, $s0, $zero
    /* 2B6D4 8003CEC4 01000724 */  addiu      $a3, $zero, 0x1
    /* 2B6D8 8003CEC8 40006282 */  lb         $v0, 0x40($s3)
    /* 2B6DC 8003CECC 21800000 */  addu       $s0, $zero, $zero
    /* 2B6E0 8003CED0 6401E2AE */  sw         $v0, 0x164($s7)
    /* 2B6E4 8003CED4 42006382 */  lb         $v1, 0x42($s3)
    /* 2B6E8 8003CED8 21A80000 */  addu       $s5, $zero, $zero
    /* 2B6EC 8003CEDC 8BDD000C */  jal        func_8003762C
    /* 2B6F0 8003CEE0 6801E3AE */   sw        $v1, 0x168($s7)
    /* 2B6F4 8003CEE4 7400F126 */  addiu      $s1, $s7, 0x74
    /* 2B6F8 8003CEE8 21902002 */  addu       $s2, $s1, $zero
    /* 2B6FC 8003CEEC 0C80023C */  lui        $v0, %hi(D_800C4DEC)
    /* 2B700 8003CEF0 1400238E */  lw         $v1, 0x14($s1)
    /* 2B704 8003CEF4 00000000 */  nop
    /* 2B708 8003CEF8 11006018 */  blez       $v1, .L8003CF40
    /* 2B70C 8003CEFC EC4D5424 */   addiu     $s4, $v0, %lo(D_800C4DEC)
  .L8003CF00:
    /* 2B710 8003CF00 0400438E */  lw         $v1, 0x4($s2)
    /* 2B714 8003CF04 C0101000 */  sll        $v0, $s0, 3
    /* 2B718 8003CF08 21104300 */  addu       $v0, $v0, $v1
    /* 2B71C 8003CF0C 0000458C */  lw         $a1, 0x0($v0)
    /* 2B720 8003CF10 00000000 */  nop
    /* 2B724 8003CF14 0500A010 */  beqz       $a1, .L8003CF2C
    /* 2B728 8003CF18 00000000 */   nop
    /* 2B72C 8003CF1C 2B98020C */  jal        func_800A60AC
    /* 2B730 8003CF20 21208002 */   addu      $a0, $s4, $zero
    /* 2B734 8003CF24 C6FF4010 */  beqz       $v0, .L8003CE40
    /* 2B738 8003CF28 80101000 */   sll       $v0, $s0, 2
  .L8003CF2C:
    /* 2B73C 8003CF2C 1400428E */  lw         $v0, 0x14($s2)
    /* 2B740 8003CF30 01001026 */  addiu      $s0, $s0, 0x1
    /* 2B744 8003CF34 2A100202 */  slt        $v0, $s0, $v0
    /* 2B748 8003CF38 F1FF4014 */  bnez       $v0, .L8003CF00
    /* 2B74C 8003CF3C 00000000 */   nop
  .L8003CF40:
    /* 2B750 8003CF40 7400E48E */  lw         $a0, 0x74($s7)
    /* 2B754 8003CF44 2118A002 */  addu       $v1, $s5, $zero
    /* 2B758 8003CF48 2B106400 */  sltu       $v0, $v1, $a0
    /* 2B75C 8003CF4C 0C004014 */  bnez       $v0, .L8003CF80
    /* 2B760 8003CF50 21280000 */   addu      $a1, $zero, $zero
    /* 2B764 8003CF54 1400228E */  lw         $v0, 0x14($s1)
    /* 2B768 8003CF58 00000000 */  nop
    /* 2B76C 8003CF5C 80100200 */  sll        $v0, $v0, 2
    /* 2B770 8003CF60 21108200 */  addu       $v0, $a0, $v0
    /* 2B774 8003CF64 2B106200 */  sltu       $v0, $v1, $v0
    /* 2B778 8003CF68 05004010 */  beqz       $v0, .L8003CF80
    /* 2B77C 8003CF6C 23106400 */   subu      $v0, $v1, $a0
    /* 2B780 8003CF70 83100200 */  sra        $v0, $v0, 2
    /* 2B784 8003CF74 0400238E */  lw         $v1, 0x4($s1)
    /* 2B788 8003CF78 C0100200 */  sll        $v0, $v0, 3
    /* 2B78C 8003CF7C 21286200 */  addu       $a1, $v1, $v0
  .L8003CF80:
    /* 2B790 8003CF80 21206002 */  addu       $a0, $s3, $zero
    /* 2B794 8003CF84 01000324 */  addiu      $v1, $zero, 0x1
    /* 2B798 8003CF88 20DF000C */  jal        func_80037C80
    /* 2B79C 8003CF8C 0400A3AC */   sw        $v1, 0x4($a1)
    /* 2B7A0 8003CF90 21800000 */  addu       $s0, $zero, $zero
    /* 2B7A4 8003CF94 21A00000 */  addu       $s4, $zero, $zero
    /* 2B7A8 8003CF98 0C80033C */  lui        $v1, %hi(D_800C4DFC)
    /* 2B7AC 8003CF9C 0000A2AE */  sw         $v0, 0x0($s5)
    /* 2B7B0 8003CFA0 1400428E */  lw         $v0, 0x14($s2)
    /* 2B7B4 8003CFA4 00000000 */  nop
    /* 2B7B8 8003CFA8 11004018 */  blez       $v0, .L8003CFF0
    /* 2B7BC 8003CFAC FC4D7224 */   addiu     $s2, $v1, %lo(D_800C4DFC)
  .L8003CFB0:
    /* 2B7C0 8003CFB0 0400238E */  lw         $v1, 0x4($s1)
    /* 2B7C4 8003CFB4 C0101000 */  sll        $v0, $s0, 3
    /* 2B7C8 8003CFB8 21104300 */  addu       $v0, $v0, $v1
    /* 2B7CC 8003CFBC 0000458C */  lw         $a1, 0x0($v0)
    /* 2B7D0 8003CFC0 00000000 */  nop
    /* 2B7D4 8003CFC4 0500A010 */  beqz       $a1, .L8003CFDC
    /* 2B7D8 8003CFC8 00000000 */   nop
    /* 2B7DC 8003CFCC 2B98020C */  jal        func_800A60AC
    /* 2B7E0 8003CFD0 21204002 */   addu      $a0, $s2, $zero
    /* 2B7E4 8003CFD4 9DFF4010 */  beqz       $v0, .L8003CE4C
    /* 2B7E8 8003CFD8 80101000 */   sll       $v0, $s0, 2
  .L8003CFDC:
    /* 2B7EC 8003CFDC 1400228E */  lw         $v0, 0x14($s1)
    /* 2B7F0 8003CFE0 01001026 */  addiu      $s0, $s0, 0x1
    /* 2B7F4 8003CFE4 2A100202 */  slt        $v0, $s0, $v0
    /* 2B7F8 8003CFE8 F1FF4014 */  bnez       $v0, .L8003CFB0
    /* 2B7FC 8003CFEC 00000000 */   nop
  .L8003CFF0:
    /* 2B800 8003CFF0 7400E38E */  lw         $v1, 0x74($s7)
    /* 2B804 8003CFF4 00000000 */  nop
    /* 2B808 8003CFF8 2B108302 */  sltu       $v0, $s4, $v1
    /* 2B80C 8003CFFC 0C004014 */  bnez       $v0, .L8003D030
    /* 2B810 8003D000 21280000 */   addu      $a1, $zero, $zero
    /* 2B814 8003D004 1400228E */  lw         $v0, 0x14($s1)
    /* 2B818 8003D008 00000000 */  nop
    /* 2B81C 8003D00C 80100200 */  sll        $v0, $v0, 2
    /* 2B820 8003D010 21106200 */  addu       $v0, $v1, $v0
    /* 2B824 8003D014 2B108202 */  sltu       $v0, $s4, $v0
    /* 2B828 8003D018 05004010 */  beqz       $v0, .L8003D030
    /* 2B82C 8003D01C 23108302 */   subu      $v0, $s4, $v1
    /* 2B830 8003D020 83100200 */  sra        $v0, $v0, 2
    /* 2B834 8003D024 0400238E */  lw         $v1, 0x4($s1)
    /* 2B838 8003D028 C0100200 */  sll        $v0, $v0, 3
    /* 2B83C 8003D02C 21286200 */  addu       $a1, $v1, $v0
  .L8003D030:
    /* 2B840 8003D030 21206002 */  addu       $a0, $s3, $zero
    /* 2B844 8003D034 01000324 */  addiu      $v1, $zero, 0x1
    /* 2B848 8003D038 3EDF000C */  jal        func_80037CF8
    /* 2B84C 8003D03C 0400A3AC */   sw        $v1, 0x4($a1)
    /* 2B850 8003D040 000082AE */  sw         $v0, 0x0($s4)
    /* 2B854 8003D044 940AE38E */  lw         $v1, 0xA94($s7)
    /* 2B858 8003D048 FFFE0224 */  addiu      $v0, $zero, -0x101
    /* 2B85C 8003D04C 24186200 */  and        $v1, $v1, $v0
    /* 2B860 8003D050 940AE3AE */  sw         $v1, 0xA94($s7)
    /* 2B864 8003D054 3000648E */  lw         $a0, 0x30($s3)
    /* 2B868 8003D058 00000000 */  nop
    /* 2B86C 8003D05C 0F008010 */  beqz       $a0, .L8003D09C
    /* 2B870 8003D060 21800000 */   addu      $s0, $zero, $zero
    /* 2B874 8003D064 3400628E */  lw         $v0, 0x34($s3)
    /* 2B878 8003D068 00000000 */  nop
    /* 2B87C 8003D06C 0B004018 */  blez       $v0, .L8003D09C
    /* 2B880 8003D070 00000000 */   nop
  .L8003D074:
    /* 2B884 8003D074 3000638E */  lw         $v1, 0x30($s3)
    /* 2B888 8003D078 00211000 */  sll        $a0, $s0, 4
    /* 2B88C 8003D07C 4A5C020C */  jal        func_80097128
    /* 2B890 8003D080 21206400 */   addu      $a0, $v1, $a0
    /* 2B894 8003D084 3400658E */  lw         $a1, 0x34($s3)
    /* 2B898 8003D088 01001026 */  addiu      $s0, $s0, 0x1
    /* 2B89C 8003D08C 2A280502 */  slt        $a1, $s0, $a1
    /* 2B8A0 8003D090 F8FFA014 */  bnez       $a1, .L8003D074
    /* 2B8A4 8003D094 00000000 */   nop
    /* 2B8A8 8003D098 21800000 */  addu       $s0, $zero, $zero
  .L8003D09C:
    /* 2B8AC 8003D09C 6000A0AF */  sw         $zero, 0x60($sp)
    /* 2B8B0 8003D0A0 5C00F28E */  lw         $s2, 0x5C($s7)
    /* 2B8B4 8003D0A4 08007426 */  addiu      $s4, $s3, 0x8
    /* 2B8B8 8003D0A8 0C00428E */  lw         $v0, 0xC($s2)
    /* 2B8BC 8003D0AC 00000000 */  nop
    /* 2B8C0 8003D0B0 0E004018 */  blez       $v0, .L8003D0EC
    /* 2B8C4 8003D0B4 6000B527 */   addiu     $s5, $sp, 0x60
  .L8003D0B8:
    /* 2B8C8 8003D0B8 0800428E */  lw         $v0, 0x8($s2)
    /* 2B8CC 8003D0BC C0881000 */  sll        $s1, $s0, 3
    /* 2B8D0 8003D0C0 21102202 */  addu       $v0, $s1, $v0
    /* 2B8D4 8003D0C4 0000448C */  lw         $a0, 0x0($v0)
    /* 2B8D8 8003D0C8 2B98020C */  jal        func_800A60AC
    /* 2B8DC 8003D0CC 21288002 */   addu      $a1, $s4, $zero
    /* 2B8E0 8003D0D0 61FF4010 */  beqz       $v0, .L8003CE58
    /* 2B8E4 8003D0D4 01001026 */   addiu     $s0, $s0, 0x1
    /* 2B8E8 8003D0D8 0C00428E */  lw         $v0, 0xC($s2)
    /* 2B8EC 8003D0DC 00000000 */  nop
    /* 2B8F0 8003D0E0 2A100202 */  slt        $v0, $s0, $v0
    /* 2B8F4 8003D0E4 F4FF4014 */  bnez       $v0, .L8003D0B8
    /* 2B8F8 8003D0E8 00000000 */   nop
  .L8003D0EC:
    /* 2B8FC 8003D0EC 6000A28F */  lw         $v0, 0x60($sp)
    /* 2B900 8003D0F0 00000000 */  nop
    /* 2B904 8003D0F4 08004010 */  beqz       $v0, .L8003D118
    /* 2B908 8003D0F8 00000000 */   nop
    /* 2B90C 8003D0FC 0400428C */  lw         $v0, 0x4($v0)
    /* 2B910 8003D100 00000000 */  nop
    /* 2B914 8003D104 04004010 */  beqz       $v0, .L8003D118
    /* 2B918 8003D108 2120E002 */   addu      $a0, $s7, $zero
    /* 2B91C 8003D10C 02000524 */  addiu      $a1, $zero, 0x2
    /* 2B920 8003D110 09F84000 */  jalr       $v0
    /* 2B924 8003D114 21306002 */   addu      $a2, $s3, $zero
  .L8003D118:
    /* 2B928 8003D118 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2B92C 8003D11C 00006386 */  lh         $v1, 0x0($s3)
    /* 2B930 8003D120 00006496 */  lhu        $a0, 0x0($s3)
    /* 2B934 8003D124 08006210 */  beq        $v1, $v0, .L8003D148
    /* 2B938 8003D128 04000224 */   addiu     $v0, $zero, 0x4
    /* 2B93C 8003D12C 08006210 */  beq        $v1, $v0, .L8003D150
    /* 2B940 8003D130 00140400 */   sll       $v0, $a0, 16
    /* 2B944 8003D134 2120E002 */  addu       $a0, $s7, $zero
    /* 2B948 8003D138 3E006682 */  lb         $a2, 0x3E($s3)
    /* 2B94C 8003D13C 0AFF000C */  jal        func_8003FC28
    /* 2B950 8003D140 02000524 */   addiu     $a1, $zero, 0x2
    /* 2B954 8003D144 00006496 */  lhu        $a0, 0x0($s3)
  .L8003D148:
    /* 2B958 8003D148 00000000 */  nop
    /* 2B95C 8003D14C 00140400 */  sll        $v0, $a0, 16
  .L8003D150:
    /* 2B960 8003D150 038C0200 */  sra        $s1, $v0, 16
    /* 2B964 8003D154 01000324 */  addiu      $v1, $zero, 0x1
    /* 2B968 8003D158 41002312 */  beq        $s1, $v1, .L8003D260
    /* 2B96C 8003D15C 0200222A */   slti      $v0, $s1, 0x2
    /* 2B970 8003D160 05004010 */  beqz       $v0, .L8003D178
    /* 2B974 8003D164 00000000 */   nop
    /* 2B978 8003D168 0A002012 */  beqz       $s1, .L8003D194
    /* 2B97C 8003D16C 00000000 */   nop
    /* 2B980 8003D170 C2F40008 */  j          .L8003D308
    /* 2B984 8003D174 00000000 */   nop
  .L8003D178:
    /* 2B988 8003D178 02000224 */  addiu      $v0, $zero, 0x2
    /* 2B98C 8003D17C 59002212 */  beq        $s1, $v0, .L8003D2E4
    /* 2B990 8003D180 03000224 */   addiu     $v0, $zero, 0x3
    /* 2B994 8003D184 5C002212 */  beq        $s1, $v0, .L8003D2F8
    /* 2B998 8003D188 00000000 */   nop
    /* 2B99C 8003D18C C2F40008 */  j          .L8003D308
    /* 2B9A0 8003D190 00000000 */   nop
  .L8003D194:
    /* 2B9A4 8003D194 3000C28E */  lw         $v0, 0x30($s6)
    /* 2B9A8 8003D198 00000000 */  nop
    /* 2B9AC 8003D19C 0F004230 */  andi       $v0, $v0, 0xF
    /* 2B9B0 8003D1A0 05004014 */  bnez       $v0, .L8003D1B8
    /* 2B9B4 8003D1A4 21206002 */   addu      $a0, $s3, $zero
    /* 2B9B8 8003D1A8 0800D126 */  addiu      $s1, $s6, 0x8
    /* 2B9BC 8003D1AC 21202002 */  addu       $a0, $s1, $zero
    /* 2B9C0 8003D1B0 73F40008 */  j          .L8003D1CC
    /* 2B9C4 8003D1B4 21288002 */   addu      $a1, $s4, $zero
  .L8003D1B8:
    /* 2B9C8 8003D1B8 72DF000C */  jal        func_80037DC8
    /* 2B9CC 8003D1BC 2128C002 */   addu      $a1, $s6, $zero
    /* 2B9D0 8003D1C0 0800D126 */  addiu      $s1, $s6, 0x8
    /* 2B9D4 8003D1C4 21202002 */  addu       $a0, $s1, $zero
    /* 2B9D8 8003D1C8 21284000 */  addu       $a1, $v0, $zero
  .L8003D1CC:
    /* 2B9DC 8003D1CC 1AD9020C */  jal        func_800B6468
    /* 2B9E0 8003D1D0 00000000 */   nop
    /* 2B9E4 8003D1D4 68006282 */  lb         $v0, 0x68($s3)
    /* 2B9E8 8003D1D8 00000000 */  nop
    /* 2B9EC 8003D1DC 1A004010 */  beqz       $v0, .L8003D248
    /* 2B9F0 8003D1E0 21800000 */   addu      $s0, $zero, $zero
    /* 2B9F4 8003D1E4 80F40008 */  j          .L8003D200
    /* 2B9F8 8003D1E8 5F001224 */   addiu     $s2, $zero, 0x5F
  .L8003D1EC:
    /* 2B9FC 8003D1EC 00004380 */  lb         $v1, 0x0($v0)
    /* 2BA00 8003D1F0 00000000 */  nop
    /* 2BA04 8003D1F4 08007210 */  beq        $v1, $s2, .L8003D218
    /* 2BA08 8003D1F8 2000A427 */   addiu     $a0, $sp, 0x20
    /* 2BA0C 8003D1FC 01001026 */  addiu      $s0, $s0, 0x1
  .L8003D200:
    /* 2BA10 8003D200 2ED9020C */  jal        strlen
    /* 2BA14 8003D204 21202002 */   addu      $a0, $s1, $zero
    /* 2BA18 8003D208 2B100202 */  sltu       $v0, $s0, $v0
    /* 2BA1C 8003D20C F7FF4014 */  bnez       $v0, .L8003D1EC
    /* 2BA20 8003D210 21103002 */   addu      $v0, $s1, $s0
    /* 2BA24 8003D214 2000A427 */  addiu      $a0, $sp, 0x20
  .L8003D218:
    /* 2BA28 8003D218 0C80053C */  lui        $a1, %hi(D_800C4E0C)
    /* 2BA2C 8003D21C 0C4EA524 */  addiu      $a1, $a1, %lo(D_800C4E0C)
    /* 2BA30 8003D220 48006626 */  addiu      $a2, $s3, 0x48
    /* 2BA34 8003D224 21381602 */  addu       $a3, $s0, $s6
    /* 2BA38 8003D228 96D9020C */  jal        func_800B6658
    /* 2BA3C 8003D22C 0900E724 */   addiu     $a3, $a3, 0x9
    /* 2BA40 8003D230 2120E002 */  addu       $a0, $s7, $zero
    /* 2BA44 8003D234 6A006682 */  lb         $a2, 0x6A($s3)
    /* 2BA48 8003D238 E8F2000C */  jal        func_8003CBA0
    /* 2BA4C 8003D23C 2000A527 */   addiu     $a1, $sp, 0x20
    /* 2BA50 8003D240 C2F40008 */  j          .L8003D308
    /* 2BA54 8003D244 00000000 */   nop
  .L8003D248:
    /* 2BA58 8003D248 2120E002 */  addu       $a0, $s7, $zero
    /* 2BA5C 8003D24C 6A006682 */  lb         $a2, 0x6A($s3)
    /* 2BA60 8003D250 E8F2000C */  jal        func_8003CBA0
    /* 2BA64 8003D254 48006526 */   addiu     $a1, $s3, 0x48
    /* 2BA68 8003D258 C2F40008 */  j          .L8003D308
    /* 2BA6C 8003D25C 00000000 */   nop
  .L8003D260:
    /* 2BA70 8003D260 2120C002 */  addu       $a0, $s6, $zero
    /* 2BA74 8003D264 01000624 */  addiu      $a2, $zero, 0x1
    /* 2BA78 8003D268 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 2BA7C 8003D26C 1000B1AF */  sw         $s1, 0x10($sp)
    /* 2BA80 8003D270 1400B0AF */  sw         $s0, 0x14($sp)
    /* 2BA84 8003D274 1800B1AF */  sw         $s1, 0x18($sp)
    /* 2BA88 8003D278 4C00658E */  lw         $a1, 0x4C($s3)
    /* 2BA8C 8003D27C C9EA000C */  jal        func_8003AB24
    /* 2BA90 8003D280 21380000 */   addu      $a3, $zero, $zero
    /* 2BA94 8003D284 2120C002 */  addu       $a0, $s6, $zero
    /* 2BA98 8003D288 9DE7000C */  jal        func_80039E74
    /* 2BA9C 8003D28C 08000524 */   addiu     $a1, $zero, 0x8
    /* 2BAA0 8003D290 2120C002 */  addu       $a0, $s6, $zero
    /* 2BAA4 8003D294 21300000 */  addu       $a2, $zero, $zero
    /* 2BAA8 8003D298 4800638E */  lw         $v1, 0x48($s3)
    /* 2BAAC 8003D29C 4C00C58E */  lw         $a1, 0x4C($s6)
    /* 2BAB0 8003D2A0 40100300 */  sll        $v0, $v1, 1
    /* 2BAB4 8003D2A4 21104300 */  addu       $v0, $v0, $v1
    /* 2BAB8 8003D2A8 80100200 */  sll        $v0, $v0, 2
    /* 2BABC 8003D2AC 21104500 */  addu       $v0, $v0, $a1
    /* 2BAC0 8003D2B0 000043AC */  sw         $v1, 0x0($v0)
    /* 2BAC4 8003D2B4 1000B1AF */  sw         $s1, 0x10($sp)
    /* 2BAC8 8003D2B8 1400B0AF */  sw         $s0, 0x14($sp)
    /* 2BACC 8003D2BC 1800B1AF */  sw         $s1, 0x18($sp)
    /* 2BAD0 8003D2C0 4C00658E */  lw         $a1, 0x4C($s3)
    /* 2BAD4 8003D2C4 C9EA000C */  jal        func_8003AB24
    /* 2BAD8 8003D2C8 21380000 */   addu      $a3, $zero, $zero
    /* 2BADC 8003D2CC 2120E002 */  addu       $a0, $s7, $zero
    /* 2BAE0 8003D2D0 41006682 */  lb         $a2, 0x41($s3)
    /* 2BAE4 8003D2D4 0AFF000C */  jal        func_8003FC28
    /* 2BAE8 8003D2D8 05000524 */   addiu     $a1, $zero, 0x5
    /* 2BAEC 8003D2DC C2F40008 */  j          .L8003D308
    /* 2BAF0 8003D2E0 00000000 */   nop
  .L8003D2E4:
    /* 2BAF4 8003D2E4 4800658E */  lw         $a1, 0x48($s3)
    /* 2BAF8 8003D2E8 27F3000C */  jal        func_8003CC9C
    /* 2BAFC 8003D2EC 2120E002 */   addu      $a0, $s7, $zero
    /* 2BB00 8003D2F0 C2F40008 */  j          .L8003D308
    /* 2BB04 8003D2F4 00000000 */   nop
  .L8003D2F8:
    /* 2BB08 8003D2F8 940AE28E */  lw         $v0, 0xA94($s7)
    /* 2BB0C 8003D2FC 00000000 */  nop
    /* 2BB10 8003D300 04004234 */  ori        $v0, $v0, 0x4
    /* 2BB14 8003D304 940AE2AE */  sw         $v0, 0xA94($s7)
  .L8003D308:
    /* 2BB18 8003D308 8800BF8F */  lw         $ra, 0x88($sp)
    /* 2BB1C 8003D30C 8400B78F */  lw         $s7, 0x84($sp)
    /* 2BB20 8003D310 8000B68F */  lw         $s6, 0x80($sp)
    /* 2BB24 8003D314 7C00B58F */  lw         $s5, 0x7C($sp)
    /* 2BB28 8003D318 7800B48F */  lw         $s4, 0x78($sp)
    /* 2BB2C 8003D31C 7400B38F */  lw         $s3, 0x74($sp)
    /* 2BB30 8003D320 7000B28F */  lw         $s2, 0x70($sp)
    /* 2BB34 8003D324 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 2BB38 8003D328 6800B08F */  lw         $s0, 0x68($sp)
    /* 2BB3C 8003D32C 0800E003 */  jr         $ra
    /* 2BB40 8003D330 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_8003CDEC
