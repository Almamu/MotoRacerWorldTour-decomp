/* Handwritten function */
nonmatching func_8007D638, 0x27C

glabel func_8007D638
    /* 6BE48 8007D638 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6BE4C 8007D63C 21408000 */  addu       $t0, $a0, $zero
    /* 6BE50 8007D640 21C0A000 */  addu       $t8, $a1, $zero
    /* 6BE54 8007D644 0D80073C */  lui        $a3, %hi(D_800C8C70)
    /* 6BE58 8007D648 708CE78C */  lw         $a3, %lo(D_800C8C70)($a3)
    /* 6BE5C 8007D64C 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6BE60 8007D650 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6BE64 8007D654 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6BE68 8007D658 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6BE6C 8007D65C 80180600 */  sll        $v1, $a2, 2
    /* 6BE70 8007D660 2000BEAF */  sw         $fp, 0x20($sp)
    /* 6BE74 8007D664 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 6BE78 8007D668 1800B6AF */  sw         $s6, 0x18($sp)
    /* 6BE7C 8007D66C 1400B5AF */  sw         $s5, 0x14($sp)
    /* 6BE80 8007D670 1000B4AF */  sw         $s4, 0x10($sp)
    /* 6BE84 8007D674 0C00B3AF */  sw         $s3, 0xC($sp)
    /* 6BE88 8007D678 0800B2AF */  sw         $s2, 0x8($sp)
    /* 6BE8C 8007D67C 0400B1AF */  sw         $s1, 0x4($sp)
    /* 6BE90 8007D680 2310E200 */  subu       $v0, $a3, $v0
    /* 6BE94 8007D684 0F004224 */  addiu      $v0, $v0, 0xF
    /* 6BE98 8007D688 21104300 */  addu       $v0, $v0, $v1
    /* 6BE9C 8007D68C 2A104400 */  slt        $v0, $v0, $a0
    /* 6BEA0 8007D690 7D004010 */  beqz       $v0, .L8007D888
    /* 6BEA4 8007D694 0000B0AF */   sw        $s0, 0x0($sp)
    /* 6BEA8 8007D698 C77F113C */  lui        $s1, (0x7FC7E000 >> 16)
    /* 6BEAC 8007D69C 21680001 */  addu       $t5, $t0, $zero
    /* 6BEB0 8007D6A0 00E03136 */  ori        $s1, $s1, (0x7FC7E000 & 0xFFFF)
    /* 6BEB4 8007D6A4 0000A38D */  lw         $v1, 0x0($t5)
    /* 6BEB8 8007D6A8 B475858F */  lw         $a1, %gp_rel(D_800CBCA4)($gp)
    /* 6BEBC 8007D6AC 0D80043C */  lui        $a0, %hi(D_800CBDC4)
    /* 6BEC0 8007D6B0 C4BD848C */  lw         $a0, %lo(D_800CBDC4)($a0)
    /* 6BEC4 8007D6B4 0D80103C */  lui        $s0, %hi(D_800CBDC0)
    /* 6BEC8 8007D6B8 C0BD108E */  lw         $s0, %lo(D_800CBDC0)($s0)
    /* 6BECC 8007D6BC FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6BED0 8007D6C0 C0100200 */  sll        $v0, $v0, 3
    /* 6BED4 8007D6C4 21600203 */  addu       $t4, $t8, $v0
    /* 6BED8 8007D6C8 021C0300 */  srl        $v1, $v1, 16
    /* 6BEDC 8007D6CC C0180300 */  sll        $v1, $v1, 3
    /* 6BEE0 8007D6D0 21580303 */  addu       $t3, $t8, $v1
    /* 6BEE4 8007D6D4 0400A295 */  lhu        $v0, 0x4($t5)
    /* 6BEE8 8007D6D8 0600A394 */  lhu        $v1, 0x6($a1)
    /* 6BEEC 8007D6DC 04008F8C */  lw         $t7, 0x4($a0)
    /* 6BEF0 8007D6E0 0200B394 */  lhu        $s3, 0x2($a1)
    /* 6BEF4 8007D6E4 C0100200 */  sll        $v0, $v0, 3
    /* 6BEF8 8007D6E8 21500203 */  addu       $t2, $t8, $v0
    /* 6BEFC 8007D6EC 20006324 */  addiu      $v1, $v1, 0x20
    /* 6BF00 8007D6F0 6300C010 */  beqz       $a2, .L8007D880
    /* 6BF04 8007D6F4 FFFF7430 */   andi      $s4, $v1, 0xFFFF
    /* 6BF08 8007D6F8 00041E3C */  lui        $fp, (0x4000000 >> 16)
    /* 6BF0C 8007D6FC 0010173C */  lui        $s7, (0x10000000 >> 16)
    /* 6BF10 8007D700 0007163C */  lui        $s6, (0x7000000 >> 16)
    /* 6BF14 8007D704 8026193C */  lui        $t9, (0x26808080 >> 16)
    /* 6BF18 8007D708 80803937 */  ori        $t9, $t9, (0x26808080 & 0xFFFF)
    /* 6BF1C 8007D70C 00C0153C */  lui        $s5, (0xC0000000 >> 16)
    /* 6BF20 8007D710 FBFFF225 */  addiu      $s2, $t7, -0x5
  .L8007D714:
    /* 6BF24 8007D714 000080C9 */  lwc2       $0, 0x0($t4)
    /* 6BF28 8007D718 040081C9 */  lwc2       $1, 0x4($t4)
    /* 6BF2C 8007D71C 000062C9 */  lwc2       $2, 0x0($t3)
    /* 6BF30 8007D720 040063C9 */  lwc2       $3, 0x4($t3)
    /* 6BF34 8007D724 000044C9 */  lwc2       $4, 0x0($t2)
    /* 6BF38 8007D728 040045C9 */  lwc2       $5, 0x4($t2)
    /* 6BF3C 8007D72C 2140A001 */  addu       $t0, $t5, $zero
    /* 6BF40 8007D730 1C000D25 */  addiu      $t5, $t0, 0x1C
    /* 6BF44 8007D734 3000284A */  rtpt
    /* 6BF48 8007D738 2000EE24 */  addiu      $t6, $a3, 0x20
    /* 6BF4C 8007D73C 06008295 */  lhu        $v0, 0x6($t4)
    /* 6BF50 8007D740 06006495 */  lhu        $a0, 0x6($t3)
    /* 6BF54 8007D744 06004595 */  lhu        $a1, 0x6($t2)
    /* 6BF58 8007D748 2148C001 */  addu       $t1, $t6, $zero
    /* 6BF5C 8007D74C 0C00E2A4 */  sh         $v0, 0xC($a3)
    /* 6BF60 8007D750 1400E4A4 */  sh         $a0, 0x14($a3)
    /* 6BF64 8007D754 1C00E5A4 */  sh         $a1, 0x1C($a3)
    /* 6BF68 8007D758 1C00038D */  lw         $v1, 0x1C($t0)
    /* 6BF6C 8007D75C 1800058D */  lw         $a1, 0x18($t0)
    /* 6BF70 8007D760 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6BF74 8007D764 C0100200 */  sll        $v0, $v0, 3
    /* 6BF78 8007D768 21600203 */  addu       $t4, $t8, $v0
    /* 6BF7C 8007D76C 021C0300 */  srl        $v1, $v1, 16
    /* 6BF80 8007D770 C0180300 */  sll        $v1, $v1, 3
    /* 6BF84 8007D774 21580303 */  addu       $t3, $t8, $v1
    /* 6BF88 8007D778 0400A295 */  lhu        $v0, 0x4($t5)
    /* 6BF8C 8007D77C 2118E000 */  addu       $v1, $a3, $zero
    /* 6BF90 8007D780 C0100200 */  sll        $v0, $v0, 3
    /* 6BF94 8007D784 21500203 */  addu       $t2, $t8, $v0
    /* 6BF98 8007D788 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6BF9C 8007D78C 00000000 */  nop
    /* 6BFA0 8007D790 24105100 */  and        $v0, $v0, $s1
    /* 6BFA4 8007D794 37004014 */  bnez       $v0, .L8007D874
    /* 6BFA8 8007D798 00000000 */   nop
    /* 6BFAC 8007D79C 0600404B */  nclip
    /* 6BFB0 8007D7A0 0800048D */  lw         $a0, 0x8($t0)
    /* 6BFB4 8007D7A4 2000FEAC */  sw         $fp, 0x20($a3)
    /* 6BFB8 8007D7A8 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6BFBC 8007D7AC 00000000 */  nop
    /* 6BFC0 8007D7B0 09004104 */  bgez       $v0, .L8007D7D8
    /* 6BFC4 8007D7B4 00000000 */   nop
    /* 6BFC8 8007D7B8 83170500 */  sra        $v0, $a1, 30
    /* 6BFCC 8007D7BC 01004230 */  andi       $v0, $v0, 0x1
    /* 6BFD0 8007D7C0 2C004010 */  beqz       $v0, .L8007D874
    /* 6BFD4 8007D7C4 8000A230 */   andi      $v0, $a1, 0x80
    /* 6BFD8 8007D7C8 03004010 */  beqz       $v0, .L8007D7D8
    /* 6BFDC 8007D7CC 00000000 */   nop
    /* 6BFE0 8007D7D0 42100400 */  srl        $v0, $a0, 1
    /* 6BFE4 8007D7D4 21205700 */  addu       $a0, $v0, $s7
  .L8007D7D8:
    /* 6BFE8 8007D7D8 040024AD */  sw         $a0, 0x4($t1)
    /* 6BFEC 8007D7DC 08002CE9 */  swc2       $12, 0x8($t1)
    /* 6BFF0 8007D7E0 0C002DE9 */  swc2       $13, 0xC($t1)
    /* 6BFF4 8007D7E4 10002EE9 */  swc2       $14, 0x10($t1)
    /* 6BFF8 8007D7E8 08006CE8 */  swc2       $12, 0x8($v1)
    /* 6BFFC 8007D7EC 10006DE8 */  swc2       $13, 0x10($v1)
    /* 6C000 8007D7F0 18006EE8 */  swc2       $14, 0x18($v1)
    /* 6C004 8007D7F4 2D00584B */  avsz3
    /* 6C008 8007D7F8 C0140500 */  sll        $v0, $a1, 19
    /* 6C00C 8007D7FC 24105500 */  and        $v0, $v0, $s5
    /* 6C010 8007D800 43160200 */  sra        $v0, $v0, 25
    /* 6C014 8007D804 0000F6AC */  sw         $s6, 0x0($a3)
    /* 6C018 8007D808 0400F9AC */  sw         $t9, 0x4($a3)
    /* 6C01C 8007D80C 0E00F3A4 */  sh         $s3, 0xE($a3)
    /* 6C020 8007D810 1600F4A4 */  sh         $s4, 0x16($a3)
    /* 6C024 8007D814 00380348 */  mfc2       $v1, $7 /* handwritten instruction */
    /* 6C028 8007D818 00000000 */  nop
    /* 6C02C 8007D81C 21284300 */  addu       $a1, $v0, $v1
    /* 6C030 8007D820 2A40B200 */  slt        $t0, $a1, $s2
    /* 6C034 8007D824 02000015 */  bnez       $t0, .L8007D830
    /* 6C038 8007D828 2110A000 */   addu      $v0, $a1, $zero
    /* 6C03C 8007D82C FAFFE225 */  addiu      $v0, $t7, -0x6
  .L8007D830:
    /* 6C040 8007D830 80100200 */  sll        $v0, $v0, 2
    /* 6C044 8007D834 21100202 */  addu       $v0, $s0, $v0
    /* 6C048 8007D838 02004488 */  lwl        $a0, 0x2($v0)
    /* 6C04C 8007D83C 001A0700 */  sll        $v1, $a3, 8
    /* 6C050 8007D840 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6C054 8007D844 020043A8 */  swl        $v1, 0x2($v0)
    /* 6C058 8007D848 21382001 */  addu       $a3, $t1, $zero
    /* 6C05C 8007D84C 02000015 */  bnez       $t0, .L8007D858
    /* 6C060 8007D850 2110A000 */   addu      $v0, $a1, $zero
    /* 6C064 8007D854 FAFFE225 */  addiu      $v0, $t7, -0x6
  .L8007D858:
    /* 6C068 8007D858 80100200 */  sll        $v0, $v0, 2
    /* 6C06C 8007D85C 21100202 */  addu       $v0, $s0, $v0
    /* 6C070 8007D860 02004488 */  lwl        $a0, 0x2($v0)
    /* 6C074 8007D864 001A0700 */  sll        $v1, $a3, 8
    /* 6C078 8007D868 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6C07C 8007D86C 020043A8 */  swl        $v1, 0x2($v0)
    /* 6C080 8007D870 1400C725 */  addiu      $a3, $t6, 0x14
  .L8007D874:
    /* 6C084 8007D874 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6C088 8007D878 A6FFC014 */  bnez       $a2, .L8007D714
    /* 6C08C 8007D87C 00000000 */   nop
  .L8007D880:
    /* 6C090 8007D880 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6C094 8007D884 708C27AC */  sw         $a3, %lo(D_800C8C70)($at)
  .L8007D888:
    /* 6C098 8007D888 2000BE8F */  lw         $fp, 0x20($sp)
    /* 6C09C 8007D88C 1C00B78F */  lw         $s7, 0x1C($sp)
    /* 6C0A0 8007D890 1800B68F */  lw         $s6, 0x18($sp)
    /* 6C0A4 8007D894 1400B58F */  lw         $s5, 0x14($sp)
    /* 6C0A8 8007D898 1000B48F */  lw         $s4, 0x10($sp)
    /* 6C0AC 8007D89C 0C00B38F */  lw         $s3, 0xC($sp)
    /* 6C0B0 8007D8A0 0800B28F */  lw         $s2, 0x8($sp)
    /* 6C0B4 8007D8A4 0400B18F */  lw         $s1, 0x4($sp)
    /* 6C0B8 8007D8A8 0000B08F */  lw         $s0, 0x0($sp)
    /* 6C0BC 8007D8AC 0800E003 */  jr         $ra
    /* 6C0C0 8007D8B0 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8007D638
