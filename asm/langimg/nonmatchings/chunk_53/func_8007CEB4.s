/* Handwritten function */
nonmatching func_8007CEB4, 0x27C

glabel func_8007CEB4
    /* 6B6C4 8007CEB4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6B6C8 8007CEB8 801F183C */  lui        $t8, (0x1F800008 >> 16)
    /* 6B6CC 8007CEBC 08001837 */  ori        $t8, $t8, (0x1F800008 & 0xFFFF)
    /* 6B6D0 8007CEC0 1000B4AF */  sw         $s4, 0x10($sp)
    /* 6B6D4 8007CEC4 C77F143C */  lui        $s4, (0x7FC7E000 >> 16)
    /* 6B6D8 8007CEC8 00E09436 */  ori        $s4, $s4, (0x7FC7E000 & 0xFFFF)
    /* 6B6DC 8007CECC 21708000 */  addu       $t6, $a0, $zero
    /* 6B6E0 8007CED0 FEFFE724 */  addiu      $a3, $a3, -0x2
    /* 6B6E4 8007CED4 0C00B3AF */  sw         $s3, 0xC($sp)
    /* 6B6E8 8007CED8 2000BEAF */  sw         $fp, 0x20($sp)
    /* 6B6EC 8007CEDC 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 6B6F0 8007CEE0 1800B6AF */  sw         $s6, 0x18($sp)
    /* 6B6F4 8007CEE4 1400B5AF */  sw         $s5, 0x14($sp)
    /* 6B6F8 8007CEE8 0800B2AF */  sw         $s2, 0x8($sp)
    /* 6B6FC 8007CEEC 0400B1AF */  sw         $s1, 0x4($sp)
    /* 6B700 8007CEF0 0000B0AF */  sw         $s0, 0x0($sp)
    /* 6B704 8007CEF4 0300E280 */  lb         $v0, 0x3($a3)
    /* 6B708 8007CEF8 0D800D3C */  lui        $t5, %hi(D_800C8C70)
    /* 6B70C 8007CEFC 708CAD8D */  lw         $t5, %lo(D_800C8C70)($t5)
    /* 6B710 8007CF00 21105800 */  addu       $v0, $v0, $t8
    /* 6B714 8007CF04 00004380 */  lb         $v1, 0x0($v0)
    /* 6B718 8007CF08 801F153C */  lui        $s5, (0x1F800004 >> 16)
    /* 6B71C 8007CF0C 0400B58E */  lw         $s5, (0x1F800004 & 0xFFFF)($s5)
    /* 6B720 8007CF10 0D006014 */  bnez       $v1, .L8007CF48
    /* 6B724 8007CF14 2198A000 */   addu      $s3, $a1, $zero
  .L8007CF18:
    /* 6B728 8007CF18 1C00CE25 */  addiu      $t6, $t6, 0x1C
  .L8007CF1C:
    /* 6B72C 8007CF1C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6B730 8007CF20 0900C010 */  beqz       $a2, .L8007CF48
    /* 6B734 8007CF24 0200E724 */   addiu     $a3, $a3, 0x2
    /* 6B738 8007CF28 0300E280 */  lb         $v0, 0x3($a3)
    /* 6B73C 8007CF2C 00000000 */  nop
    /* 6B740 8007CF30 21100203 */  addu       $v0, $t8, $v0
    /* 6B744 8007CF34 00004380 */  lb         $v1, 0x0($v0)
    /* 6B748 8007CF38 00000000 */  nop
    /* 6B74C 8007CF3C F7FF6010 */  beqz       $v1, .L8007CF1C
    /* 6B750 8007CF40 1C00CE25 */   addiu     $t6, $t6, 0x1C
    /* 6B754 8007CF44 E4FFCE25 */  addiu      $t6, $t6, -0x1C
  .L8007CF48:
    /* 6B758 8007CF48 0000C28D */  lw         $v0, 0x0($t6)
    /* 6B75C 8007CF4C 00000000 */  nop
    /* 6B760 8007CF50 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 6B764 8007CF54 C0180300 */  sll        $v1, $v1, 3
    /* 6B768 8007CF58 21886302 */  addu       $s1, $s3, $v1
    /* 6B76C 8007CF5C 02140200 */  srl        $v0, $v0, 16
    /* 6B770 8007CF60 C0100200 */  sll        $v0, $v0, 3
    /* 6B774 8007CF64 0400C395 */  lhu        $v1, 0x4($t6)
    /* 6B778 8007CF68 21806202 */  addu       $s0, $s3, $v0
    /* 6B77C 8007CF6C C0180300 */  sll        $v1, $v1, 3
    /* 6B780 8007CF70 6200C010 */  beqz       $a2, .L8007D0FC
    /* 6B784 8007CF74 21C86302 */   addu      $t9, $s3, $v1
    /* 6B788 8007CF78 00091E3C */  lui        $fp, (0x9000000 >> 16)
    /* 6B78C 8007CF7C F0F01734 */  ori        $s7, $zero, 0xF0F0
    /* 6B790 8007CF80 00C0163C */  lui        $s6, (0xC0000000 >> 16)
    /* 6B794 8007CF84 2400B225 */  addiu      $s2, $t5, 0x24
    /* 6B798 8007CF88 1800AC25 */  addiu      $t4, $t5, 0x18
  .L8007CF8C:
    /* 6B79C 8007CF8C 0300E280 */  lb         $v0, 0x3($a3)
    /* 6B7A0 8007CF90 00000000 */  nop
    /* 6B7A4 8007CF94 21100203 */  addu       $v0, $t8, $v0
    /* 6B7A8 8007CF98 00004380 */  lb         $v1, 0x0($v0)
    /* 6B7AC 8007CF9C 00000000 */  nop
    /* 6B7B0 8007CFA0 DDFF6010 */  beqz       $v1, .L8007CF18
    /* 6B7B4 8007CFA4 00000000 */   nop
    /* 6B7B8 8007CFA8 000020CA */  lwc2       $0, 0x0($s1)
    /* 6B7BC 8007CFAC 040021CA */  lwc2       $1, 0x4($s1)
    /* 6B7C0 8007CFB0 000002CA */  lwc2       $2, 0x0($s0)
    /* 6B7C4 8007CFB4 040003CA */  lwc2       $3, 0x4($s0)
    /* 6B7C8 8007CFB8 000024CB */  lwc2       $4, 0x0($t9)
    /* 6B7CC 8007CFBC 040025CB */  lwc2       $5, 0x4($t9)
    /* 6B7D0 8007CFC0 2120C001 */  addu       $a0, $t6, $zero
    /* 6B7D4 8007CFC4 1C008E24 */  addiu      $t6, $a0, 0x1C
    /* 6B7D8 8007CFC8 0200E724 */  addiu      $a3, $a3, 0x2
    /* 6B7DC 8007CFCC 3000284A */  rtpt
    /* 6B7E0 8007CFD0 1C00838C */  lw         $v1, 0x1C($a0)
    /* 6B7E4 8007CFD4 18008F8C */  lw         $t7, 0x18($a0)
    /* 6B7E8 8007CFD8 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6B7EC 8007CFDC C0100200 */  sll        $v0, $v0, 3
    /* 6B7F0 8007CFE0 21886202 */  addu       $s1, $s3, $v0
    /* 6B7F4 8007CFE4 021C0300 */  srl        $v1, $v1, 16
    /* 6B7F8 8007CFE8 C0180300 */  sll        $v1, $v1, 3
    /* 6B7FC 8007CFEC 21806302 */  addu       $s0, $s3, $v1
    /* 6B800 8007CFF0 0400C295 */  lhu        $v0, 0x4($t6)
    /* 6B804 8007CFF4 0800838C */  lw         $v1, 0x8($a0)
    /* 6B808 8007CFF8 C0100200 */  sll        $v0, $v0, 3
    /* 6B80C 8007CFFC 21C86202 */  addu       $t9, $s3, $v0
    /* 6B810 8007D000 0000658C */  lw         $a1, 0x0($v1)
    /* 6B814 8007D004 0400688C */  lw         $t0, 0x4($v1)
    /* 6B818 8007D008 0800638C */  lw         $v1, 0x8($v1)
    /* 6B81C 8007D00C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6B820 8007D010 00000000 */  nop
    /* 6B824 8007D014 24105400 */  and        $v0, $v0, $s4
    /* 6B828 8007D018 35004014 */  bnez       $v0, .L8007D0F0
    /* 6B82C 8007D01C 2110A001 */   addu      $v0, $t5, $zero
    /* 6B830 8007D020 0C00898C */  lw         $t1, 0xC($a0)
    /* 6B834 8007D024 10008A8C */  lw         $t2, 0x10($a0)
    /* 6B838 8007D028 14008B8C */  lw         $t3, 0x14($a0)
    /* 6B83C 8007D02C 0000BEAD */  sw         $fp, 0x0($t5)
    /* 6B840 8007D030 ECFF85AD */  sw         $a1, -0x14($t4)
    /* 6B844 8007D034 F8FF88AD */  sw         $t0, -0x8($t4)
    /* 6B848 8007D038 040083AD */  sw         $v1, 0x4($t4)
    /* 6B84C 8007D03C 08004CE8 */  swc2       $12, 0x8($v0)
    /* 6B850 8007D040 14004DE8 */  swc2       $13, 0x14($v0)
    /* 6B854 8007D044 20004EE8 */  swc2       $14, 0x20($v0)
    /* 6B858 8007D048 2D00584B */  avsz3
    /* 6B85C 8007D04C 00380848 */  mfc2       $t0, $7 /* handwritten instruction */
    /* 6B860 8007D050 00000000 */  nop
    /* 6B864 8007D054 43420800 */  sra        $t0, $t0, 9
    /* 6B868 8007D058 04000229 */  slti       $v0, $t0, 0x4
    /* 6B86C 8007D05C 02004014 */  bnez       $v0, .L8007D068
    /* 6B870 8007D060 032C0900 */   sra       $a1, $t1, 16
    /* 6B874 8007D064 03000824 */  addiu      $t0, $zero, 0x3
  .L8007D068:
    /* 6B878 8007D068 07480901 */  srav       $t1, $t1, $t0
    /* 6B87C 8007D06C 03240A00 */  sra        $a0, $t2, 16
    /* 6B880 8007D070 07500A01 */  srav       $t2, $t2, $t0
    /* 6B884 8007D074 07580B01 */  srav       $t3, $t3, $t0
    /* 6B888 8007D078 07181701 */  srav       $v1, $s7, $t0
    /* 6B88C 8007D07C 0F0F6334 */  ori        $v1, $v1, 0xF0F
    /* 6B890 8007D080 24482301 */  and        $t1, $t1, $v1
    /* 6B894 8007D084 24504301 */  and        $t2, $t2, $v1
    /* 6B898 8007D088 24586301 */  and        $t3, $t3, $v1
    /* 6B89C 8007D08C C0140F00 */  sll        $v0, $t7, 19
    /* 6B8A0 8007D090 24105600 */  and        $v0, $v0, $s6
    /* 6B8A4 8007D094 83170200 */  sra        $v0, $v0, 30
    /* 6B8A8 8007D098 020084A5 */  sh         $a0, 0x2($t4)
    /* 6B8AC 8007D09C 02004424 */  addiu      $a0, $v0, 0x2
    /* 6B8B0 8007D0A0 F6FF85A5 */  sh         $a1, -0xA($t4)
    /* 6B8B4 8007D0A4 F4FF89A5 */  sh         $t1, -0xC($t4)
    /* 6B8B8 8007D0A8 00008AA5 */  sh         $t2, 0x0($t4)
    /* 6B8BC 8007D0AC 00004BA6 */  sh         $t3, 0x0($s2)
    /* 6B8C0 8007D0B0 801F023C */  lui        $v0, (0x1F800000 >> 16)
    /* 6B8C4 8007D0B4 0000428C */  lw         $v0, (0x1F800000 & 0xFFFF)($v0)
    /* 6B8C8 8007D0B8 0000E380 */  lb         $v1, 0x0($a3)
    /* 6B8CC 8007D0BC 04204400 */  sllv       $a0, $a0, $v0
    /* 6B8D0 8007D0C0 80180300 */  sll        $v1, $v1, 2
    /* 6B8D4 8007D0C4 21208300 */  addu       $a0, $a0, $v1
    /* 6B8D8 8007D0C8 21108800 */  addu       $v0, $a0, $t0
    /* 6B8DC 8007D0CC 80100200 */  sll        $v0, $v0, 2
    /* 6B8E0 8007D0D0 2110A202 */  addu       $v0, $s5, $v0
    /* 6B8E4 8007D0D4 02004488 */  lwl        $a0, 0x2($v0)
    /* 6B8E8 8007D0D8 001A0D00 */  sll        $v1, $t5, 8
    /* 6B8EC 8007D0DC 0200A4A9 */  swl        $a0, 0x2($t5)
    /* 6B8F0 8007D0E0 020043A8 */  swl        $v1, 0x2($v0)
    /* 6B8F4 8007D0E4 28008C25 */  addiu      $t4, $t4, 0x28
    /* 6B8F8 8007D0E8 28005226 */  addiu      $s2, $s2, 0x28
    /* 6B8FC 8007D0EC 2800AD25 */  addiu      $t5, $t5, 0x28
  .L8007D0F0:
    /* 6B900 8007D0F0 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6B904 8007D0F4 A5FFC014 */  bnez       $a2, .L8007CF8C
    /* 6B908 8007D0F8 00000000 */   nop
  .L8007D0FC:
    /* 6B90C 8007D0FC 2000BE8F */  lw         $fp, 0x20($sp)
    /* 6B910 8007D100 1C00B78F */  lw         $s7, 0x1C($sp)
    /* 6B914 8007D104 1800B68F */  lw         $s6, 0x18($sp)
    /* 6B918 8007D108 1400B58F */  lw         $s5, 0x14($sp)
    /* 6B91C 8007D10C 1000B48F */  lw         $s4, 0x10($sp)
    /* 6B920 8007D110 0C00B38F */  lw         $s3, 0xC($sp)
    /* 6B924 8007D114 0800B28F */  lw         $s2, 0x8($sp)
    /* 6B928 8007D118 0400B18F */  lw         $s1, 0x4($sp)
    /* 6B92C 8007D11C 0000B08F */  lw         $s0, 0x0($sp)
    /* 6B930 8007D120 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6B934 8007D124 708C2DAC */  sw         $t5, %lo(D_800C8C70)($at)
    /* 6B938 8007D128 0800E003 */  jr         $ra
    /* 6B93C 8007D12C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8007CEB4
