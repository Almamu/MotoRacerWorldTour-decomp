nonmatching func_8005D15C, 0x998

glabel func_8005D15C
    /* 4B96C 8005D15C 0D80023C */  lui        $v0, %hi(D_800CAE80)
    /* 4B970 8005D160 80AE428C */  lw         $v0, %lo(D_800CAE80)($v0)
    /* 4B974 8005D164 0D80033C */  lui        $v1, %hi(D_800D5F6C)
    /* 4B978 8005D168 6C5F638C */  lw         $v1, %lo(D_800D5F6C)($v1)
    /* 4B97C 8005D16C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 4B980 8005D170 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 4B984 8005D174 01001724 */  addiu      $s7, $zero, 0x1
    /* 4B988 8005D178 2800B2AF */  sw         $s2, 0x28($sp)
    /* 4B98C 8005D17C 21908000 */  addu       $s2, $a0, $zero
    /* 4B990 8005D180 2000B0AF */  sw         $s0, 0x20($sp)
    /* 4B994 8005D184 4000BFAF */  sw         $ra, 0x40($sp)
    /* 4B998 8005D188 3800B6AF */  sw         $s6, 0x38($sp)
    /* 4B99C 8005D18C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 4B9A0 8005D190 3000B4AF */  sw         $s4, 0x30($sp)
    /* 4B9A4 8005D194 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 4B9A8 8005D198 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4B9AC 8005D19C 0C80013C */  lui        $at, %hi(D_800C5E14)
    /* 4B9B0 8005D1A0 145E22AC */  sw         $v0, %lo(D_800C5E14)($at)
    /* 4B9B4 8005D1A4 02000224 */  addiu      $v0, $zero, 0x2
    /* 4B9B8 8005D1A8 22006214 */  bne        $v1, $v0, .L8005D234
    /* 4B9BC 8005D1AC 2180A000 */   addu      $s0, $a1, $zero
    /* 4B9C0 8005D1B0 FC02448E */  lw         $a0, 0x2FC($s2)
    /* 4B9C4 8005D1B4 00000000 */  nop
    /* 4B9C8 8005D1B8 10008010 */  beqz       $a0, .L8005D1FC
    /* 4B9CC 8005D1BC 00000000 */   nop
    /* 4B9D0 8005D1C0 DF2A010C */  jal        func_8004AB7C
    /* 4B9D4 8005D1C4 00000000 */   nop
    /* 4B9D8 8005D1C8 0C004010 */  beqz       $v0, .L8005D1FC
    /* 4B9DC 8005D1CC 00000000 */   nop
    /* 4B9E0 8005D1D0 FC02458E */  lw         $a1, 0x2FC($s2)
    /* 4B9E4 8005D1D4 0078010C */  jal        func_8005E000
    /* 4B9E8 8005D1D8 21204002 */   addu      $a0, $s2, $zero
    /* 4B9EC 8005D1DC 07004010 */  beqz       $v0, .L8005D1FC
    /* 4B9F0 8005D1E0 00000000 */   nop
    /* 4B9F4 8005D1E4 FC02428E */  lw         $v0, 0x2FC($s2)
    /* 4B9F8 8005D1E8 0803448E */  lw         $a0, 0x308($s2)
    /* 4B9FC 8005D1EC F000438C */  lw         $v1, 0xF0($v0)
    /* 4BA00 8005D1F0 00000000 */  nop
    /* 4BA04 8005D1F4 000083AC */  sw         $v1, 0x0($a0)
    /* 4BA08 8005D1F8 040357AE */  sw         $s7, 0x304($s2)
  .L8005D1FC:
    /* 4BA0C 8005D1FC FC02428E */  lw         $v0, 0x2FC($s2)
    /* 4BA10 8005D200 00000000 */  nop
    /* 4BA14 8005D204 E800438C */  lw         $v1, 0xE8($v0)
    /* 4BA18 8005D208 00000000 */  nop
    /* 4BA1C 8005D20C 040003AE */  sw         $v1, 0x4($s0)
    /* 4BA20 8005D210 0D80043C */  lui        $a0, %hi(D_800D5F38)
    /* 4BA24 8005D214 385F848C */  lw         $a0, %lo(D_800D5F38)($a0)
    /* 4BA28 8005D218 A243010C */  jal        func_80050E88
    /* 4BA2C 8005D21C 00000000 */   nop
    /* 4BA30 8005D220 0C0002AE */  sw         $v0, 0xC($s0)
    /* 4BA34 8005D224 0D80033C */  lui        $v1, %hi(D_800D5F44)
    /* 4BA38 8005D228 445F638C */  lw         $v1, %lo(D_800D5F44)($v1)
    /* 4BA3C 8005D22C 00000000 */  nop
    /* 4BA40 8005D230 080003AE */  sw         $v1, 0x8($s0)
  .L8005D234:
    /* 4BA44 8005D234 0D80013C */  lui        $at, %hi(D_800D5EC0)
    /* 4BA48 8005D238 C05E20AC */  sw         $zero, %lo(D_800D5EC0)($at)
    /* 4BA4C 8005D23C 0D80013C */  lui        $at, %hi(D_800D5EC4)
    /* 4BA50 8005D240 C45E20AC */  sw         $zero, %lo(D_800D5EC4)($at)
    /* 4BA54 8005D244 7000428E */  lw         $v0, 0x70($s2)
    /* 4BA58 8005D248 0D80013C */  lui        $at, %hi(D_800C873C)
    /* 4BA5C 8005D24C 3C8722AC */  sw         $v0, %lo(D_800C873C)($at)
    /* 4BA60 8005D250 7400438E */  lw         $v1, 0x74($s2)
    /* 4BA64 8005D254 0C80013C */  lui        $at, %hi(D_800C4938)
    /* 4BA68 8005D258 384923AC */  sw         $v1, %lo(D_800C4938)($at)
    /* 4BA6C 8005D25C 7800428E */  lw         $v0, 0x78($s2)
    /* 4BA70 8005D260 0D80013C */  lui        $at, %hi(D_800C8C68)
    /* 4BA74 8005D264 688C22AC */  sw         $v0, %lo(D_800C8C68)($at)
    /* 4BA78 8005D268 7C00438E */  lw         $v1, 0x7C($s2)
    /* 4BA7C 8005D26C 21204002 */  addu       $a0, $s2, $zero
    /* 4BA80 8005D270 0D80013C */  lui        $at, %hi(D_800CBE90)
    /* 4BA84 8005D274 90BE23AC */  sw         $v1, %lo(D_800CBE90)($at)
    /* 4BA88 8005D278 8000468E */  lw         $a2, 0x80($s2)
    /* 4BA8C 8005D27C F80240AE */  sw         $zero, 0x2F8($s2)
    /* 4BA90 8005D280 0D80013C */  lui        $at, %hi(D_800CBE94)
    /* 4BA94 8005D284 94BE26AC */  sw         $a2, %lo(D_800CBE94)($at)
    /* 4BA98 8005D288 4313010C */  jal        func_80044D0C
    /* 4BA9C 8005D28C 21280002 */   addu      $a1, $s0, $zero
    /* 4BAA0 8005D290 7803438E */  lw         $v1, 0x378($s2)
    /* 4BAA4 8005D294 0800028E */  lw         $v0, 0x8($s0)
    /* 4BAA8 8005D298 00000000 */  nop
    /* 4BAAC 8005D29C 040062AC */  sw         $v0, 0x4($v1)
    /* 4BAB0 8005D2A0 6800468E */  lw         $a2, 0x68($s2)
    /* 4BAB4 8005D2A4 21280002 */  addu       $a1, $s0, $zero
    /* 4BAB8 8005D2A8 C800C484 */  lh         $a0, 0xC8($a2)
    /* 4BABC 8005D2AC CC00C28C */  lw         $v0, 0xCC($a2)
    /* 4BAC0 8005D2B0 00000000 */  nop
    /* 4BAC4 8005D2B4 09F84000 */  jalr       $v0
    /* 4BAC8 8005D2B8 21204402 */   addu      $a0, $s2, $a0
    /* 4BACC 8005D2BC 6404468E */  lw         $a2, 0x464($s2)
    /* 4BAD0 8005D2C0 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 4BAD4 8005D2C4 0C0343AE */  sw         $v1, 0x30C($s2)
    /* 4BAD8 8005D2C8 0800C38C */  lw         $v1, 0x8($a2)
    /* 4BADC 8005D2CC 00000000 */  nop
    /* 4BAE0 8005D2D0 2B006010 */  beqz       $v1, .L8005D380
    /* 4BAE4 8005D2D4 21B84000 */   addu      $s7, $v0, $zero
    /* 4BAE8 8005D2D8 3400678C */  lw         $a3, 0x34($v1)
    /* 4BAEC 8005D2DC 02000824 */  addiu      $t0, $zero, 0x2
    /* 4BAF0 8005D2E0 1000A927 */  addiu      $t1, $sp, 0x10
    /* 4BAF4 8005D2E4 4C044626 */  addiu      $a2, $s2, 0x44C
  .L8005D2E8:
    /* 4BAF8 8005D2E8 0000C28C */  lw         $v0, 0x0($a2)
    /* 4BAFC 8005D2EC 0000EC8C */  lw         $t4, 0x0($a3)
    /* 4BB00 8005D2F0 0400ED8C */  lw         $t5, 0x4($a3)
    /* 4BB04 8005D2F4 0800EE8C */  lw         $t6, 0x8($a3)
    /* 4BB08 8005D2F8 0C00EF8C */  lw         $t7, 0xC($a3)
    /* 4BB0C 8005D2FC 00004CAC */  sw         $t4, 0x0($v0)
    /* 4BB10 8005D300 04004DAC */  sw         $t5, 0x4($v0)
    /* 4BB14 8005D304 08004EAC */  sw         $t6, 0x8($v0)
    /* 4BB18 8005D308 0C004FAC */  sw         $t7, 0xC($v0)
    /* 4BB1C 8005D30C 1000EC8C */  lw         $t4, 0x10($a3)
    /* 4BB20 8005D310 1400ED8C */  lw         $t5, 0x14($a3)
    /* 4BB24 8005D314 1800EE8C */  lw         $t6, 0x18($a3)
    /* 4BB28 8005D318 1C00EF8C */  lw         $t7, 0x1C($a3)
    /* 4BB2C 8005D31C 10004CAC */  sw         $t4, 0x10($v0)
    /* 4BB30 8005D320 14004DAC */  sw         $t5, 0x14($v0)
    /* 4BB34 8005D324 18004EAC */  sw         $t6, 0x18($v0)
    /* 4BB38 8005D328 1C004FAC */  sw         $t7, 0x1C($v0)
    /* 4BB3C 8005D32C 0000C38C */  lw         $v1, 0x0($a2)
    /* 4BB40 8005D330 00000000 */  nop
    /* 4BB44 8005D334 1C0060AC */  sw         $zero, 0x1C($v1)
    /* 4BB48 8005D338 180060AC */  sw         $zero, 0x18($v1)
    /* 4BB4C 8005D33C 140060AC */  sw         $zero, 0x14($v1)
    /* 4BB50 8005D340 1400E58C */  lw         $a1, 0x14($a3)
    /* 4BB54 8005D344 1800E48C */  lw         $a0, 0x18($a3)
    /* 4BB58 8005D348 1C00E38C */  lw         $v1, 0x1C($a3)
    /* 4BB5C 8005D34C FFFF0825 */  addiu      $t0, $t0, -0x1
    /* 4BB60 8005D350 1000A5AF */  sw         $a1, 0x10($sp)
    /* 4BB64 8005D354 1400A4AF */  sw         $a0, 0x14($sp)
    /* 4BB68 8005D358 1800A3AF */  sw         $v1, 0x18($sp)
    /* 4BB6C 8005D35C 0000C28C */  lw         $v0, 0x0($a2)
    /* 4BB70 8005D360 0400248D */  lw         $a0, 0x4($t1)
    /* 4BB74 8005D364 0800238D */  lw         $v1, 0x8($t1)
    /* 4BB78 8005D368 FCFFC624 */  addiu      $a2, $a2, -0x4
    /* 4BB7C 8005D36C F80045AC */  sw         $a1, 0xF8($v0)
    /* 4BB80 8005D370 F8004224 */  addiu      $v0, $v0, 0xF8
    /* 4BB84 8005D374 040044AC */  sw         $a0, 0x4($v0)
    /* 4BB88 8005D378 DBFF0105 */  bgez       $t0, .L8005D2E8
    /* 4BB8C 8005D37C 080043AC */   sw        $v1, 0x8($v0)
  .L8005D380:
    /* 4BB90 8005D380 7803428E */  lw         $v0, 0x378($s2)
    /* 4BB94 8005D384 00000000 */  nop
    /* 4BB98 8005D388 391E40A0 */  sb         $zero, 0x1E39($v0)
    /* 4BB9C 8005D38C 7803438E */  lw         $v1, 0x378($s2)
    /* 4BBA0 8005D390 00000000 */  nop
    /* 4BBA4 8005D394 3C1E60AC */  sw         $zero, 0x1E3C($v1)
    /* 4BBA8 8005D398 7803458E */  lw         $a1, 0x378($s2)
    /* 4BBAC 8005D39C 00000000 */  nop
    /* 4BBB0 8005D3A0 0000A38C */  lw         $v1, 0x0($a1)
    /* 4BBB4 8005D3A4 00000000 */  nop
    /* 4BBB8 8005D3A8 A8006230 */  andi       $v0, $v1, 0xA8
    /* 4BBBC 8005D3AC 21004014 */  bnez       $v0, .L8005D434
    /* 4BBC0 8005D3B0 03016230 */   andi      $v0, $v1, 0x103
    /* 4BBC4 8005D3B4 05004010 */  beqz       $v0, .L8005D3CC
    /* 4BBC8 8005D3B8 04000224 */   addiu     $v0, $zero, 0x4
    /* 4BBCC 8005D3BC 0D80023C */  lui        $v0, %hi(D_800D5E70)
    /* 4BBD0 8005D3C0 705E4224 */  addiu      $v0, $v0, %lo(D_800D5E70)
    /* 4BBD4 8005D3C4 0C750108 */  j          .L8005D430
    /* 4BBD8 8005D3C8 3C1EA2AC */   sw        $v0, 0x1E3C($a1)
  .L8005D3CC:
    /* 4BBDC 8005D3CC 0D80033C */  lui        $v1, %hi(D_800D5F40)
    /* 4BBE0 8005D3D0 405F638C */  lw         $v1, %lo(D_800D5F40)($v1)
    /* 4BBE4 8005D3D4 00000000 */  nop
    /* 4BBE8 8005D3D8 07006214 */  bne        $v1, $v0, .L8005D3F8
    /* 4BBEC 8005D3DC 00000000 */   nop
    /* 4BBF0 8005D3E0 0D80023C */  lui        $v0, %hi(D_800D5F38)
    /* 4BBF4 8005D3E4 385F428C */  lw         $v0, %lo(D_800D5F38)($v0)
    /* 4BBF8 8005D3E8 0D80043C */  lui        $a0, %hi(D_800D5394)
    /* 4BBFC 8005D3EC 94538424 */  addiu      $a0, $a0, %lo(D_800D5394)
    /* 4BC00 8005D3F0 03750108 */  j          .L8005D40C
    /* 4BC04 8005D3F4 80180200 */   sll       $v1, $v0, 2
  .L8005D3F8:
    /* 4BC08 8005D3F8 0D80023C */  lui        $v0, %hi(D_800D5F38)
    /* 4BC0C 8005D3FC 385F428C */  lw         $v0, %lo(D_800D5F38)($v0)
    /* 4BC10 8005D400 0D80043C */  lui        $a0, %hi(D_800D53E0)
    /* 4BC14 8005D404 E0538424 */  addiu      $a0, $a0, %lo(D_800D53E0)
    /* 4BC18 8005D408 80180200 */  sll        $v1, $v0, 2
  .L8005D40C:
    /* 4BC1C 8005D40C 21186200 */  addu       $v1, $v1, $v0
    /* 4BC20 8005D410 80180300 */  sll        $v1, $v1, 2
    /* 4BC24 8005D414 23186200 */  subu       $v1, $v1, $v0
    /* 4BC28 8005D418 C0180300 */  sll        $v1, $v1, 3
    /* 4BC2C 8005D41C 21186400 */  addu       $v1, $v1, $a0
    /* 4BC30 8005D420 3C1EA3AC */  sw         $v1, 0x1E3C($a1)
    /* 4BC34 8005D424 7803438E */  lw         $v1, 0x378($s2)
    /* 4BC38 8005D428 02000224 */  addiu      $v0, $zero, 0x2
    /* 4BC3C 8005D42C 391E62A0 */  sb         $v0, 0x1E39($v1)
  .L8005D430:
    /* 4BC40 8005D430 7803458E */  lw         $a1, 0x378($s2)
  .L8005D434:
    /* 4BC44 8005D434 00000000 */  nop
    /* 4BC48 8005D438 3C1EA28C */  lw         $v0, 0x1E3C($a1)
    /* 4BC4C 8005D43C 00000000 */  nop
    /* 4BC50 8005D440 06004010 */  beqz       $v0, .L8005D45C
    /* 4BC54 8005D444 00000000 */   nop
    /* 4BC58 8005D448 0D80023C */  lui        $v0, %hi(D_800D5F6C)
    /* 4BC5C 8005D44C 6C5F428C */  lw         $v0, %lo(D_800D5F6C)($v0)
    /* 4BC60 8005D450 00000000 */  nop
    /* 4BC64 8005D454 02004010 */  beqz       $v0, .L8005D460
    /* 4BC68 8005D458 00000000 */   nop
  .L8005D45C:
    /* 4BC6C 8005D45C 391EA0A0 */  sb         $zero, 0x1E39($a1)
  .L8005D460:
    /* 4BC70 8005D460 7803438E */  lw         $v1, 0x378($s2)
    /* 4BC74 8005D464 040340AE */  sw         $zero, 0x304($s2)
    /* 4BC78 8005D468 0000628C */  lw         $v0, 0x0($v1)
    /* 4BC7C 8005D46C 00000000 */  nop
    /* 4BC80 8005D470 02014230 */  andi       $v0, $v0, 0x102
    /* 4BC84 8005D474 11004010 */  beqz       $v0, .L8005D4BC
    /* 4BC88 8005D478 00000000 */   nop
    /* 4BC8C 8005D47C 0D80043C */  lui        $a0, %hi(D_800CAE90)
    /* 4BC90 8005D480 90AE8424 */  addiu      $a0, $a0, %lo(D_800CAE90)
    /* 4BC94 8005D484 3EBF010C */  jal        func_8006FCF8
    /* 4BC98 8005D488 00000000 */   nop
    /* 4BC9C 8005D48C 0D80043C */  lui        $a0, %hi(D_800CAE90)
    /* 4BCA0 8005D490 90AE8424 */  addiu      $a0, $a0, %lo(D_800CAE90)
    /* 4BCA4 8005D494 97BF010C */  jal        func_8006FE5C
    /* 4BCA8 8005D498 00000000 */   nop
    /* 4BCAC 8005D49C 0D80043C */  lui        $a0, %hi(D_800CB0A0)
    /* 4BCB0 8005D4A0 A0B08424 */  addiu      $a0, $a0, %lo(D_800CB0A0)
    /* 4BCB4 8005D4A4 3EBF010C */  jal        func_8006FCF8
    /* 4BCB8 8005D4A8 00000000 */   nop
    /* 4BCBC 8005D4AC 0D80043C */  lui        $a0, %hi(D_800CB0A0)
    /* 4BCC0 8005D4B0 A0B08424 */  addiu      $a0, $a0, %lo(D_800CB0A0)
    /* 4BCC4 8005D4B4 C3BF010C */  jal        func_8006FF0C
    /* 4BCC8 8005D4B8 00000000 */   nop
  .L8005D4BC:
    /* 4BCCC 8005D4BC 7803448E */  lw         $a0, 0x378($s2)
    /* 4BCD0 8005D4C0 6F41010C */  jal        func_800505BC
    /* 4BCD4 8005D4C4 21280002 */   addu      $a1, $s0, $zero
    /* 4BCD8 8005D4C8 EC03448E */  lw         $a0, 0x3EC($s2)
    /* 4BCDC 8005D4CC DB6D000C */  jal        func_8001B76C
    /* 4BCE0 8005D4D0 00000000 */   nop
    /* 4BCE4 8005D4D4 0F004014 */  bnez       $v0, .L8005D514
    /* 4BCE8 8005D4D8 21280000 */   addu      $a1, $zero, $zero
    /* 4BCEC 8005D4DC 44000724 */  addiu      $a3, $zero, 0x44
    /* 4BCF0 8005D4E0 7803428E */  lw         $v0, 0x378($s2)
    /* 4BCF4 8005D4E4 BFFF0624 */  addiu      $a2, $zero, -0x41
    /* 4BCF8 8005D4E8 E8024424 */  addiu      $a0, $v0, 0x2E8
  .L8005D4EC:
    /* 4BCFC 8005D4EC 0000838C */  lw         $v1, 0x0($a0)
    /* 4BD00 8005D4F0 00000000 */  nop
    /* 4BD04 8005D4F4 7E006230 */  andi       $v0, $v1, 0x7E
    /* 4BD08 8005D4F8 02004714 */  bne        $v0, $a3, .L8005D504
    /* 4BD0C 8005D4FC 24106600 */   and       $v0, $v1, $a2
    /* 4BD10 8005D500 000082AC */  sw         $v0, 0x0($a0)
  .L8005D504:
    /* 4BD14 8005D504 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4BD18 8005D508 0500A228 */  slti       $v0, $a1, 0x5
    /* 4BD1C 8005D50C F7FF4014 */  bnez       $v0, .L8005D4EC
    /* 4BD20 8005D510 68058424 */   addiu     $a0, $a0, 0x568
  .L8005D514:
    /* 4BD24 8005D514 7803448E */  lw         $a0, 0x378($s2)
    /* 4BD28 8005D518 21800000 */  addu       $s0, $zero, $zero
    /* 4BD2C 8005D51C 0C80133C */  lui        $s3, %hi(D_800C6AD4)
    /* 4BD30 8005D520 9342010C */  jal        func_80050A4C
    /* 4BD34 8005D524 E8021124 */   addiu     $s1, $zero, 0x2E8
  .L8005D528:
    /* 4BD38 8005D528 1000A527 */  addiu      $a1, $sp, 0x10
    /* 4BD3C 8005D52C 0A000624 */  addiu      $a2, $zero, 0xA
    /* 4BD40 8005D530 7400448E */  lw         $a0, 0x74($s2)
    /* 4BD44 8005D534 31000326 */  addiu      $v1, $s0, 0x31
    /* 4BD48 8005D538 D46A6F26 */  addiu      $t7, $s3, %lo(D_800C6AD4)
    /* 4BD4C 8005D53C 0300EC89 */  lwl        $t4, 0x3($t7)
    /* 4BD50 8005D540 0000EC99 */  lwr        $t4, 0x0($t7)
    /* 4BD54 8005D544 0700ED89 */  lwl        $t5, 0x7($t7)
    /* 4BD58 8005D548 0400ED99 */  lwr        $t5, 0x4($t7)
    /* 4BD5C 8005D54C 0800EE81 */  lb         $t6, 0x8($t7)
    /* 4BD60 8005D550 1300ACAB */  swl        $t4, 0x13($sp)
    /* 4BD64 8005D554 1000ACBB */  swr        $t4, 0x10($sp)
    /* 4BD68 8005D558 1700ADAB */  swl        $t5, 0x17($sp)
    /* 4BD6C 8005D55C 1400ADBB */  swr        $t5, 0x14($sp)
    /* 4BD70 8005D560 1800AEA3 */  sb         $t6, 0x18($sp)
    /* 4BD74 8005D564 0900EC81 */  lb         $t4, 0x9($t7)
    /* 4BD78 8005D568 0A00ED81 */  lb         $t5, 0xA($t7)
    /* 4BD7C 8005D56C 1900ACA3 */  sb         $t4, 0x19($sp)
    /* 4BD80 8005D570 1A00ADA3 */  sb         $t5, 0x1A($sp)
    /* 4BD84 8005D574 845F000C */  jal        func_80017E10
    /* 4BD88 8005D578 1900A3A3 */   sb        $v1, 0x19($sp)
    /* 4BD8C 8005D57C 21204000 */  addu       $a0, $v0, $zero
    /* 4BD90 8005D580 14008010 */  beqz       $a0, .L8005D5D4
    /* 4BD94 8005D584 21280000 */   addu      $a1, $zero, $zero
    /* 4BD98 8005D588 7803428E */  lw         $v0, 0x378($s2)
    /* 4BD9C 8005D58C 02000006 */  bltz       $s0, .L8005D598
    /* 4BDA0 8005D590 21180000 */   addu      $v1, $zero, $zero
    /* 4BDA4 8005D594 21185100 */  addu       $v1, $v0, $s1
  .L8005D598:
    /* 4BDA8 8005D598 08006010 */  beqz       $v1, .L8005D5BC
    /* 4BDAC 8005D59C 00000000 */   nop
    /* 4BDB0 8005D5A0 0000628C */  lw         $v0, 0x0($v1)
    /* 4BDB4 8005D5A4 00000000 */  nop
    /* 4BDB8 8005D5A8 82110200 */  srl        $v0, $v0, 6
    /* 4BDBC 8005D5AC 01004230 */  andi       $v0, $v0, 0x1
    /* 4BDC0 8005D5B0 02004010 */  beqz       $v0, .L8005D5BC
    /* 4BDC4 8005D5B4 00000000 */   nop
    /* 4BDC8 8005D5B8 3000658C */  lw         $a1, 0x30($v1)
  .L8005D5BC:
    /* 4BDCC 8005D5BC 00000000 */  nop
    /* 4BDD0 8005D5C0 0400A010 */  beqz       $a1, .L8005D5D4
    /* 4BDD4 8005D5C4 00000000 */   nop
    /* 4BDD8 8005D5C8 3400A58C */  lw         $a1, 0x34($a1)
    /* 4BDDC 8005D5CC 8D58000C */  jal        func_80016234
    /* 4BDE0 8005D5D0 21300000 */   addu      $a2, $zero, $zero
  .L8005D5D4:
    /* 4BDE4 8005D5D4 01001026 */  addiu      $s0, $s0, 0x1
    /* 4BDE8 8005D5D8 0500022A */  slti       $v0, $s0, 0x5
    /* 4BDEC 8005D5DC D2FF4014 */  bnez       $v0, .L8005D528
    /* 4BDF0 8005D5E0 68053126 */   addiu     $s1, $s1, 0x568
    /* 4BDF4 8005D5E4 7803458E */  lw         $a1, 0x378($s2)
    /* 4BDF8 8005D5E8 21800000 */  addu       $s0, $zero, $zero
    /* 4BDFC 8005D5EC E802B124 */  addiu      $s1, $a1, 0x2E8
  .L8005D5F0:
    /* 4BE00 8005D5F0 0000228E */  lw         $v0, 0x0($s1)
    /* 4BE04 8005D5F4 00000000 */  nop
    /* 4BE08 8005D5F8 82110200 */  srl        $v0, $v0, 6
    /* 4BE0C 8005D5FC 01004230 */  andi       $v0, $v0, 0x1
    /* 4BE10 8005D600 03004010 */  beqz       $v0, .L8005D610
    /* 4BE14 8005D604 21204002 */   addu      $a0, $s2, $zero
    /* 4BE18 8005D608 DC76010C */  jal        func_8005DB70
    /* 4BE1C 8005D60C 21280002 */   addu      $a1, $s0, $zero
  .L8005D610:
    /* 4BE20 8005D610 01001026 */  addiu      $s0, $s0, 0x1
    /* 4BE24 8005D614 0500022A */  slti       $v0, $s0, 0x5
    /* 4BE28 8005D618 F5FF4014 */  bnez       $v0, .L8005D5F0
    /* 4BE2C 8005D61C 68053126 */   addiu     $s1, $s1, 0x568
    /* 4BE30 8005D620 21300000 */  addu       $a2, $zero, $zero
    /* 4BE34 8005D624 7803458E */  lw         $a1, 0x378($s2)
    /* 4BE38 8005D628 10000B24 */  addiu      $t3, $zero, 0x10
    /* 4BE3C 8005D62C 11000A24 */  addiu      $t2, $zero, 0x11
    /* 4BE40 8005D630 04000924 */  addiu      $t1, $zero, 0x4
    /* 4BE44 8005D634 01000824 */  addiu      $t0, $zero, 0x1
    /* 4BE48 8005D638 0D80073C */  lui        $a3, %hi(D_800D4974)
    /* 4BE4C 8005D63C 7449E724 */  addiu      $a3, $a3, %lo(D_800D4974)
  .L8005D640:
    /* 4BE50 8005D640 2110A600 */  addu       $v0, $a1, $a2
    /* 4BE54 8005D644 241E4380 */  lb         $v1, 0x1E24($v0)
    /* 4BE58 8005D648 00000000 */  nop
    /* 4BE5C 8005D64C 0C006004 */  bltz       $v1, .L8005D680
    /* 4BE60 8005D650 21200000 */   addu      $a0, $zero, $zero
    /* 4BE64 8005D654 40100300 */  sll        $v0, $v1, 1
    /* 4BE68 8005D658 21104300 */  addu       $v0, $v0, $v1
    /* 4BE6C 8005D65C 80100200 */  sll        $v0, $v0, 2
    /* 4BE70 8005D660 23104300 */  subu       $v0, $v0, $v1
    /* 4BE74 8005D664 80100200 */  sll        $v0, $v0, 2
    /* 4BE78 8005D668 23104300 */  subu       $v0, $v0, $v1
    /* 4BE7C 8005D66C 80100200 */  sll        $v0, $v0, 2
    /* 4BE80 8005D670 21104300 */  addu       $v0, $v0, $v1
    /* 4BE84 8005D674 C0100200 */  sll        $v0, $v0, 3
    /* 4BE88 8005D678 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 4BE8C 8005D67C 2120A200 */  addu       $a0, $a1, $v0
  .L8005D680:
    /* 4BE90 8005D680 1C008010 */  beqz       $a0, .L8005D6F4
    /* 4BE94 8005D684 00000000 */   nop
    /* 4BE98 8005D688 1000A38C */  lw         $v1, 0x10($a1)
    /* 4BE9C 8005D68C 00000000 */  nop
    /* 4BEA0 8005D690 2C05628C */  lw         $v0, 0x52C($v1)
    /* 4BEA4 8005D694 3000838C */  lw         $v1, 0x30($a0)
    /* 4BEA8 8005D698 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4BEAC 8005D69C 0300422C */  sltiu      $v0, $v0, 0x3
    /* 4BEB0 8005D6A0 12004010 */  beqz       $v0, .L8005D6EC
    /* 4BEB4 8005D6A4 00000000 */   nop
    /* 4BEB8 8005D6A8 0D80023C */  lui        $v0, %hi(D_800D5F38)
    /* 4BEBC 8005D6AC 385F428C */  lw         $v0, %lo(D_800D5F38)($v0)
    /* 4BEC0 8005D6B0 00000000 */  nop
    /* 4BEC4 8005D6B4 0D004B10 */  beq        $v0, $t3, .L8005D6EC
    /* 4BEC8 8005D6B8 00000000 */   nop
    /* 4BECC 8005D6BC 0B004A10 */  beq        $v0, $t2, .L8005D6EC
    /* 4BED0 8005D6C0 00000000 */   nop
    /* 4BED4 8005D6C4 0D80023C */  lui        $v0, %hi(D_800D5F40)
    /* 4BED8 8005D6C8 405F428C */  lw         $v0, %lo(D_800D5F40)($v0)
    /* 4BEDC 8005D6CC 00000000 */  nop
    /* 4BEE0 8005D6D0 06004910 */  beq        $v0, $t1, .L8005D6EC
    /* 4BEE4 8005D6D4 00000000 */   nop
    /* 4BEE8 8005D6D8 0000E28C */  lw         $v0, 0x0($a3)
    /* 4BEEC 8005D6DC 00000000 */  nop
    /* 4BEF0 8005D6E0 0100422C */  sltiu      $v0, $v0, 0x1
    /* 4BEF4 8005D6E4 BC750108 */  j          .L8005D6F0
    /* 4BEF8 8005D6E8 F60362A0 */   sb        $v0, 0x3F6($v1)
  .L8005D6EC:
    /* 4BEFC 8005D6EC F60368A0 */  sb         $t0, 0x3F6($v1)
  .L8005D6F0:
    /* 4BF00 8005D6F0 7803458E */  lw         $a1, 0x378($s2)
  .L8005D6F4:
    /* 4BF04 8005D6F4 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4BF08 8005D6F8 0200C228 */  slti       $v0, $a2, 0x2
    /* 4BF0C 8005D6FC D0FF4014 */  bnez       $v0, .L8005D640
    /* 4BF10 8005D700 0400E724 */   addiu     $a3, $a3, 0x4
    /* 4BF14 8005D704 581FA78C */  lw         $a3, 0x1F58($a1)
    /* 4BF18 8005D708 00000000 */  nop
    /* 4BF1C 8005D70C 1800E010 */  beqz       $a3, .L8005D770
    /* 4BF20 8005D710 00000000 */   nop
    /* 4BF24 8005D714 241EA380 */  lb         $v1, 0x1E24($a1)
    /* 4BF28 8005D718 00000000 */  nop
    /* 4BF2C 8005D71C 0C006004 */  bltz       $v1, .L8005D750
    /* 4BF30 8005D720 21300000 */   addu      $a2, $zero, $zero
    /* 4BF34 8005D724 40100300 */  sll        $v0, $v1, 1
    /* 4BF38 8005D728 21104300 */  addu       $v0, $v0, $v1
    /* 4BF3C 8005D72C 80100200 */  sll        $v0, $v0, 2
    /* 4BF40 8005D730 23104300 */  subu       $v0, $v0, $v1
    /* 4BF44 8005D734 80100200 */  sll        $v0, $v0, 2
    /* 4BF48 8005D738 23104300 */  subu       $v0, $v0, $v1
    /* 4BF4C 8005D73C 80100200 */  sll        $v0, $v0, 2
    /* 4BF50 8005D740 21104300 */  addu       $v0, $v0, $v1
    /* 4BF54 8005D744 C0100200 */  sll        $v0, $v0, 3
    /* 4BF58 8005D748 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 4BF5C 8005D74C 2130A200 */  addu       $a2, $a1, $v0
  .L8005D750:
    /* 4BF60 8005D750 21204002 */  addu       $a0, $s2, $zero
    /* 4BF64 8005D754 5400E6AC */  sw         $a2, 0x54($a3)
    /* 4BF68 8005D758 7803428E */  lw         $v0, 0x378($s2)
    /* 4BF6C 8005D75C 0800C784 */  lh         $a3, 0x8($a2)
    /* 4BF70 8005D760 581F458C */  lw         $a1, 0x1F58($v0)
    /* 4BF74 8005D764 0477010C */  jal        func_8005DC10
    /* 4BF78 8005D768 02000624 */   addiu     $a2, $zero, 0x2
    /* 4BF7C 8005D76C 7803458E */  lw         $a1, 0x378($s2)
  .L8005D770:
    /* 4BF80 8005D770 00000000 */  nop
    /* 4BF84 8005D774 241EA380 */  lb         $v1, 0x1E24($a1)
    /* 4BF88 8005D778 00000000 */  nop
    /* 4BF8C 8005D77C 0C006004 */  bltz       $v1, .L8005D7B0
    /* 4BF90 8005D780 21100000 */   addu      $v0, $zero, $zero
    /* 4BF94 8005D784 40100300 */  sll        $v0, $v1, 1
    /* 4BF98 8005D788 21104300 */  addu       $v0, $v0, $v1
    /* 4BF9C 8005D78C 80100200 */  sll        $v0, $v0, 2
    /* 4BFA0 8005D790 23104300 */  subu       $v0, $v0, $v1
    /* 4BFA4 8005D794 80100200 */  sll        $v0, $v0, 2
    /* 4BFA8 8005D798 23104300 */  subu       $v0, $v0, $v1
    /* 4BFAC 8005D79C 80100200 */  sll        $v0, $v0, 2
    /* 4BFB0 8005D7A0 21104300 */  addu       $v0, $v0, $v1
    /* 4BFB4 8005D7A4 C0100200 */  sll        $v0, $v0, 3
    /* 4BFB8 8005D7A8 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 4BFBC 8005D7AC 2110A200 */  addu       $v0, $a1, $v0
  .L8005D7B0:
    /* 4BFC0 8005D7B0 21A00000 */  addu       $s4, $zero, $zero
    /* 4BFC4 8005D7B4 21980000 */  addu       $s3, $zero, $zero
    /* 4BFC8 8005D7B8 E802B124 */  addiu      $s1, $a1, 0x2E8
    /* 4BFCC 8005D7BC 44001624 */  addiu      $s6, $zero, 0x44
    /* 4BFD0 8005D7C0 3000428C */  lw         $v0, 0x30($v0)
    /* 4BFD4 8005D7C4 1803B024 */  addiu      $s0, $a1, 0x318
    /* 4BFD8 8005D7C8 A005558C */  lw         $s5, 0x5A0($v0)
  .L8005D7CC:
    /* 4BFDC 8005D7CC 0000228E */  lw         $v0, 0x0($s1)
    /* 4BFE0 8005D7D0 00000000 */  nop
    /* 4BFE4 8005D7D4 7E004230 */  andi       $v0, $v0, 0x7E
    /* 4BFE8 8005D7D8 09005614 */  bne        $v0, $s6, .L8005D800
    /* 4BFEC 8005D7DC 21284002 */   addu      $a1, $s2, $zero
    /* 4BFF0 8005D7E0 21302002 */  addu       $a2, $s1, $zero
    /* 4BFF4 8005D7E4 0000048E */  lw         $a0, 0x0($s0)
    /* 4BFF8 8005D7E8 A892010C */  jal        func_80064AA0
    /* 4BFFC 8005D7EC 21388002 */   addu      $a3, $s4, $zero
    /* 4C000 8005D7F0 0000038E */  lw         $v1, 0x0($s0)
    /* 4C004 8005D7F4 2800A28E */  lw         $v0, 0x28($s5)
    /* 4C008 8005D7F8 01009426 */  addiu      $s4, $s4, 0x1
    /* 4C00C 8005D7FC 180162AC */  sw         $v0, 0x118($v1)
  .L8005D800:
    /* 4C010 8005D800 68051026 */  addiu      $s0, $s0, 0x568
    /* 4C014 8005D804 01007326 */  addiu      $s3, $s3, 0x1
    /* 4C018 8005D808 0500622A */  slti       $v0, $s3, 0x5
    /* 4C01C 8005D80C EFFF4014 */  bnez       $v0, .L8005D7CC
    /* 4C020 8005D810 68053126 */   addiu     $s1, $s1, 0x568
    /* 4C024 8005D814 7803428E */  lw         $v0, 0x378($s2)
    /* 4C028 8005D818 00000000 */  nop
    /* 4C02C 8005D81C 581F448C */  lw         $a0, 0x1F58($v0)
    /* 4C030 8005D820 00000000 */  nop
    /* 4C034 8005D824 04008010 */  beqz       $a0, .L8005D838
    /* 4C038 8005D828 21284002 */   addu      $a1, $s2, $zero
    /* 4C03C 8005D82C 5400868C */  lw         $a2, 0x54($a0)
    /* 4C040 8005D830 A892010C */  jal        func_80064AA0
    /* 4C044 8005D834 21380000 */   addu      $a3, $zero, $zero
  .L8005D838:
    /* 4C048 8005D838 EC03448E */  lw         $a0, 0x3EC($s2)
    /* 4C04C 8005D83C AD6D000C */  jal        func_8001B6B4
    /* 4C050 8005D840 21284002 */   addu      $a1, $s2, $zero
    /* 4C054 8005D844 7400448E */  lw         $a0, 0x74($s2)
    /* 4C058 8005D848 ED5F000C */  jal        func_80017FB4
    /* 4C05C 8005D84C 21880000 */   addu      $s1, $zero, $zero
    /* 4C060 8005D850 7803438E */  lw         $v1, 0x378($s2)
    /* 4C064 8005D854 440342AE */  sw         $v0, 0x344($s2)
    /* 4C068 8005D858 E8027024 */  addiu      $s0, $v1, 0x2E8
  .L8005D85C:
    /* 4C06C 8005D85C 3000068E */  lw         $a2, 0x30($s0)
    /* 4C070 8005D860 00000000 */  nop
    /* 4C074 8005D864 0900C010 */  beqz       $a2, .L8005D88C
    /* 4C078 8005D868 00000000 */   nop
    /* 4C07C 8005D86C 7400448E */  lw         $a0, 0x74($s2)
    /* 4C080 8005D870 4403458E */  lw         $a1, 0x344($s2)
    /* 4C084 8005D874 3C5F000C */  jal        func_80017CF0
    /* 4C088 8005D878 00000000 */   nop
    /* 4C08C 8005D87C 7400448E */  lw         $a0, 0x74($s2)
    /* 4C090 8005D880 ED5F000C */  jal        func_80017FB4
    /* 4C094 8005D884 00000000 */   nop
    /* 4C098 8005D888 440342AE */  sw         $v0, 0x344($s2)
  .L8005D88C:
    /* 4C09C 8005D88C 01003126 */  addiu      $s1, $s1, 0x1
    /* 4C0A0 8005D890 0500222A */  slti       $v0, $s1, 0x5
    /* 4C0A4 8005D894 F1FF4014 */  bnez       $v0, .L8005D85C
    /* 4C0A8 8005D898 68051026 */   addiu     $s0, $s0, 0x568
    /* 4C0AC 8005D89C 7803458E */  lw         $a1, 0x378($s2)
    /* 4C0B0 8005D8A0 00000000 */  nop
    /* 4C0B4 8005D8A4 581FA68C */  lw         $a2, 0x1F58($a1)
    /* 4C0B8 8005D8A8 00000000 */  nop
    /* 4C0BC 8005D8AC 0A00C010 */  beqz       $a2, .L8005D8D8
    /* 4C0C0 8005D8B0 21800000 */   addu      $s0, $zero, $zero
    /* 4C0C4 8005D8B4 7400448E */  lw         $a0, 0x74($s2)
    /* 4C0C8 8005D8B8 4403458E */  lw         $a1, 0x344($s2)
    /* 4C0CC 8005D8BC 3C5F000C */  jal        func_80017CF0
    /* 4C0D0 8005D8C0 00000000 */   nop
    /* 4C0D4 8005D8C4 7400448E */  lw         $a0, 0x74($s2)
    /* 4C0D8 8005D8C8 ED5F000C */  jal        func_80017FB4
    /* 4C0DC 8005D8CC 00000000 */   nop
    /* 4C0E0 8005D8D0 7803458E */  lw         $a1, 0x378($s2)
    /* 4C0E4 8005D8D4 440342AE */  sw         $v0, 0x344($s2)
  .L8005D8D8:
    /* 4C0E8 8005D8D8 E802B124 */  addiu      $s1, $a1, 0x2E8
  .L8005D8DC:
    /* 4C0EC 8005D8DC 0000228E */  lw         $v0, 0x0($s1)
    /* 4C0F0 8005D8E0 00000000 */  nop
    /* 4C0F4 8005D8E4 82110200 */  srl        $v0, $v0, 6
    /* 4C0F8 8005D8E8 01004230 */  andi       $v0, $v0, 0x1
    /* 4C0FC 8005D8EC 03004010 */  beqz       $v0, .L8005D8FC
    /* 4C100 8005D8F0 21204002 */   addu      $a0, $s2, $zero
    /* 4C104 8005D8F4 3085010C */  jal        func_800614C0
    /* 4C108 8005D8F8 21280002 */   addu      $a1, $s0, $zero
  .L8005D8FC:
    /* 4C10C 8005D8FC 01001026 */  addiu      $s0, $s0, 0x1
    /* 4C110 8005D900 0500022A */  slti       $v0, $s0, 0x5
    /* 4C114 8005D904 F5FF4014 */  bnez       $v0, .L8005D8DC
    /* 4C118 8005D908 68053126 */   addiu     $s1, $s1, 0x568
    /* 4C11C 8005D90C 7803458E */  lw         $a1, 0x378($s2)
    /* 4C120 8005D910 00000000 */  nop
    /* 4C124 8005D914 581FA28C */  lw         $v0, 0x1F58($a1)
    /* 4C128 8005D918 00000000 */  nop
    /* 4C12C 8005D91C 04004010 */  beqz       $v0, .L8005D930
    /* 4C130 8005D920 21204002 */   addu      $a0, $s2, $zero
    /* 4C134 8005D924 4485010C */  jal        func_80061510
    /* 4C138 8005D928 21284000 */   addu      $a1, $v0, $zero
    /* 4C13C 8005D92C 7803458E */  lw         $a1, 0x378($s2)
  .L8005D930:
    /* 4C140 8005D930 21800000 */  addu       $s0, $zero, $zero
    /* 4C144 8005D934 E802B124 */  addiu      $s1, $a1, 0x2E8
  .L8005D938:
    /* 4C148 8005D938 21200002 */  addu       $a0, $s0, $zero
    /* 4C14C 8005D93C 09BE010C */  jal        func_8006F824
    /* 4C150 8005D940 21282002 */   addu      $a1, $s1, $zero
    /* 4C154 8005D944 01001026 */  addiu      $s0, $s0, 0x1
    /* 4C158 8005D948 0500022A */  slti       $v0, $s0, 0x5
    /* 4C15C 8005D94C FAFF4014 */  bnez       $v0, .L8005D938
    /* 4C160 8005D950 68053126 */   addiu     $s1, $s1, 0x568
    /* 4C164 8005D954 A950010C */  jal        func_800542A4
    /* 4C168 8005D958 21204002 */   addu      $a0, $s2, $zero
    /* 4C16C 8005D95C 21280000 */  addu       $a1, $zero, $zero
    /* 4C170 8005D960 42000624 */  addiu      $a2, $zero, 0x42
    /* 4C174 8005D964 7803428E */  lw         $v0, 0x378($s2)
    /* 4C178 8005D968 21200000 */  addu       $a0, $zero, $zero
    /* 4C17C 8005D96C E8024324 */  addiu      $v1, $v0, 0x2E8
  .L8005D970:
    /* 4C180 8005D970 0000628C */  lw         $v0, 0x0($v1)
    /* 4C184 8005D974 00000000 */  nop
    /* 4C188 8005D978 7E004230 */  andi       $v0, $v0, 0x7E
    /* 4C18C 8005D97C 06004614 */  bne        $v0, $a2, .L8005D998
    /* 4C190 8005D980 00000000 */   nop
    /* 4C194 8005D984 F002428E */  lw         $v0, 0x2F0($s2)
    /* 4C198 8005D988 00000000 */  nop
    /* 4C19C 8005D98C 21104400 */  addu       $v0, $v0, $a0
    /* 4C1A0 8005D990 30038424 */  addiu      $a0, $a0, 0x330
    /* 4C1A4 8005D994 280062AC */  sw         $v0, 0x28($v1)
  .L8005D998:
    /* 4C1A8 8005D998 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4C1AC 8005D99C 0500A228 */  slti       $v0, $a1, 0x5
    /* 4C1B0 8005D9A0 F3FF4014 */  bnez       $v0, .L8005D970
    /* 4C1B4 8005D9A4 68056324 */   addiu     $v1, $v1, 0x568
    /* 4C1B8 8005D9A8 01000324 */  addiu      $v1, $zero, 0x1
    /* 4C1BC 8005D9AC 70044426 */  addiu      $a0, $s2, 0x470
    /* 4C1C0 8005D9B0 FFFF0524 */  addiu      $a1, $zero, -0x1
  .L8005D9B4:
    /* 4C1C4 8005D9B4 21108300 */  addu       $v0, $a0, $v1
    /* 4C1C8 8005D9B8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 4C1CC 8005D9BC FDFF6104 */  bgez       $v1, .L8005D9B4
    /* 4C1D0 8005D9C0 000045A0 */   sb        $a1, 0x0($v0)
    /* 4C1D4 8005D9C4 9271010C */  jal        func_8005C648
    /* 4C1D8 8005D9C8 21204002 */   addu      $a0, $s2, $zero
    /* 4C1DC 8005D9CC 7803438E */  lw         $v1, 0x378($s2)
    /* 4C1E0 8005D9D0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4C1E4 8005D9D4 F40242AE */  sw         $v0, 0x2F4($s2)
    /* 4C1E8 8005D9D8 1000648C */  lw         $a0, 0x10($v1)
    /* 4C1EC 8005D9DC 0D80053C */  lui        $a1, %hi(D_800C886C)
    /* 4C1F0 8005D9E0 6C88A58C */  lw         $a1, %lo(D_800C886C)($a1)
    /* 4C1F4 8005D9E4 34058290 */  lbu        $v0, 0x534($a0)
    /* 4C1F8 8005D9E8 00000000 */  nop
    /* 4C1FC 8005D9EC 6C01A2A0 */  sb         $v0, 0x16C($a1)
    /* 4C200 8005D9F0 7803438E */  lw         $v1, 0x378($s2)
    /* 4C204 8005D9F4 00000000 */  nop
    /* 4C208 8005D9F8 1000648C */  lw         $a0, 0x10($v1)
    /* 4C20C 8005D9FC 00000000 */  nop
    /* 4C210 8005DA00 35058690 */  lbu        $a2, 0x535($a0)
    /* 4C214 8005DA04 6C01A724 */  addiu      $a3, $a1, 0x16C
    /* 4C218 8005DA08 0100E6A0 */  sb         $a2, 0x1($a3)
    /* 4C21C 8005DA0C 7803428E */  lw         $v0, 0x378($s2)
    /* 4C220 8005DA10 00000000 */  nop
    /* 4C224 8005DA14 1000438C */  lw         $v1, 0x10($v0)
    /* 4C228 8005DA18 00000000 */  nop
    /* 4C22C 8005DA1C 36056490 */  lbu        $a0, 0x536($v1)
    /* 4C230 8005DA20 00000000 */  nop
    /* 4C234 8005DA24 0200E4A0 */  sb         $a0, 0x2($a3)
    /* 4C238 8005DA28 6C01A690 */  lbu        $a2, 0x16C($a1)
    /* 4C23C 8005DA2C 00000000 */  nop
    /* 4C240 8005DA30 8500A6A0 */  sb         $a2, 0x85($a1)
    /* 4C244 8005DA34 0100E290 */  lbu        $v0, 0x1($a3)
    /* 4C248 8005DA38 00000000 */  nop
    /* 4C24C 8005DA3C 8600A2A0 */  sb         $v0, 0x86($a1)
    /* 4C250 8005DA40 0200E390 */  lbu        $v1, 0x2($a3)
    /* 4C254 8005DA44 E100A6A0 */  sb         $a2, 0xE1($a1)
    /* 4C258 8005DA48 8700A3A0 */  sb         $v1, 0x87($a1)
    /* 4C25C 8005DA4C 0100E290 */  lbu        $v0, 0x1($a3)
    /* 4C260 8005DA50 00000000 */  nop
    /* 4C264 8005DA54 E200A2A0 */  sb         $v0, 0xE2($a1)
    /* 4C268 8005DA58 0200E390 */  lbu        $v1, 0x2($a3)
    /* 4C26C 8005DA5C 00000000 */  nop
    /* 4C270 8005DA60 E300A3A0 */  sb         $v1, 0xE3($a1)
    /* 4C274 8005DA64 7803428E */  lw         $v0, 0x378($s2)
    /* 4C278 8005DA68 21880000 */  addu       $s1, $zero, $zero
    /* 4C27C 8005DA6C E8025024 */  addiu      $s0, $v0, 0x2E8
  .L8005DA70:
    /* 4C280 8005DA70 21200002 */  addu       $a0, $s0, $zero
    /* 4C284 8005DA74 1844010C */  jal        func_80051060
    /* 4C288 8005DA78 21284002 */   addu      $a1, $s2, $zero
    /* 4C28C 8005DA7C 01003126 */  addiu      $s1, $s1, 0x1
    /* 4C290 8005DA80 0500222A */  slti       $v0, $s1, 0x5
    /* 4C294 8005DA84 FAFF4014 */  bnez       $v0, .L8005DA70
    /* 4C298 8005DA88 68051026 */   addiu     $s0, $s0, 0x568
    /* 4C29C 8005DA8C 3054010C */  jal        func_800550C0
    /* 4C2A0 8005DA90 21204002 */   addu      $a0, $s2, $zero
    /* 4C2A4 8005DA94 8404448E */  lw         $a0, 0x484($s2)
    /* 4C2A8 8005DA98 00000000 */  nop
    /* 4C2AC 8005DA9C 03008010 */  beqz       $a0, .L8005DAAC
    /* 4C2B0 8005DAA0 14000524 */   addiu     $a1, $zero, 0x14
    /* 4C2B4 8005DAA4 941A020C */  jal        func_80086A50
    /* 4C2B8 8005DAA8 96000624 */   addiu     $a2, $zero, 0x96
  .L8005DAAC:
    /* 4C2BC 8005DAAC 0C80013C */  lui        $at, %hi(D_800C5E14)
    /* 4C2C0 8005DAB0 145E20AC */  sw         $zero, %lo(D_800C5E14)($at)
    /* 4C2C4 8005DAB4 357C010C */  jal        func_8005F0D4
    /* 4C2C8 8005DAB8 21204002 */   addu      $a0, $s2, $zero
    /* 4C2CC 8005DABC DAB7010C */  jal        func_8006DF68
    /* 4C2D0 8005DAC0 00000000 */   nop
    /* 4C2D4 8005DAC4 2110E002 */  addu       $v0, $s7, $zero
    /* 4C2D8 8005DAC8 4000BF8F */  lw         $ra, 0x40($sp)
    /* 4C2DC 8005DACC 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 4C2E0 8005DAD0 3800B68F */  lw         $s6, 0x38($sp)
    /* 4C2E4 8005DAD4 3400B58F */  lw         $s5, 0x34($sp)
    /* 4C2E8 8005DAD8 3000B48F */  lw         $s4, 0x30($sp)
    /* 4C2EC 8005DADC 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 4C2F0 8005DAE0 2800B28F */  lw         $s2, 0x28($sp)
    /* 4C2F4 8005DAE4 2400B18F */  lw         $s1, 0x24($sp)
    /* 4C2F8 8005DAE8 2000B08F */  lw         $s0, 0x20($sp)
    /* 4C2FC 8005DAEC 0800E003 */  jr         $ra
    /* 4C300 8005DAF0 4800BD27 */   addiu     $sp, $sp, 0x48
endlabel func_8005D15C
