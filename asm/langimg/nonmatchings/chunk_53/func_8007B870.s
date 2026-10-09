/* Handwritten function */
nonmatching func_8007B870, 0x2B4

glabel func_8007B870
    /* 6A080 8007B870 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6A084 8007B874 21388000 */  addu       $a3, $a0, $zero
    /* 6A088 8007B878 2170C000 */  addu       $t6, $a2, $zero
    /* 6A08C 8007B87C 21C0A000 */  addu       $t8, $a1, $zero
    /* 6A090 8007B880 C0180E00 */  sll        $v1, $t6, 3
    /* 6A094 8007B884 0D80063C */  lui        $a2, %hi(D_800C8C70)
    /* 6A098 8007B888 708CC68C */  lw         $a2, %lo(D_800C8C70)($a2)
    /* 6A09C 8007B88C 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6A0A0 8007B890 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6A0A4 8007B894 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6A0A8 8007B898 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6A0AC 8007B89C 23186E00 */  subu       $v1, $v1, $t6
    /* 6A0B0 8007B8A0 2000BEAF */  sw         $fp, 0x20($sp)
    /* 6A0B4 8007B8A4 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 6A0B8 8007B8A8 1800B6AF */  sw         $s6, 0x18($sp)
    /* 6A0BC 8007B8AC 1400B5AF */  sw         $s5, 0x14($sp)
    /* 6A0C0 8007B8B0 1000B4AF */  sw         $s4, 0x10($sp)
    /* 6A0C4 8007B8B4 0C00B3AF */  sw         $s3, 0xC($sp)
    /* 6A0C8 8007B8B8 0800B2AF */  sw         $s2, 0x8($sp)
    /* 6A0CC 8007B8BC 0400B1AF */  sw         $s1, 0x4($sp)
    /* 6A0D0 8007B8C0 2310C200 */  subu       $v0, $a2, $v0
    /* 6A0D4 8007B8C4 04004224 */  addiu      $v0, $v0, 0x4
    /* 6A0D8 8007B8C8 21104300 */  addu       $v0, $v0, $v1
    /* 6A0DC 8007B8CC 2A104400 */  slt        $v0, $v0, $a0
    /* 6A0E0 8007B8D0 89004010 */  beqz       $v0, .L8007BAF8
    /* 6A0E4 8007B8D4 0000B0AF */   sw        $s0, 0x0($sp)
    /* 6A0E8 8007B8D8 2148C000 */  addu       $t1, $a2, $zero
    /* 6A0EC 8007B8DC C77F123C */  lui        $s2, (0x7FC7E000 >> 16)
    /* 6A0F0 8007B8E0 2168E000 */  addu       $t5, $a3, $zero
    /* 6A0F4 8007B8E4 00E05236 */  ori        $s2, $s2, (0x7FC7E000 & 0xFFFF)
    /* 6A0F8 8007B8E8 0000A38D */  lw         $v1, 0x0($t5)
    /* 6A0FC 8007B8EC 0400A48D */  lw         $a0, 0x4($t5)
    /* 6A100 8007B8F0 0D80163C */  lui        $s6, %hi(D_800CBDC0)
    /* 6A104 8007B8F4 C0BDD68E */  lw         $s6, %lo(D_800CBDC0)($s6)
    /* 6A108 8007B8F8 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6A10C 8007B8FC C0100200 */  sll        $v0, $v0, 3
    /* 6A110 8007B900 21880203 */  addu       $s1, $t8, $v0
    /* 6A114 8007B904 021C0300 */  srl        $v1, $v1, 16
    /* 6A118 8007B908 C0180300 */  sll        $v1, $v1, 3
    /* 6A11C 8007B90C 21800303 */  addu       $s0, $t8, $v1
    /* 6A120 8007B910 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6A124 8007B914 C0100200 */  sll        $v0, $v0, 3
    /* 6A128 8007B918 21980203 */  addu       $s3, $t8, $v0
    /* 6A12C 8007B91C 02240400 */  srl        $a0, $a0, 16
    /* 6A130 8007B920 C0200400 */  sll        $a0, $a0, 3
    /* 6A134 8007B924 0D80023C */  lui        $v0, %hi(D_800CBDC4)
    /* 6A138 8007B928 C4BD428C */  lw         $v0, %lo(D_800CBDC4)($v0)
    /* 6A13C 8007B92C 00000000 */  nop
    /* 6A140 8007B930 0400548C */  lw         $s4, 0x4($v0)
    /* 6A144 8007B934 6E00C011 */  beqz       $t6, .L8007BAF0
    /* 6A148 8007B938 21780403 */   addu      $t7, $t8, $a0
    /* 6A14C 8007B93C 000C1E3C */  lui        $fp, (0xC000000 >> 16)
    /* 6A150 8007B940 00C0173C */  lui        $s7, (0xC0000000 >> 16)
    /* 6A154 8007B944 FBFF9526 */  addiu      $s5, $s4, -0x5
    /* 6A158 8007B948 28003925 */  addiu      $t9, $t1, 0x28
    /* 6A15C 8007B94C 1C002825 */  addiu      $t0, $t1, 0x1C
  .L8007B950:
    /* 6A160 8007B950 000020CA */  lwc2       $0, 0x0($s1)
    /* 6A164 8007B954 040021CA */  lwc2       $1, 0x4($s1)
    /* 6A168 8007B958 000002CA */  lwc2       $2, 0x0($s0)
    /* 6A16C 8007B95C 040003CA */  lwc2       $3, 0x4($s0)
    /* 6A170 8007B960 0000E4C9 */  lwc2       $4, 0x0($t7)
    /* 6A174 8007B964 0400E5C9 */  lwc2       $5, 0x4($t7)
    /* 6A178 8007B968 2138A001 */  addu       $a3, $t5, $zero
    /* 6A17C 8007B96C 1C00ED24 */  addiu      $t5, $a3, 0x1C
    /* 6A180 8007B970 21586002 */  addu       $t3, $s3, $zero
    /* 6A184 8007B974 3000284A */  rtpt
    /* 6A188 8007B978 1C00E38C */  lw         $v1, 0x1C($a3)
    /* 6A18C 8007B97C 0400A48D */  lw         $a0, 0x4($t5)
    /* 6A190 8007B980 1800EC8C */  lw         $t4, 0x18($a3)
    /* 6A194 8007B984 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6A198 8007B988 C0100200 */  sll        $v0, $v0, 3
    /* 6A19C 8007B98C 21880203 */  addu       $s1, $t8, $v0
    /* 6A1A0 8007B990 021C0300 */  srl        $v1, $v1, 16
    /* 6A1A4 8007B994 C0180300 */  sll        $v1, $v1, 3
    /* 6A1A8 8007B998 21800303 */  addu       $s0, $t8, $v1
    /* 6A1AC 8007B99C FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6A1B0 8007B9A0 C0100200 */  sll        $v0, $v0, 3
    /* 6A1B4 8007B9A4 21980203 */  addu       $s3, $t8, $v0
    /* 6A1B8 8007B9A8 02240400 */  srl        $a0, $a0, 16
    /* 6A1BC 8007B9AC C0200400 */  sll        $a0, $a0, 3
    /* 6A1C0 8007B9B0 21780403 */  addu       $t7, $t8, $a0
    /* 6A1C4 8007B9B4 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6A1C8 8007B9B8 00000000 */  nop
    /* 6A1CC 8007B9BC 24105200 */  and        $v0, $v0, $s2
    /* 6A1D0 8007B9C0 48004014 */  bnez       $v0, .L8007BAE4
    /* 6A1D4 8007B9C4 00000000 */   nop
    /* 6A1D8 8007B9C8 0600404B */  nclip
    /* 6A1DC 8007B9CC 00003EAD */  sw         $fp, 0x0($t1)
    /* 6A1E0 8007B9D0 0C42828F */  lw         $v0, %gp_rel(D_800C88FC)($gp)
    /* 6A1E4 8007B9D4 0C00E38C */  lw         $v1, 0xC($a3)
    /* 6A1E8 8007B9D8 1000E48C */  lw         $a0, 0x10($a3)
    /* 6A1EC 8007B9DC 1400E594 */  lhu        $a1, 0x14($a3)
    /* 6A1F0 8007B9E0 1600E694 */  lhu        $a2, 0x16($a3)
    /* 6A1F4 8007B9E4 21104300 */  addu       $v0, $v0, $v1
    /* 6A1F8 8007B9E8 FCFF04AD */  sw         $a0, -0x4($t0)
    /* 6A1FC 8007B9EC 21202001 */  addu       $a0, $t1, $zero
    /* 6A200 8007B9F0 F0FF02AD */  sw         $v0, -0x10($t0)
    /* 6A204 8007B9F4 140005A5 */  sh         $a1, 0x14($t0)
    /* 6A208 8007B9F8 080006A5 */  sh         $a2, 0x8($t0)
    /* 6A20C 8007B9FC 00C00A48 */  mfc2       $t2, $24 /* handwritten instruction */
    /* 6A210 8007BA00 08008CE8 */  swc2       $12, 0x8($a0)
    /* 6A214 8007BA04 14008DE8 */  swc2       $13, 0x14($a0)
    /* 6A218 8007BA08 20008EE8 */  swc2       $14, 0x20($a0)
    /* 6A21C 8007BA0C 000060C9 */  lwc2       $0, 0x0($t3)
    /* 6A220 8007BA10 040061C9 */  lwc2       $1, 0x4($t3)
    /* 6A224 8007BA14 00000000 */  nop
    /* 6A228 8007BA18 00000000 */  nop
    /* 6A22C 8007BA1C 0100184A */  rtps
    /* 6A230 8007BA20 0800E38C */  lw         $v1, 0x8($a3)
    /* 6A234 8007BA24 00000000 */  nop
    /* 6A238 8007BA28 0000658C */  lw         $a1, 0x0($v1)
    /* 6A23C 8007BA2C 0400668C */  lw         $a2, 0x4($v1)
    /* 6A240 8007BA30 0800678C */  lw         $a3, 0x8($v1)
    /* 6A244 8007BA34 0C00638C */  lw         $v1, 0xC($v1)
    /* 6A248 8007BA38 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6A24C 8007BA3C 00000000 */  nop
    /* 6A250 8007BA40 24105200 */  and        $v0, $v0, $s2
    /* 6A254 8007BA44 27004014 */  bnez       $v0, .L8007BAE4
    /* 6A258 8007BA48 00000000 */   nop
    /* 6A25C 8007BA4C 2C008EE8 */  swc2       $14, 0x2C($a0)
    /* 6A260 8007BA50 82170C00 */  srl        $v0, $t4, 30
    /* 6A264 8007BA54 01004238 */  xori       $v0, $v0, 0x1
    /* 6A268 8007BA58 01004230 */  andi       $v0, $v0, 0x1
    /* 6A26C 8007BA5C 09004010 */  beqz       $v0, .L8007BA84
    /* 6A270 8007BA60 00000000 */   nop
    /* 6A274 8007BA64 07004105 */  bgez       $t2, .L8007BA84
    /* 6A278 8007BA68 00000000 */   nop
    /* 6A27C 8007BA6C 0600404B */  nclip
    /* 6A280 8007BA70 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6A284 8007BA74 00000000 */  nop
    /* 6A288 8007BA78 F4FF4228 */  slti       $v0, $v0, -0xC
    /* 6A28C 8007BA7C 19004010 */  beqz       $v0, .L8007BAE4
    /* 6A290 8007BA80 00000000 */   nop
  .L8007BA84:
    /* 6A294 8007BA84 2E00684B */  avsz4
    /* 6A298 8007BA88 C0140C00 */  sll        $v0, $t4, 19
    /* 6A29C 8007BA8C 24105700 */  and        $v0, $v0, $s7
    /* 6A2A0 8007BA90 43160200 */  sra        $v0, $v0, 25
    /* 6A2A4 8007BA94 E8FF05AD */  sw         $a1, -0x18($t0)
    /* 6A2A8 8007BA98 F4FF06AD */  sw         $a2, -0xC($t0)
    /* 6A2AC 8007BA9C 000003AD */  sw         $v1, 0x0($t0)
    /* 6A2B0 8007BAA0 000027AF */  sw         $a3, 0x0($t9)
    /* 6A2B4 8007BAA4 00380348 */  mfc2       $v1, $7 /* handwritten instruction */
    /* 6A2B8 8007BAA8 00000000 */  nop
    /* 6A2BC 8007BAAC 21104300 */  addu       $v0, $v0, $v1
    /* 6A2C0 8007BAB0 2A205500 */  slt        $a0, $v0, $s5
    /* 6A2C4 8007BAB4 03008014 */  bnez       $a0, .L8007BAC4
    /* 6A2C8 8007BAB8 80100200 */   sll       $v0, $v0, 2
    /* 6A2CC 8007BABC FAFF8226 */  addiu      $v0, $s4, -0x6
    /* 6A2D0 8007BAC0 80100200 */  sll        $v0, $v0, 2
  .L8007BAC4:
    /* 6A2D4 8007BAC4 2110C202 */  addu       $v0, $s6, $v0
    /* 6A2D8 8007BAC8 02004488 */  lwl        $a0, 0x2($v0)
    /* 6A2DC 8007BACC 001A0900 */  sll        $v1, $t1, 8
    /* 6A2E0 8007BAD0 020024A9 */  swl        $a0, 0x2($t1)
    /* 6A2E4 8007BAD4 020043A8 */  swl        $v1, 0x2($v0)
    /* 6A2E8 8007BAD8 34000825 */  addiu      $t0, $t0, 0x34
    /* 6A2EC 8007BADC 34003927 */  addiu      $t9, $t9, 0x34
    /* 6A2F0 8007BAE0 34002925 */  addiu      $t1, $t1, 0x34
  .L8007BAE4:
    /* 6A2F4 8007BAE4 FFFFCE25 */  addiu      $t6, $t6, -0x1
    /* 6A2F8 8007BAE8 99FFC015 */  bnez       $t6, .L8007B950
    /* 6A2FC 8007BAEC 00000000 */   nop
  .L8007BAF0:
    /* 6A300 8007BAF0 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6A304 8007BAF4 708C29AC */  sw         $t1, %lo(D_800C8C70)($at)
  .L8007BAF8:
    /* 6A308 8007BAF8 2000BE8F */  lw         $fp, 0x20($sp)
    /* 6A30C 8007BAFC 1C00B78F */  lw         $s7, 0x1C($sp)
    /* 6A310 8007BB00 1800B68F */  lw         $s6, 0x18($sp)
    /* 6A314 8007BB04 1400B58F */  lw         $s5, 0x14($sp)
    /* 6A318 8007BB08 1000B48F */  lw         $s4, 0x10($sp)
    /* 6A31C 8007BB0C 0C00B38F */  lw         $s3, 0xC($sp)
    /* 6A320 8007BB10 0800B28F */  lw         $s2, 0x8($sp)
    /* 6A324 8007BB14 0400B18F */  lw         $s1, 0x4($sp)
    /* 6A328 8007BB18 0000B08F */  lw         $s0, 0x0($sp)
    /* 6A32C 8007BB1C 0800E003 */  jr         $ra
    /* 6A330 8007BB20 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8007B870
