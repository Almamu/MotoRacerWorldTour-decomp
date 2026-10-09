/* Handwritten function */
nonmatching func_8007E18C, 0x27C

glabel func_8007E18C
    /* 6C99C 8007E18C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6C9A0 8007E190 21488000 */  addu       $t1, $a0, $zero
    /* 6C9A4 8007E194 0000B0AF */  sw         $s0, 0x0($sp)
    /* 6C9A8 8007E198 2180A000 */  addu       $s0, $a1, $zero
    /* 6C9AC 8007E19C C0180600 */  sll        $v1, $a2, 3
    /* 6C9B0 8007E1A0 0D80073C */  lui        $a3, %hi(D_800C8C70)
    /* 6C9B4 8007E1A4 708CE78C */  lw         $a3, %lo(D_800C8C70)($a3)
    /* 6C9B8 8007E1A8 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6C9BC 8007E1AC 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6C9C0 8007E1B0 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6C9C4 8007E1B4 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6C9C8 8007E1B8 23186600 */  subu       $v1, $v1, $a2
    /* 6C9CC 8007E1BC 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 6C9D0 8007E1C0 1800B6AF */  sw         $s6, 0x18($sp)
    /* 6C9D4 8007E1C4 1400B5AF */  sw         $s5, 0x14($sp)
    /* 6C9D8 8007E1C8 1000B4AF */  sw         $s4, 0x10($sp)
    /* 6C9DC 8007E1CC 0C00B3AF */  sw         $s3, 0xC($sp)
    /* 6C9E0 8007E1D0 0800B2AF */  sw         $s2, 0x8($sp)
    /* 6C9E4 8007E1D4 2310E200 */  subu       $v0, $a3, $v0
    /* 6C9E8 8007E1D8 0F004224 */  addiu      $v0, $v0, 0xF
    /* 6C9EC 8007E1DC 21104300 */  addu       $v0, $v0, $v1
    /* 6C9F0 8007E1E0 2A104400 */  slt        $v0, $v0, $a0
    /* 6C9F4 8007E1E4 7E004010 */  beqz       $v0, .L8007E3E0
    /* 6C9F8 8007E1E8 0400B1AF */   sw        $s1, 0x4($sp)
    /* 6C9FC 8007E1EC C77F133C */  lui        $s3, (0x7FC7E000 >> 16)
    /* 6CA00 8007E1F0 21782001 */  addu       $t7, $t1, $zero
    /* 6CA04 8007E1F4 00E07336 */  ori        $s3, $s3, (0x7FC7E000 & 0xFFFF)
    /* 6CA08 8007E1F8 0000E38D */  lw         $v1, 0x0($t7)
    /* 6CA0C 8007E1FC B475858F */  lw         $a1, %gp_rel(D_800CBCA4)($gp)
    /* 6CA10 8007E200 0D80043C */  lui        $a0, %hi(D_800CBDC4)
    /* 6CA14 8007E204 C4BD848C */  lw         $a0, %lo(D_800CBDC4)($a0)
    /* 6CA18 8007E208 0D80123C */  lui        $s2, %hi(D_800CBDC0)
    /* 6CA1C 8007E20C C0BD528E */  lw         $s2, %lo(D_800CBDC0)($s2)
    /* 6CA20 8007E210 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6CA24 8007E214 C0100200 */  sll        $v0, $v0, 3
    /* 6CA28 8007E218 21700202 */  addu       $t6, $s0, $v0
    /* 6CA2C 8007E21C 021C0300 */  srl        $v1, $v1, 16
    /* 6CA30 8007E220 C0180300 */  sll        $v1, $v1, 3
    /* 6CA34 8007E224 21680302 */  addu       $t5, $s0, $v1
    /* 6CA38 8007E228 0400E295 */  lhu        $v0, 0x4($t7)
    /* 6CA3C 8007E22C 0600A394 */  lhu        $v1, 0x6($a1)
    /* 6CA40 8007E230 0400998C */  lw         $t9, 0x4($a0)
    /* 6CA44 8007E234 0200B594 */  lhu        $s5, 0x2($a1)
    /* 6CA48 8007E238 C0100200 */  sll        $v0, $v0, 3
    /* 6CA4C 8007E23C 21600202 */  addu       $t4, $s0, $v0
    /* 6CA50 8007E240 20006324 */  addiu      $v1, $v1, 0x20
    /* 6CA54 8007E244 6400C010 */  beqz       $a2, .L8007E3D8
    /* 6CA58 8007E248 FFFF7630 */   andi      $s6, $v1, 0xFFFF
    /* 6CA5C 8007E24C 8026113C */  lui        $s1, (0x26808080 >> 16)
    /* 6CA60 8007E250 80803136 */  ori        $s1, $s1, (0x26808080 & 0xFFFF)
    /* 6CA64 8007E254 00C0173C */  lui        $s7, (0xC0000000 >> 16)
    /* 6CA68 8007E258 FBFF3427 */  addiu      $s4, $t9, -0x5
  .L8007E25C:
    /* 6CA6C 8007E25C 0000C0C9 */  lwc2       $0, 0x0($t6)
    /* 6CA70 8007E260 0400C1C9 */  lwc2       $1, 0x4($t6)
    /* 6CA74 8007E264 0000A2C9 */  lwc2       $2, 0x0($t5)
    /* 6CA78 8007E268 0400A3C9 */  lwc2       $3, 0x4($t5)
    /* 6CA7C 8007E26C 000084C9 */  lwc2       $4, 0x0($t4)
    /* 6CA80 8007E270 040085C9 */  lwc2       $5, 0x4($t4)
    /* 6CA84 8007E274 2148E001 */  addu       $t1, $t7, $zero
    /* 6CA88 8007E278 1C002F25 */  addiu      $t7, $t1, 0x1C
    /* 6CA8C 8007E27C 3000284A */  rtpt
    /* 6CA90 8007E280 0600C295 */  lhu        $v0, 0x6($t6)
    /* 6CA94 8007E284 0600A495 */  lhu        $a0, 0x6($t5)
    /* 6CA98 8007E288 06008595 */  lhu        $a1, 0x6($t4)
    /* 6CA9C 8007E28C 2150E000 */  addu       $t2, $a3, $zero
    /* 6CAA0 8007E290 0C00E2A4 */  sh         $v0, 0xC($a3)
    /* 6CAA4 8007E294 1400E4A4 */  sh         $a0, 0x14($a3)
    /* 6CAA8 8007E298 1C00E5A4 */  sh         $a1, 0x1C($a3)
    /* 6CAAC 8007E29C 1C00238D */  lw         $v1, 0x1C($t1)
    /* 6CAB0 8007E2A0 2000E824 */  addiu      $t0, $a3, 0x20
    /* 6CAB4 8007E2A4 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6CAB8 8007E2A8 C0100200 */  sll        $v0, $v0, 3
    /* 6CABC 8007E2AC 21700202 */  addu       $t6, $s0, $v0
    /* 6CAC0 8007E2B0 021C0300 */  srl        $v1, $v1, 16
    /* 6CAC4 8007E2B4 C0180300 */  sll        $v1, $v1, 3
    /* 6CAC8 8007E2B8 0400E295 */  lhu        $v0, 0x4($t7)
    /* 6CACC 8007E2BC 21680302 */  addu       $t5, $s0, $v1
    /* 6CAD0 8007E2C0 C0100200 */  sll        $v0, $v0, 3
    /* 6CAD4 8007E2C4 21600202 */  addu       $t4, $s0, $v0
    /* 6CAD8 8007E2C8 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6CADC 8007E2CC 00000000 */  nop
    /* 6CAE0 8007E2D0 24105300 */  and        $v0, $v0, $s3
    /* 6CAE4 8007E2D4 3D004014 */  bnez       $v0, .L8007E3CC
    /* 6CAE8 8007E2D8 00000000 */   nop
    /* 6CAEC 8007E2DC 0600404B */  nclip
    /* 6CAF0 8007E2E0 18002B8D */  lw         $t3, 0x18($t1)
    /* 6CAF4 8007E2E4 0800238D */  lw         $v1, 0x8($t1)
    /* 6CAF8 8007E2E8 0007183C */  lui        $t8, (0x7000000 >> 16)
    /* 6CAFC 8007E2EC 2000F8AC */  sw         $t8, 0x20($a3)
    /* 6CB00 8007E2F0 040003AD */  sw         $v1, 0x4($t0)
    /* 6CB04 8007E2F4 0C42828F */  lw         $v0, %gp_rel(D_800C88FC)($gp)
    /* 6CB08 8007E2F8 0C00248D */  lw         $a0, 0xC($t1)
    /* 6CB0C 8007E2FC 1000238D */  lw         $v1, 0x10($t1)
    /* 6CB10 8007E300 14002595 */  lhu        $a1, 0x14($t1)
    /* 6CB14 8007E304 21104400 */  addu       $v0, $v0, $a0
    /* 6CB18 8007E308 0C0002AD */  sw         $v0, 0xC($t0)
    /* 6CB1C 8007E30C 82170B00 */  srl        $v0, $t3, 30
    /* 6CB20 8007E310 01004238 */  xori       $v0, $v0, 0x1
    /* 6CB24 8007E314 01004230 */  andi       $v0, $v0, 0x1
    /* 6CB28 8007E318 140003AD */  sw         $v1, 0x14($t0)
    /* 6CB2C 8007E31C 05004010 */  beqz       $v0, .L8007E334
    /* 6CB30 8007E320 1C0005A5 */   sh        $a1, 0x1C($t0)
    /* 6CB34 8007E324 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6CB38 8007E328 00000000 */  nop
    /* 6CB3C 8007E32C 27004004 */  bltz       $v0, .L8007E3CC
    /* 6CB40 8007E330 00000000 */   nop
  .L8007E334:
    /* 6CB44 8007E334 08000CE9 */  swc2       $12, 0x8($t0)
    /* 6CB48 8007E338 10000DE9 */  swc2       $13, 0x10($t0)
    /* 6CB4C 8007E33C 18000EE9 */  swc2       $14, 0x18($t0)
    /* 6CB50 8007E340 08004CE9 */  swc2       $12, 0x8($t2)
    /* 6CB54 8007E344 10004DE9 */  swc2       $13, 0x10($t2)
    /* 6CB58 8007E348 18004EE9 */  swc2       $14, 0x18($t2)
    /* 6CB5C 8007E34C 2D00584B */  avsz3
    /* 6CB60 8007E350 C0140B00 */  sll        $v0, $t3, 19
    /* 6CB64 8007E354 24105700 */  and        $v0, $v0, $s7
    /* 6CB68 8007E358 432E0200 */  sra        $a1, $v0, 25
    /* 6CB6C 8007E35C 0000F8AC */  sw         $t8, 0x0($a3)
    /* 6CB70 8007E360 0400F1AC */  sw         $s1, 0x4($a3)
    /* 6CB74 8007E364 0E00F5A4 */  sh         $s5, 0xE($a3)
    /* 6CB78 8007E368 1600F6A4 */  sh         $s6, 0x16($a3)
    /* 6CB7C 8007E36C 00380248 */  mfc2       $v0, $7 /* handwritten instruction */
    /* 6CB80 8007E370 00000000 */  nop
    /* 6CB84 8007E374 2128A200 */  addu       $a1, $a1, $v0
    /* 6CB88 8007E378 2A48B400 */  slt        $t1, $a1, $s4
    /* 6CB8C 8007E37C 02002015 */  bnez       $t1, .L8007E388
    /* 6CB90 8007E380 2110A000 */   addu      $v0, $a1, $zero
    /* 6CB94 8007E384 FAFF2227 */  addiu      $v0, $t9, -0x6
  .L8007E388:
    /* 6CB98 8007E388 80100200 */  sll        $v0, $v0, 2
    /* 6CB9C 8007E38C 21104202 */  addu       $v0, $s2, $v0
    /* 6CBA0 8007E390 02004488 */  lwl        $a0, 0x2($v0)
    /* 6CBA4 8007E394 001A0700 */  sll        $v1, $a3, 8
    /* 6CBA8 8007E398 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6CBAC 8007E39C 020043A8 */  swl        $v1, 0x2($v0)
    /* 6CBB0 8007E3A0 21380001 */  addu       $a3, $t0, $zero
    /* 6CBB4 8007E3A4 02002015 */  bnez       $t1, .L8007E3B0
    /* 6CBB8 8007E3A8 2110A000 */   addu      $v0, $a1, $zero
    /* 6CBBC 8007E3AC FAFF2227 */  addiu      $v0, $t9, -0x6
  .L8007E3B0:
    /* 6CBC0 8007E3B0 80100200 */  sll        $v0, $v0, 2
    /* 6CBC4 8007E3B4 21104202 */  addu       $v0, $s2, $v0
    /* 6CBC8 8007E3B8 02004488 */  lwl        $a0, 0x2($v0)
    /* 6CBCC 8007E3BC 001A0700 */  sll        $v1, $a3, 8
    /* 6CBD0 8007E3C0 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6CBD4 8007E3C4 020043A8 */  swl        $v1, 0x2($v0)
    /* 6CBD8 8007E3C8 2000E724 */  addiu      $a3, $a3, 0x20
  .L8007E3CC:
    /* 6CBDC 8007E3CC FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6CBE0 8007E3D0 A2FFC014 */  bnez       $a2, .L8007E25C
    /* 6CBE4 8007E3D4 00000000 */   nop
  .L8007E3D8:
    /* 6CBE8 8007E3D8 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6CBEC 8007E3DC 708C27AC */  sw         $a3, %lo(D_800C8C70)($at)
  .L8007E3E0:
    /* 6CBF0 8007E3E0 1C00B78F */  lw         $s7, 0x1C($sp)
    /* 6CBF4 8007E3E4 1800B68F */  lw         $s6, 0x18($sp)
    /* 6CBF8 8007E3E8 1400B58F */  lw         $s5, 0x14($sp)
    /* 6CBFC 8007E3EC 1000B48F */  lw         $s4, 0x10($sp)
    /* 6CC00 8007E3F0 0C00B38F */  lw         $s3, 0xC($sp)
    /* 6CC04 8007E3F4 0800B28F */  lw         $s2, 0x8($sp)
    /* 6CC08 8007E3F8 0400B18F */  lw         $s1, 0x4($sp)
    /* 6CC0C 8007E3FC 0000B08F */  lw         $s0, 0x0($sp)
    /* 6CC10 8007E400 0800E003 */  jr         $ra
    /* 6CC14 8007E404 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8007E18C
