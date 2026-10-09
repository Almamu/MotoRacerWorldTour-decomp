/* Handwritten function */
nonmatching func_8007E744, 0x2A0

glabel func_8007E744
    /* 6CF54 8007E744 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6CF58 8007E748 21508000 */  addu       $t2, $a0, $zero
    /* 6CF5C 8007E74C 21C8A000 */  addu       $t9, $a1, $zero
    /* 6CF60 8007E750 C0180600 */  sll        $v1, $a2, 3
    /* 6CF64 8007E754 0D80073C */  lui        $a3, %hi(D_800C8C70)
    /* 6CF68 8007E758 708CE78C */  lw         $a3, %lo(D_800C8C70)($a3)
    /* 6CF6C 8007E75C 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6CF70 8007E760 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6CF74 8007E764 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6CF78 8007E768 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6CF7C 8007E76C 23186600 */  subu       $v1, $v1, $a2
    /* 6CF80 8007E770 2000BEAF */  sw         $fp, 0x20($sp)
    /* 6CF84 8007E774 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 6CF88 8007E778 1800B6AF */  sw         $s6, 0x18($sp)
    /* 6CF8C 8007E77C 1400B5AF */  sw         $s5, 0x14($sp)
    /* 6CF90 8007E780 1000B4AF */  sw         $s4, 0x10($sp)
    /* 6CF94 8007E784 0C00B3AF */  sw         $s3, 0xC($sp)
    /* 6CF98 8007E788 0800B2AF */  sw         $s2, 0x8($sp)
    /* 6CF9C 8007E78C 0400B1AF */  sw         $s1, 0x4($sp)
    /* 6CFA0 8007E790 2310E200 */  subu       $v0, $a3, $v0
    /* 6CFA4 8007E794 11004224 */  addiu      $v0, $v0, 0x11
    /* 6CFA8 8007E798 21104300 */  addu       $v0, $v0, $v1
    /* 6CFAC 8007E79C 2A104400 */  slt        $v0, $v0, $a0
    /* 6CFB0 8007E7A0 85004010 */  beqz       $v0, .L8007E9B8
    /* 6CFB4 8007E7A4 0000B0AF */   sw        $s0, 0x0($sp)
    /* 6CFB8 8007E7A8 2140E000 */  addu       $t0, $a3, $zero
    /* 6CFBC 8007E7AC C77F123C */  lui        $s2, (0x7FC7E000 >> 16)
    /* 6CFC0 8007E7B0 21784001 */  addu       $t7, $t2, $zero
    /* 6CFC4 8007E7B4 00E05236 */  ori        $s2, $s2, (0x7FC7E000 & 0xFFFF)
    /* 6CFC8 8007E7B8 0000E38D */  lw         $v1, 0x0($t7)
    /* 6CFCC 8007E7BC B475858F */  lw         $a1, %gp_rel(D_800CBCA4)($gp)
    /* 6CFD0 8007E7C0 0D80043C */  lui        $a0, %hi(D_800CBDC4)
    /* 6CFD4 8007E7C4 C4BD848C */  lw         $a0, %lo(D_800CBDC4)($a0)
    /* 6CFD8 8007E7C8 0D80113C */  lui        $s1, %hi(D_800CBDC0)
    /* 6CFDC 8007E7CC C0BD318E */  lw         $s1, %lo(D_800CBDC0)($s1)
    /* 6CFE0 8007E7D0 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6CFE4 8007E7D4 C0100200 */  sll        $v0, $v0, 3
    /* 6CFE8 8007E7D8 21702203 */  addu       $t6, $t9, $v0
    /* 6CFEC 8007E7DC 021C0300 */  srl        $v1, $v1, 16
    /* 6CFF0 8007E7E0 C0180300 */  sll        $v1, $v1, 3
    /* 6CFF4 8007E7E4 21682303 */  addu       $t5, $t9, $v1
    /* 6CFF8 8007E7E8 0400E295 */  lhu        $v0, 0x4($t7)
    /* 6CFFC 8007E7EC 0600A394 */  lhu        $v1, 0x6($a1)
    /* 6D000 8007E7F0 0400988C */  lw         $t8, 0x4($a0)
    /* 6D004 8007E7F4 0200B494 */  lhu        $s4, 0x2($a1)
    /* 6D008 8007E7F8 C0100200 */  sll        $v0, $v0, 3
    /* 6D00C 8007E7FC 21602203 */  addu       $t4, $t9, $v0
    /* 6D010 8007E800 20006324 */  addiu      $v1, $v1, 0x20
    /* 6D014 8007E804 6A00C010 */  beqz       $a2, .L8007E9B0
    /* 6D018 8007E808 FFFF7530 */   andi      $s5, $v1, 0xFFFF
    /* 6D01C 8007E80C 00091E3C */  lui        $fp, (0x9000000 >> 16)
    /* 6D020 8007E810 0007173C */  lui        $s7, (0x7000000 >> 16)
    /* 6D024 8007E814 8026103C */  lui        $s0, (0x26808080 >> 16)
    /* 6D028 8007E818 80801036 */  ori        $s0, $s0, (0x26808080 & 0xFFFF)
    /* 6D02C 8007E81C 00C0163C */  lui        $s6, (0xC0000000 >> 16)
    /* 6D030 8007E820 FBFF1327 */  addiu      $s3, $t8, -0x5
  .L8007E824:
    /* 6D034 8007E824 0000C0C9 */  lwc2       $0, 0x0($t6)
    /* 6D038 8007E828 0400C1C9 */  lwc2       $1, 0x4($t6)
    /* 6D03C 8007E82C 0000A2C9 */  lwc2       $2, 0x0($t5)
    /* 6D040 8007E830 0400A3C9 */  lwc2       $3, 0x4($t5)
    /* 6D044 8007E834 000084C9 */  lwc2       $4, 0x0($t4)
    /* 6D048 8007E838 040085C9 */  lwc2       $5, 0x4($t4)
    /* 6D04C 8007E83C 2150E001 */  addu       $t2, $t7, $zero
    /* 6D050 8007E840 1C004F25 */  addiu      $t7, $t2, 0x1C
    /* 6D054 8007E844 3000284A */  rtpt
    /* 6D058 8007E848 21480001 */  addu       $t1, $t0, $zero
    /* 6D05C 8007E84C 0600C295 */  lhu        $v0, 0x6($t6)
    /* 6D060 8007E850 0600A495 */  lhu        $a0, 0x6($t5)
    /* 6D064 8007E854 06008595 */  lhu        $a1, 0x6($t4)
    /* 6D068 8007E858 20000725 */  addiu      $a3, $t0, 0x20
    /* 6D06C 8007E85C 0C0002A5 */  sh         $v0, 0xC($t0)
    /* 6D070 8007E860 140004A5 */  sh         $a0, 0x14($t0)
    /* 6D074 8007E864 1C0005A5 */  sh         $a1, 0x1C($t0)
    /* 6D078 8007E868 1C00438D */  lw         $v1, 0x1C($t2)
    /* 6D07C 8007E86C 18004B8D */  lw         $t3, 0x18($t2)
    /* 6D080 8007E870 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6D084 8007E874 C0100200 */  sll        $v0, $v0, 3
    /* 6D088 8007E878 21702203 */  addu       $t6, $t9, $v0
    /* 6D08C 8007E87C 021C0300 */  srl        $v1, $v1, 16
    /* 6D090 8007E880 C0180300 */  sll        $v1, $v1, 3
    /* 6D094 8007E884 21682303 */  addu       $t5, $t9, $v1
    /* 6D098 8007E888 0400E295 */  lhu        $v0, 0x4($t7)
    /* 6D09C 8007E88C 0800438D */  lw         $v1, 0x8($t2)
    /* 6D0A0 8007E890 C0100200 */  sll        $v0, $v0, 3
    /* 6D0A4 8007E894 21602203 */  addu       $t4, $t9, $v0
    /* 6D0A8 8007E898 0000648C */  lw         $a0, 0x0($v1)
    /* 6D0AC 8007E89C 0400658C */  lw         $a1, 0x4($v1)
    /* 6D0B0 8007E8A0 0800638C */  lw         $v1, 0x8($v1)
    /* 6D0B4 8007E8A4 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6D0B8 8007E8A8 00000000 */  nop
    /* 6D0BC 8007E8AC 24105200 */  and        $v0, $v0, $s2
    /* 6D0C0 8007E8B0 3C004014 */  bnez       $v0, .L8007E9A4
    /* 6D0C4 8007E8B4 00000000 */   nop
    /* 6D0C8 8007E8B8 0600404B */  nclip
    /* 6D0CC 8007E8BC 82170B00 */  srl        $v0, $t3, 30
    /* 6D0D0 8007E8C0 01004238 */  xori       $v0, $v0, 0x1
    /* 6D0D4 8007E8C4 01004230 */  andi       $v0, $v0, 0x1
    /* 6D0D8 8007E8C8 20001EAD */  sw         $fp, 0x20($t0)
    /* 6D0DC 8007E8CC 0400E4AC */  sw         $a0, 0x4($a3)
    /* 6D0E0 8007E8D0 1000E5AC */  sw         $a1, 0x10($a3)
    /* 6D0E4 8007E8D4 05004010 */  beqz       $v0, .L8007E8EC
    /* 6D0E8 8007E8D8 1C00E3AC */   sw        $v1, 0x1C($a3)
    /* 6D0EC 8007E8DC 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6D0F0 8007E8E0 00000000 */  nop
    /* 6D0F4 8007E8E4 2F004004 */  bltz       $v0, .L8007E9A4
    /* 6D0F8 8007E8E8 00000000 */   nop
  .L8007E8EC:
    /* 6D0FC 8007E8EC 0800ECE8 */  swc2       $12, 0x8($a3)
    /* 6D100 8007E8F0 1400EDE8 */  swc2       $13, 0x14($a3)
    /* 6D104 8007E8F4 2000EEE8 */  swc2       $14, 0x20($a3)
    /* 6D108 8007E8F8 08002CE9 */  swc2       $12, 0x8($t1)
    /* 6D10C 8007E8FC 10002DE9 */  swc2       $13, 0x10($t1)
    /* 6D110 8007E900 18002EE9 */  swc2       $14, 0x18($t1)
    /* 6D114 8007E904 2D00584B */  avsz3
    /* 6D118 8007E908 C0140B00 */  sll        $v0, $t3, 19
    /* 6D11C 8007E90C 24105600 */  and        $v0, $v0, $s6
    /* 6D120 8007E910 434E0200 */  sra        $t1, $v0, 25
    /* 6D124 8007E914 000017AD */  sw         $s7, 0x0($t0)
    /* 6D128 8007E918 040010AD */  sw         $s0, 0x4($t0)
    /* 6D12C 8007E91C 0E0014A5 */  sh         $s4, 0xE($t0)
    /* 6D130 8007E920 160015A5 */  sh         $s5, 0x16($t0)
    /* 6D134 8007E924 0C42828F */  lw         $v0, %gp_rel(D_800C88FC)($gp)
    /* 6D138 8007E928 0C00438D */  lw         $v1, 0xC($t2)
    /* 6D13C 8007E92C 1000448D */  lw         $a0, 0x10($t2)
    /* 6D140 8007E930 14004595 */  lhu        $a1, 0x14($t2)
    /* 6D144 8007E934 21104300 */  addu       $v0, $v0, $v1
    /* 6D148 8007E938 0C00E2AC */  sw         $v0, 0xC($a3)
    /* 6D14C 8007E93C 1800E4AC */  sw         $a0, 0x18($a3)
    /* 6D150 8007E940 2400E5A4 */  sh         $a1, 0x24($a3)
    /* 6D154 8007E944 00380248 */  mfc2       $v0, $7 /* handwritten instruction */
    /* 6D158 8007E948 00000000 */  nop
    /* 6D15C 8007E94C 21482201 */  addu       $t1, $t1, $v0
    /* 6D160 8007E950 2A283301 */  slt        $a1, $t1, $s3
    /* 6D164 8007E954 0200A014 */  bnez       $a1, .L8007E960
    /* 6D168 8007E958 21102001 */   addu      $v0, $t1, $zero
    /* 6D16C 8007E95C FAFF0227 */  addiu      $v0, $t8, -0x6
  .L8007E960:
    /* 6D170 8007E960 80100200 */  sll        $v0, $v0, 2
    /* 6D174 8007E964 21102202 */  addu       $v0, $s1, $v0
    /* 6D178 8007E968 02004488 */  lwl        $a0, 0x2($v0)
    /* 6D17C 8007E96C 001A0800 */  sll        $v1, $t0, 8
    /* 6D180 8007E970 020004A9 */  swl        $a0, 0x2($t0)
    /* 6D184 8007E974 020043A8 */  swl        $v1, 0x2($v0)
    /* 6D188 8007E978 2140E000 */  addu       $t0, $a3, $zero
    /* 6D18C 8007E97C 0200A014 */  bnez       $a1, .L8007E988
    /* 6D190 8007E980 21102001 */   addu      $v0, $t1, $zero
    /* 6D194 8007E984 FAFF0227 */  addiu      $v0, $t8, -0x6
  .L8007E988:
    /* 6D198 8007E988 80100200 */  sll        $v0, $v0, 2
    /* 6D19C 8007E98C 21102202 */  addu       $v0, $s1, $v0
    /* 6D1A0 8007E990 02004488 */  lwl        $a0, 0x2($v0)
    /* 6D1A4 8007E994 001A0800 */  sll        $v1, $t0, 8
    /* 6D1A8 8007E998 020004A9 */  swl        $a0, 0x2($t0)
    /* 6D1AC 8007E99C 020043A8 */  swl        $v1, 0x2($v0)
    /* 6D1B0 8007E9A0 28000825 */  addiu      $t0, $t0, 0x28
  .L8007E9A4:
    /* 6D1B4 8007E9A4 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6D1B8 8007E9A8 9EFFC014 */  bnez       $a2, .L8007E824
    /* 6D1BC 8007E9AC 00000000 */   nop
  .L8007E9B0:
    /* 6D1C0 8007E9B0 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6D1C4 8007E9B4 708C28AC */  sw         $t0, %lo(D_800C8C70)($at)
  .L8007E9B8:
    /* 6D1C8 8007E9B8 2000BE8F */  lw         $fp, 0x20($sp)
    /* 6D1CC 8007E9BC 1C00B78F */  lw         $s7, 0x1C($sp)
    /* 6D1D0 8007E9C0 1800B68F */  lw         $s6, 0x18($sp)
    /* 6D1D4 8007E9C4 1400B58F */  lw         $s5, 0x14($sp)
    /* 6D1D8 8007E9C8 1000B48F */  lw         $s4, 0x10($sp)
    /* 6D1DC 8007E9CC 0C00B38F */  lw         $s3, 0xC($sp)
    /* 6D1E0 8007E9D0 0800B28F */  lw         $s2, 0x8($sp)
    /* 6D1E4 8007E9D4 0400B18F */  lw         $s1, 0x4($sp)
    /* 6D1E8 8007E9D8 0000B08F */  lw         $s0, 0x0($sp)
    /* 6D1EC 8007E9DC 0800E003 */  jr         $ra
    /* 6D1F0 8007E9E0 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8007E744
