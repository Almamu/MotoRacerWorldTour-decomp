/* Handwritten function */
nonmatching func_8007D130, 0x304

glabel func_8007D130
    /* 6B940 8007D130 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 6B944 8007D134 2178C000 */  addu       $t7, $a2, $zero
    /* 6B948 8007D138 0C00B1AF */  sw         $s1, 0xC($sp)
    /* 6B94C 8007D13C 801F113C */  lui        $s1, (0x1F800008 >> 16)
    /* 6B950 8007D140 08003136 */  ori        $s1, $s1, (0x1F800008 & 0xFFFF)
    /* 6B954 8007D144 2000B6AF */  sw         $s6, 0x20($sp)
    /* 6B958 8007D148 C77F163C */  lui        $s6, (0x7FC7E000 >> 16)
    /* 6B95C 8007D14C 00E0D636 */  ori        $s6, $s6, (0x7FC7E000 & 0xFFFF)
    /* 6B960 8007D150 21C08000 */  addu       $t8, $a0, $zero
    /* 6B964 8007D154 FEFFE724 */  addiu      $a3, $a3, -0x2
    /* 6B968 8007D158 1400B3AF */  sw         $s3, 0x14($sp)
    /* 6B96C 8007D15C 2800BEAF */  sw         $fp, 0x28($sp)
    /* 6B970 8007D160 2400B7AF */  sw         $s7, 0x24($sp)
    /* 6B974 8007D164 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 6B978 8007D168 1800B4AF */  sw         $s4, 0x18($sp)
    /* 6B97C 8007D16C 1000B2AF */  sw         $s2, 0x10($sp)
    /* 6B980 8007D170 0800B0AF */  sw         $s0, 0x8($sp)
    /* 6B984 8007D174 0300E280 */  lb         $v0, 0x3($a3)
    /* 6B988 8007D178 0D800E3C */  lui        $t6, %hi(D_800C8C70)
    /* 6B98C 8007D17C 708CCE8D */  lw         $t6, %lo(D_800C8C70)($t6)
    /* 6B990 8007D180 21105100 */  addu       $v0, $v0, $s1
    /* 6B994 8007D184 00004380 */  lb         $v1, 0x0($v0)
    /* 6B998 8007D188 801F1E3C */  lui        $fp, (0x1F800004 >> 16)
    /* 6B99C 8007D18C 0400DE8F */  lw         $fp, (0x1F800004 & 0xFFFF)($fp)
    /* 6B9A0 8007D190 0D006014 */  bnez       $v1, .L8007D1C8
    /* 6B9A4 8007D194 2198A000 */   addu      $s3, $a1, $zero
  .L8007D198:
    /* 6B9A8 8007D198 1C001827 */  addiu      $t8, $t8, 0x1C
  .L8007D19C:
    /* 6B9AC 8007D19C FFFFEF25 */  addiu      $t7, $t7, -0x1
    /* 6B9B0 8007D1A0 0900E011 */  beqz       $t7, .L8007D1C8
    /* 6B9B4 8007D1A4 0200E724 */   addiu     $a3, $a3, 0x2
    /* 6B9B8 8007D1A8 0300E280 */  lb         $v0, 0x3($a3)
    /* 6B9BC 8007D1AC 00000000 */  nop
    /* 6B9C0 8007D1B0 21102202 */  addu       $v0, $s1, $v0
    /* 6B9C4 8007D1B4 00004380 */  lb         $v1, 0x0($v0)
    /* 6B9C8 8007D1B8 00000000 */  nop
    /* 6B9CC 8007D1BC F7FF6010 */  beqz       $v1, .L8007D19C
    /* 6B9D0 8007D1C0 1C001827 */   addiu     $t8, $t8, 0x1C
    /* 6B9D4 8007D1C4 E4FF1827 */  addiu      $t8, $t8, -0x1C
  .L8007D1C8:
    /* 6B9D8 8007D1C8 0000038F */  lw         $v1, 0x0($t8)
    /* 6B9DC 8007D1CC 0400048F */  lw         $a0, 0x4($t8)
    /* 6B9E0 8007D1D0 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6B9E4 8007D1D4 C0100200 */  sll        $v0, $v0, 3
    /* 6B9E8 8007D1D8 21A86202 */  addu       $s5, $s3, $v0
    /* 6B9EC 8007D1DC 021C0300 */  srl        $v1, $v1, 16
    /* 6B9F0 8007D1E0 C0180300 */  sll        $v1, $v1, 3
    /* 6B9F4 8007D1E4 21A06302 */  addu       $s4, $s3, $v1
    /* 6B9F8 8007D1E8 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6B9FC 8007D1EC C0100200 */  sll        $v0, $v0, 3
    /* 6BA00 8007D1F0 21106202 */  addu       $v0, $s3, $v0
    /* 6BA04 8007D1F4 02240400 */  srl        $a0, $a0, 16
    /* 6BA08 8007D1F8 C0200400 */  sll        $a0, $a0, 3
    /* 6BA0C 8007D1FC 21906402 */  addu       $s2, $s3, $a0
    /* 6BA10 8007D200 7F00E011 */  beqz       $t7, .L8007D400
    /* 6BA14 8007D204 0000A2AF */   sw        $v0, 0x0($sp)
    /* 6BA18 8007D208 3000D925 */  addiu      $t9, $t6, 0x30
    /* 6BA1C 8007D20C 2400CD25 */  addiu      $t5, $t6, 0x24
  .L8007D210:
    /* 6BA20 8007D210 0300E280 */  lb         $v0, 0x3($a3)
    /* 6BA24 8007D214 00000000 */  nop
    /* 6BA28 8007D218 21102202 */  addu       $v0, $s1, $v0
    /* 6BA2C 8007D21C 00004380 */  lb         $v1, 0x0($v0)
    /* 6BA30 8007D220 00000000 */  nop
    /* 6BA34 8007D224 DCFF6010 */  beqz       $v1, .L8007D198
    /* 6BA38 8007D228 00000000 */   nop
    /* 6BA3C 8007D22C 0000A0CA */  lwc2       $0, 0x0($s5)
    /* 6BA40 8007D230 0400A1CA */  lwc2       $1, 0x4($s5)
    /* 6BA44 8007D234 000082CA */  lwc2       $2, 0x0($s4)
    /* 6BA48 8007D238 040083CA */  lwc2       $3, 0x4($s4)
    /* 6BA4C 8007D23C 000044CA */  lwc2       $4, 0x0($s2)
    /* 6BA50 8007D240 040045CA */  lwc2       $5, 0x4($s2)
    /* 6BA54 8007D244 21400003 */  addu       $t0, $t8, $zero
    /* 6BA58 8007D248 1C001825 */  addiu      $t8, $t0, 0x1C
    /* 6BA5C 8007D24C 0000A68F */  lw         $a2, 0x0($sp)
    /* 6BA60 8007D250 3000284A */  rtpt
    /* 6BA64 8007D254 1C00038D */  lw         $v1, 0x1C($t0)
    /* 6BA68 8007D258 0400048F */  lw         $a0, 0x4($t8)
    /* 6BA6C 8007D25C FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6BA70 8007D260 C0100200 */  sll        $v0, $v0, 3
    /* 6BA74 8007D264 21A86202 */  addu       $s5, $s3, $v0
    /* 6BA78 8007D268 021C0300 */  srl        $v1, $v1, 16
    /* 6BA7C 8007D26C C0180300 */  sll        $v1, $v1, 3
    /* 6BA80 8007D270 21A06302 */  addu       $s4, $s3, $v1
    /* 6BA84 8007D274 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6BA88 8007D278 C0100200 */  sll        $v0, $v0, 3
    /* 6BA8C 8007D27C 21106202 */  addu       $v0, $s3, $v0
    /* 6BA90 8007D280 02240400 */  srl        $a0, $a0, 16
    /* 6BA94 8007D284 C0200400 */  sll        $a0, $a0, 3
    /* 6BA98 8007D288 21906402 */  addu       $s2, $s3, $a0
    /* 6BA9C 8007D28C 0000A2AF */  sw         $v0, 0x0($sp)
    /* 6BAA0 8007D290 1800108D */  lw         $s0, 0x18($t0)
    /* 6BAA4 8007D294 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6BAA8 8007D298 00000000 */  nop
    /* 6BAAC 8007D29C 24105600 */  and        $v0, $v0, $s6
    /* 6BAB0 8007D2A0 54004014 */  bnez       $v0, .L8007D3F4
    /* 6BAB4 8007D2A4 0200E724 */   addiu     $a3, $a3, 0x2
    /* 6BAB8 8007D2A8 000C173C */  lui        $s7, (0xC000000 >> 16)
    /* 6BABC 8007D2AC 0000D7AD */  sw         $s7, 0x0($t6)
    /* 6BAC0 8007D2B0 0C00028D */  lw         $v0, 0xC($t0)
    /* 6BAC4 8007D2B4 1000038D */  lw         $v1, 0x10($t0)
    /* 6BAC8 8007D2B8 14000495 */  lhu        $a0, 0x14($t0)
    /* 6BACC 8007D2BC 16000595 */  lhu        $a1, 0x16($t0)
    /* 6BAD0 8007D2C0 2160C001 */  addu       $t4, $t6, $zero
    /* 6BAD4 8007D2C4 E8FFA2AD */  sw         $v0, -0x18($t5)
    /* 6BAD8 8007D2C8 F4FFA3AD */  sw         $v1, -0xC($t5)
    /* 6BADC 8007D2CC 000024A7 */  sh         $a0, 0x0($t9)
    /* 6BAE0 8007D2D0 0000A5A5 */  sh         $a1, 0x0($t5)
    /* 6BAE4 8007D2D4 2D00584B */  avsz3
    /* 6BAE8 8007D2D8 0000C0C8 */  lwc2       $0, 0x0($a2)
    /* 6BAEC 8007D2DC 0400C1C8 */  lwc2       $1, 0x4($a2)
    /* 6BAF0 8007D2E0 00020232 */  andi       $v0, $s0, 0x200
    /* 6BAF4 8007D2E4 02004010 */  beqz       $v0, .L8007D2F0
    /* 6BAF8 8007D2E8 21480000 */   addu      $t1, $zero, $zero
    /* 6BAFC 8007D2EC 00380948 */  mfc2       $t1, $7 /* handwritten instruction */
  .L8007D2F0:
    /* 6BB00 8007D2F0 08008CE9 */  swc2       $12, 0x8($t4)
    /* 6BB04 8007D2F4 14008DE9 */  swc2       $13, 0x14($t4)
    /* 6BB08 8007D2F8 20008EE9 */  swc2       $14, 0x20($t4)
    /* 6BB0C 8007D2FC 0100184A */  rtps
    /* 6BB10 8007D300 0800028D */  lw         $v0, 0x8($t0)
    /* 6BB14 8007D304 00000000 */  nop
    /* 6BB18 8007D308 0000448C */  lw         $a0, 0x0($v0)
    /* 6BB1C 8007D30C 0400458C */  lw         $a1, 0x4($v0)
    /* 6BB20 8007D310 0800468C */  lw         $a2, 0x8($v0)
    /* 6BB24 8007D314 0C00438C */  lw         $v1, 0xC($v0)
    /* 6BB28 8007D318 E0FFA4AD */  sw         $a0, -0x20($t5)
    /* 6BB2C 8007D31C ECFFA5AD */  sw         $a1, -0x14($t5)
    /* 6BB30 8007D320 F8FFA3AD */  sw         $v1, -0x8($t5)
    /* 6BB34 8007D324 0400A6AD */  sw         $a2, 0x4($t5)
    /* 6BB38 8007D328 0C000A8D */  lw         $t2, 0xC($t0)
    /* 6BB3C 8007D32C 10000B8D */  lw         $t3, 0x10($t0)
    /* 6BB40 8007D330 1400088D */  lw         $t0, 0x14($t0)
    /* 6BB44 8007D334 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6BB48 8007D338 2C008EE9 */  swc2       $14, 0x2C($t4)
    /* 6BB4C 8007D33C 24105600 */  and        $v0, $v0, $s6
    /* 6BB50 8007D340 2C004014 */  bnez       $v0, .L8007D3F4
    /* 6BB54 8007D344 434A0900 */   sra       $t1, $t1, 9
    /* 6BB58 8007D348 04002229 */  slti       $v0, $t1, 0x4
    /* 6BB5C 8007D34C 02004014 */  bnez       $v0, .L8007D358
    /* 6BB60 8007D350 03340A00 */   sra       $a2, $t2, 16
    /* 6BB64 8007D354 03000924 */  addiu      $t1, $zero, 0x3
  .L8007D358:
    /* 6BB68 8007D358 07502A01 */  srav       $t2, $t2, $t1
    /* 6BB6C 8007D35C 03240B00 */  sra        $a0, $t3, 16
    /* 6BB70 8007D360 07582B01 */  srav       $t3, $t3, $t1
    /* 6BB74 8007D364 07402801 */  srav       $t0, $t0, $t1
    /* 6BB78 8007D368 032C0800 */  sra        $a1, $t0, 16
    /* 6BB7C 8007D36C F0F01734 */  ori        $s7, $zero, 0xF0F0
    /* 6BB80 8007D370 07183701 */  srav       $v1, $s7, $t1
    /* 6BB84 8007D374 0F0F6334 */  ori        $v1, $v1, 0xF0F
    /* 6BB88 8007D378 24504301 */  and        $t2, $t2, $v1
    /* 6BB8C 8007D37C 24586301 */  and        $t3, $t3, $v1
    /* 6BB90 8007D380 24400301 */  and        $t0, $t0, $v1
    /* 6BB94 8007D384 2428A300 */  and        $a1, $a1, $v1
    /* 6BB98 8007D388 C0141000 */  sll        $v0, $s0, 19
    /* 6BB9C 8007D38C 00C0173C */  lui        $s7, (0xC0000000 >> 16)
    /* 6BBA0 8007D390 24105700 */  and        $v0, $v0, $s7
    /* 6BBA4 8007D394 83170200 */  sra        $v0, $v0, 30
    /* 6BBA8 8007D398 F6FFA4A5 */  sh         $a0, -0xA($t5)
    /* 6BBAC 8007D39C 02004424 */  addiu      $a0, $v0, 0x2
    /* 6BBB0 8007D3A0 EAFFA6A5 */  sh         $a2, -0x16($t5)
    /* 6BBB4 8007D3A4 E8FFAAA5 */  sh         $t2, -0x18($t5)
    /* 6BBB8 8007D3A8 F4FFABA5 */  sh         $t3, -0xC($t5)
    /* 6BBBC 8007D3AC 0000A5A5 */  sh         $a1, 0x0($t5)
    /* 6BBC0 8007D3B0 000028A7 */  sh         $t0, 0x0($t9)
    /* 6BBC4 8007D3B4 801F023C */  lui        $v0, (0x1F800000 >> 16)
    /* 6BBC8 8007D3B8 0000428C */  lw         $v0, (0x1F800000 & 0xFFFF)($v0)
    /* 6BBCC 8007D3BC 0000E380 */  lb         $v1, 0x0($a3)
    /* 6BBD0 8007D3C0 04204400 */  sllv       $a0, $a0, $v0
    /* 6BBD4 8007D3C4 80180300 */  sll        $v1, $v1, 2
    /* 6BBD8 8007D3C8 21208300 */  addu       $a0, $a0, $v1
    /* 6BBDC 8007D3CC 21108900 */  addu       $v0, $a0, $t1
    /* 6BBE0 8007D3D0 80100200 */  sll        $v0, $v0, 2
    /* 6BBE4 8007D3D4 2110C203 */  addu       $v0, $fp, $v0
    /* 6BBE8 8007D3D8 02004488 */  lwl        $a0, 0x2($v0)
    /* 6BBEC 8007D3DC 001A0E00 */  sll        $v1, $t6, 8
    /* 6BBF0 8007D3E0 0200C4A9 */  swl        $a0, 0x2($t6)
    /* 6BBF4 8007D3E4 020043A8 */  swl        $v1, 0x2($v0)
    /* 6BBF8 8007D3E8 3400AD25 */  addiu      $t5, $t5, 0x34
    /* 6BBFC 8007D3EC 34003927 */  addiu      $t9, $t9, 0x34
    /* 6BC00 8007D3F0 3400CE25 */  addiu      $t6, $t6, 0x34
  .L8007D3F4:
    /* 6BC04 8007D3F4 FFFFEF25 */  addiu      $t7, $t7, -0x1
    /* 6BC08 8007D3F8 85FFE015 */  bnez       $t7, .L8007D210
    /* 6BC0C 8007D3FC 00000000 */   nop
  .L8007D400:
    /* 6BC10 8007D400 2800BE8F */  lw         $fp, 0x28($sp)
    /* 6BC14 8007D404 2400B78F */  lw         $s7, 0x24($sp)
    /* 6BC18 8007D408 2000B68F */  lw         $s6, 0x20($sp)
    /* 6BC1C 8007D40C 1C00B58F */  lw         $s5, 0x1C($sp)
    /* 6BC20 8007D410 1800B48F */  lw         $s4, 0x18($sp)
    /* 6BC24 8007D414 1400B38F */  lw         $s3, 0x14($sp)
    /* 6BC28 8007D418 1000B28F */  lw         $s2, 0x10($sp)
    /* 6BC2C 8007D41C 0C00B18F */  lw         $s1, 0xC($sp)
    /* 6BC30 8007D420 0800B08F */  lw         $s0, 0x8($sp)
    /* 6BC34 8007D424 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6BC38 8007D428 708C2EAC */  sw         $t6, %lo(D_800C8C70)($at)
    /* 6BC3C 8007D42C 0800E003 */  jr         $ra
    /* 6BC40 8007D430 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8007D130
