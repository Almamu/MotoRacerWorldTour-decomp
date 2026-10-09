/* Handwritten function */
nonmatching func_8007E9E4, 0x344

glabel func_8007E9E4
    /* 6D1F4 8007E9E4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 6D1F8 8007E9E8 21488000 */  addu       $t1, $a0, $zero
    /* 6D1FC 8007E9EC 21C8C000 */  addu       $t9, $a2, $zero
    /* 6D200 8007E9F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6D204 8007E9F4 2188A000 */  addu       $s1, $a1, $zero
    /* 6D208 8007E9F8 C0181900 */  sll        $v1, $t9, 3
    /* 6D20C 8007E9FC 0D80063C */  lui        $a2, %hi(D_800C8C70)
    /* 6D210 8007EA00 708CC68C */  lw         $a2, %lo(D_800C8C70)($a2)
    /* 6D214 8007EA04 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6D218 8007EA08 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6D21C 8007EA0C 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6D220 8007EA10 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6D224 8007EA14 21187900 */  addu       $v1, $v1, $t9
    /* 6D228 8007EA18 3000BEAF */  sw         $fp, 0x30($sp)
    /* 6D22C 8007EA1C 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 6D230 8007EA20 2800B6AF */  sw         $s6, 0x28($sp)
    /* 6D234 8007EA24 2400B5AF */  sw         $s5, 0x24($sp)
    /* 6D238 8007EA28 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6D23C 8007EA2C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6D240 8007EA30 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6D244 8007EA34 2310C200 */  subu       $v0, $a2, $v0
    /* 6D248 8007EA38 14004224 */  addiu      $v0, $v0, 0x14
    /* 6D24C 8007EA3C 21104300 */  addu       $v0, $v0, $v1
    /* 6D250 8007EA40 2A104400 */  slt        $v0, $v0, $a0
    /* 6D254 8007EA44 AD004010 */  beqz       $v0, .L8007ECFC
    /* 6D258 8007EA48 1000B0AF */   sw        $s0, 0x10($sp)
    /* 6D25C 8007EA4C 2138C000 */  addu       $a3, $a2, $zero
    /* 6D260 8007EA50 C77F133C */  lui        $s3, (0x7FC7E000 >> 16)
    /* 6D264 8007EA54 21802001 */  addu       $s0, $t1, $zero
    /* 6D268 8007EA58 00E07336 */  ori        $s3, $s3, (0x7FC7E000 & 0xFFFF)
    /* 6D26C 8007EA5C 0000038E */  lw         $v1, 0x0($s0)
    /* 6D270 8007EA60 0400048E */  lw         $a0, 0x4($s0)
    /* 6D274 8007EA64 B475858F */  lw         $a1, %gp_rel(D_800CBCA4)($gp)
    /* 6D278 8007EA68 0D80163C */  lui        $s6, %hi(D_800CBDC0)
    /* 6D27C 8007EA6C C0BDD68E */  lw         $s6, %lo(D_800CBDC0)($s6)
    /* 6D280 8007EA70 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6D284 8007EA74 C0100200 */  sll        $v0, $v0, 3
    /* 6D288 8007EA78 21C02202 */  addu       $t8, $s1, $v0
    /* 6D28C 8007EA7C 021C0300 */  srl        $v1, $v1, 16
    /* 6D290 8007EA80 C0180300 */  sll        $v1, $v1, 3
    /* 6D294 8007EA84 21782302 */  addu       $t7, $s1, $v1
    /* 6D298 8007EA88 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6D29C 8007EA8C C0100200 */  sll        $v0, $v0, 3
    /* 6D2A0 8007EA90 21A02202 */  addu       $s4, $s1, $v0
    /* 6D2A4 8007EA94 02240400 */  srl        $a0, $a0, 16
    /* 6D2A8 8007EA98 C0200400 */  sll        $a0, $a0, 3
    /* 6D2AC 8007EA9C 0600A294 */  lhu        $v0, 0x6($a1)
    /* 6D2B0 8007EAA0 0D80033C */  lui        $v1, %hi(D_800CBDC4)
    /* 6D2B4 8007EAA4 C4BD638C */  lw         $v1, %lo(D_800CBDC4)($v1)
    /* 6D2B8 8007EAA8 20004224 */  addiu      $v0, $v0, 0x20
    /* 6D2BC 8007EAAC FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 6D2C0 8007EAB0 0000A2AF */  sw         $v0, 0x0($sp)
    /* 6D2C4 8007EAB4 0400728C */  lw         $s2, 0x4($v1)
    /* 6D2C8 8007EAB8 0200BE94 */  lhu        $fp, 0x2($a1)
    /* 6D2CC 8007EABC 8D002013 */  beqz       $t9, .L8007ECF4
    /* 6D2D0 8007EAC0 21702402 */   addu      $t6, $s1, $a0
    /* 6D2D4 8007EAC4 802E153C */  lui        $s5, (0x2E808080 >> 16)
    /* 6D2D8 8007EAC8 8080B536 */  ori        $s5, $s5, (0x2E808080 & 0xFFFF)
    /* 6D2DC 8007EACC FBFF5726 */  addiu      $s7, $s2, -0x5
    /* 6D2E0 8007EAD0 0800B7AF */  sw         $s7, 0x8($sp)
  .L8007EAD4:
    /* 6D2E4 8007EAD4 000000CB */  lwc2       $0, 0x0($t8)
    /* 6D2E8 8007EAD8 040001CB */  lwc2       $1, 0x4($t8)
    /* 6D2EC 8007EADC 0000E2C9 */  lwc2       $2, 0x0($t7)
    /* 6D2F0 8007EAE0 0400E3C9 */  lwc2       $3, 0x4($t7)
    /* 6D2F4 8007EAE4 0000C4C9 */  lwc2       $4, 0x0($t6)
    /* 6D2F8 8007EAE8 0400C5C9 */  lwc2       $5, 0x4($t6)
    /* 6D2FC 8007EAEC 21480002 */  addu       $t1, $s0, $zero
    /* 6D300 8007EAF0 1C003025 */  addiu      $s0, $t1, 0x1C
    /* 6D304 8007EAF4 21608002 */  addu       $t4, $s4, $zero
    /* 6D308 8007EAF8 3000284A */  rtpt
    /* 6D30C 8007EAFC 2150E000 */  addu       $t2, $a3, $zero
    /* 6D310 8007EB00 2800EB24 */  addiu      $t3, $a3, 0x28
    /* 6D314 8007EB04 06000297 */  lhu        $v0, 0x6($t8)
    /* 6D318 8007EB08 0600E395 */  lhu        $v1, 0x6($t7)
    /* 6D31C 8007EB0C 06008495 */  lhu        $a0, 0x6($t4)
    /* 6D320 8007EB10 0600C595 */  lhu        $a1, 0x6($t6)
    /* 6D324 8007EB14 21406001 */  addu       $t0, $t3, $zero
    /* 6D328 8007EB18 0C00E2A4 */  sh         $v0, 0xC($a3)
    /* 6D32C 8007EB1C 1400E3A4 */  sh         $v1, 0x14($a3)
    /* 6D330 8007EB20 2400E4A4 */  sh         $a0, 0x24($a3)
    /* 6D334 8007EB24 1C00E5A4 */  sh         $a1, 0x1C($a3)
    /* 6D338 8007EB28 1C00238D */  lw         $v1, 0x1C($t1)
    /* 6D33C 8007EB2C 0400048E */  lw         $a0, 0x4($s0)
    /* 6D340 8007EB30 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6D344 8007EB34 C0100200 */  sll        $v0, $v0, 3
    /* 6D348 8007EB38 21C02202 */  addu       $t8, $s1, $v0
    /* 6D34C 8007EB3C 021C0300 */  srl        $v1, $v1, 16
    /* 6D350 8007EB40 C0180300 */  sll        $v1, $v1, 3
    /* 6D354 8007EB44 21782302 */  addu       $t7, $s1, $v1
    /* 6D358 8007EB48 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6D35C 8007EB4C C0100200 */  sll        $v0, $v0, 3
    /* 6D360 8007EB50 21A02202 */  addu       $s4, $s1, $v0
    /* 6D364 8007EB54 02240400 */  srl        $a0, $a0, 16
    /* 6D368 8007EB58 C0200400 */  sll        $a0, $a0, 3
    /* 6D36C 8007EB5C 21702402 */  addu       $t6, $s1, $a0
    /* 6D370 8007EB60 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6D374 8007EB64 00000000 */  nop
    /* 6D378 8007EB68 24105300 */  and        $v0, $v0, $s3
    /* 6D37C 8007EB6C 5E004014 */  bnez       $v0, .L8007ECE8
    /* 6D380 8007EB70 00000000 */   nop
    /* 6D384 8007EB74 0600404B */  nclip
    /* 6D388 8007EB78 18002D8D */  lw         $t5, 0x18($t1)
    /* 6D38C 8007EB7C 000C173C */  lui        $s7, (0xC000000 >> 16)
    /* 6D390 8007EB80 2800F7AC */  sw         $s7, 0x28($a3)
    /* 6D394 8007EB84 0C42828F */  lw         $v0, %gp_rel(D_800C88FC)($gp)
    /* 6D398 8007EB88 0C00238D */  lw         $v1, 0xC($t1)
    /* 6D39C 8007EB8C 1000248D */  lw         $a0, 0x10($t1)
    /* 6D3A0 8007EB90 14002595 */  lhu        $a1, 0x14($t1)
    /* 6D3A4 8007EB94 16002695 */  lhu        $a2, 0x16($t1)
    /* 6D3A8 8007EB98 21104300 */  addu       $v0, $v0, $v1
    /* 6D3AC 8007EB9C 0C0062AD */  sw         $v0, 0xC($t3)
    /* 6D3B0 8007EBA0 180064AD */  sw         $a0, 0x18($t3)
    /* 6D3B4 8007EBA4 300065A5 */  sh         $a1, 0x30($t3)
    /* 6D3B8 8007EBA8 240066A5 */  sh         $a2, 0x24($t3)
    /* 6D3BC 8007EBAC 00C00548 */  mfc2       $a1, $24 /* handwritten instruction */
    /* 6D3C0 8007EBB0 08000CE9 */  swc2       $12, 0x8($t0)
    /* 6D3C4 8007EBB4 14000DE9 */  swc2       $13, 0x14($t0)
    /* 6D3C8 8007EBB8 20000EE9 */  swc2       $14, 0x20($t0)
    /* 6D3CC 8007EBBC 08004CE9 */  swc2       $12, 0x8($t2)
    /* 6D3D0 8007EBC0 10004DE9 */  swc2       $13, 0x10($t2)
    /* 6D3D4 8007EBC4 18004EE9 */  swc2       $14, 0x18($t2)
    /* 6D3D8 8007EBC8 000080C9 */  lwc2       $0, 0x0($t4)
    /* 6D3DC 8007EBCC 040081C9 */  lwc2       $1, 0x4($t4)
    /* 6D3E0 8007EBD0 00000000 */  nop
    /* 6D3E4 8007EBD4 00000000 */  nop
    /* 6D3E8 8007EBD8 0100184A */  rtps
    /* 6D3EC 8007EBDC 0800238D */  lw         $v1, 0x8($t1)
    /* 6D3F0 8007EBE0 00000000 */  nop
    /* 6D3F4 8007EBE4 0000648C */  lw         $a0, 0x0($v1)
    /* 6D3F8 8007EBE8 0400668C */  lw         $a2, 0x4($v1)
    /* 6D3FC 8007EBEC 0800698C */  lw         $t1, 0x8($v1)
    /* 6D400 8007EBF0 0C00638C */  lw         $v1, 0xC($v1)
    /* 6D404 8007EBF4 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6D408 8007EBF8 00000000 */  nop
    /* 6D40C 8007EBFC 24105300 */  and        $v0, $v0, $s3
    /* 6D410 8007EC00 39004014 */  bnez       $v0, .L8007ECE8
    /* 6D414 8007EC04 00000000 */   nop
    /* 6D418 8007EC08 2C000EE9 */  swc2       $14, 0x2C($t0)
    /* 6D41C 8007EC0C 20004EE9 */  swc2       $14, 0x20($t2)
    /* 6D420 8007EC10 82170D00 */  srl        $v0, $t5, 30
    /* 6D424 8007EC14 01004238 */  xori       $v0, $v0, 0x1
    /* 6D428 8007EC18 01004230 */  andi       $v0, $v0, 0x1
    /* 6D42C 8007EC1C 09004010 */  beqz       $v0, .L8007EC44
    /* 6D430 8007EC20 00000000 */   nop
    /* 6D434 8007EC24 0700A104 */  bgez       $a1, .L8007EC44
    /* 6D438 8007EC28 00000000 */   nop
    /* 6D43C 8007EC2C 0600404B */  nclip
    /* 6D440 8007EC30 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6D444 8007EC34 00000000 */  nop
    /* 6D448 8007EC38 F4FF4228 */  slti       $v0, $v0, -0xC
    /* 6D44C 8007EC3C 2A004010 */  beqz       $v0, .L8007ECE8
    /* 6D450 8007EC40 00000000 */   nop
  .L8007EC44:
    /* 6D454 8007EC44 2E00684B */  avsz4
    /* 6D458 8007EC48 C0140D00 */  sll        $v0, $t5, 19
    /* 6D45C 8007EC4C 00C0173C */  lui        $s7, (0xC0000000 >> 16)
    /* 6D460 8007EC50 24105700 */  and        $v0, $v0, $s7
    /* 6D464 8007EC54 0009173C */  lui        $s7, (0x9000000 >> 16)
    /* 6D468 8007EC58 040004AD */  sw         $a0, 0x4($t0)
    /* 6D46C 8007EC5C 100006AD */  sw         $a2, 0x10($t0)
    /* 6D470 8007EC60 1C0003AD */  sw         $v1, 0x1C($t0)
    /* 6D474 8007EC64 280009AD */  sw         $t1, 0x28($t0)
    /* 6D478 8007EC68 0000F7AC */  sw         $s7, 0x0($a3)
    /* 6D47C 8007EC6C 0400F5AC */  sw         $s5, 0x4($a3)
    /* 6D480 8007EC70 0E00FEA4 */  sh         $fp, 0xE($a3)
    /* 6D484 8007EC74 0000B78F */  lw         $s7, 0x0($sp)
    /* 6D488 8007EC78 432E0200 */  sra        $a1, $v0, 25
    /* 6D48C 8007EC7C 1600F7A4 */  sh         $s7, 0x16($a3)
    /* 6D490 8007EC80 00380248 */  mfc2       $v0, $7 /* handwritten instruction */
    /* 6D494 8007EC84 00000000 */  nop
    /* 6D498 8007EC88 2128A200 */  addu       $a1, $a1, $v0
    /* 6D49C 8007EC8C 0800B78F */  lw         $s7, 0x8($sp)
    /* 6D4A0 8007EC90 00000000 */  nop
    /* 6D4A4 8007EC94 2A30B700 */  slt        $a2, $a1, $s7
    /* 6D4A8 8007EC98 0200C014 */  bnez       $a2, .L8007ECA4
    /* 6D4AC 8007EC9C 2110A000 */   addu      $v0, $a1, $zero
    /* 6D4B0 8007ECA0 FAFF4226 */  addiu      $v0, $s2, -0x6
  .L8007ECA4:
    /* 6D4B4 8007ECA4 80100200 */  sll        $v0, $v0, 2
    /* 6D4B8 8007ECA8 2110C202 */  addu       $v0, $s6, $v0
    /* 6D4BC 8007ECAC 02004488 */  lwl        $a0, 0x2($v0)
    /* 6D4C0 8007ECB0 001A0700 */  sll        $v1, $a3, 8
    /* 6D4C4 8007ECB4 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6D4C8 8007ECB8 020043A8 */  swl        $v1, 0x2($v0)
    /* 6D4CC 8007ECBC 21380001 */  addu       $a3, $t0, $zero
    /* 6D4D0 8007ECC0 0200C014 */  bnez       $a2, .L8007ECCC
    /* 6D4D4 8007ECC4 2110A000 */   addu      $v0, $a1, $zero
    /* 6D4D8 8007ECC8 FAFF4226 */  addiu      $v0, $s2, -0x6
  .L8007ECCC:
    /* 6D4DC 8007ECCC 80100200 */  sll        $v0, $v0, 2
    /* 6D4E0 8007ECD0 2110C202 */  addu       $v0, $s6, $v0
    /* 6D4E4 8007ECD4 02004488 */  lwl        $a0, 0x2($v0)
    /* 6D4E8 8007ECD8 001A0700 */  sll        $v1, $a3, 8
    /* 6D4EC 8007ECDC 0200E4A8 */  swl        $a0, 0x2($a3)
    /* 6D4F0 8007ECE0 020043A8 */  swl        $v1, 0x2($v0)
    /* 6D4F4 8007ECE4 34006725 */  addiu      $a3, $t3, 0x34
  .L8007ECE8:
    /* 6D4F8 8007ECE8 FFFF3927 */  addiu      $t9, $t9, -0x1
    /* 6D4FC 8007ECEC 79FF2017 */  bnez       $t9, .L8007EAD4
    /* 6D500 8007ECF0 00000000 */   nop
  .L8007ECF4:
    /* 6D504 8007ECF4 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6D508 8007ECF8 708C27AC */  sw         $a3, %lo(D_800C8C70)($at)
  .L8007ECFC:
    /* 6D50C 8007ECFC 3000BE8F */  lw         $fp, 0x30($sp)
    /* 6D510 8007ED00 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 6D514 8007ED04 2800B68F */  lw         $s6, 0x28($sp)
    /* 6D518 8007ED08 2400B58F */  lw         $s5, 0x24($sp)
    /* 6D51C 8007ED0C 2000B48F */  lw         $s4, 0x20($sp)
    /* 6D520 8007ED10 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6D524 8007ED14 1800B28F */  lw         $s2, 0x18($sp)
    /* 6D528 8007ED18 1400B18F */  lw         $s1, 0x14($sp)
    /* 6D52C 8007ED1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6D530 8007ED20 0800E003 */  jr         $ra
    /* 6D534 8007ED24 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8007E9E4
