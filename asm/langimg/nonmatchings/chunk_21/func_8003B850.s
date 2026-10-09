nonmatching func_8003B850, 0x50C

glabel func_8003B850
    /* 2A060 8003B850 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 2A064 8003B854 7000B4AF */  sw         $s4, 0x70($sp)
    /* 2A068 8003B858 21A08000 */  addu       $s4, $a0, $zero
    /* 2A06C 8003B85C 8400BFAF */  sw         $ra, 0x84($sp)
    /* 2A070 8003B860 8000BEAF */  sw         $fp, 0x80($sp)
    /* 2A074 8003B864 7C00B7AF */  sw         $s7, 0x7C($sp)
    /* 2A078 8003B868 7800B6AF */  sw         $s6, 0x78($sp)
    /* 2A07C 8003B86C 7400B5AF */  sw         $s5, 0x74($sp)
    /* 2A080 8003B870 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* 2A084 8003B874 6800B2AF */  sw         $s2, 0x68($sp)
    /* 2A088 8003B878 6400B1AF */  sw         $s1, 0x64($sp)
    /* 2A08C 8003B87C 6000B0AF */  sw         $s0, 0x60($sp)
    /* 2A090 8003B880 940A828E */  lw         $v0, 0xA94($s4)
    /* 2A094 8003B884 00000000 */  nop
    /* 2A098 8003B888 10004230 */  andi       $v0, $v0, 0x10
    /* 2A09C 8003B88C 27014014 */  bnez       $v0, .L8003BD2C
    /* 2A0A0 8003B890 00000000 */   nop
    /* 2A0A4 8003B894 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 2A0A8 8003B898 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 2A0AC 8003B89C F1E3010C */  jal        func_80078FC4
    /* 2A0B0 8003B8A0 00000000 */   nop
    /* 2A0B4 8003B8A4 21F04000 */  addu       $fp, $v0, $zero
    /* 2A0B8 8003B8A8 0D01C013 */  beqz       $fp, .L8003BCE0
    /* 2A0BC 8003B8AC 00000000 */   nop
    /* 2A0C0 8003B8B0 0D80063C */  lui        $a2, %hi(D_800C886C)
    /* 2A0C4 8003B8B4 6C88C68C */  lw         $a2, %lo(D_800C886C)($a2)
    /* 2A0C8 8003B8B8 00000000 */  nop
    /* 2A0CC 8003B8BC 6800C38C */  lw         $v1, 0x68($a2)
    /* 2A0D0 8003B8C0 0800858E */  lw         $a1, 0x8($s4)
    /* 2A0D4 8003B8C4 70006484 */  lh         $a0, 0x70($v1)
    /* 2A0D8 8003B8C8 7400628C */  lw         $v0, 0x74($v1)
    /* 2A0DC 8003B8CC 00000000 */  nop
    /* 2A0E0 8003B8D0 09F84000 */  jalr       $v0
    /* 2A0E4 8003B8D4 2120C400 */   addu      $a0, $a2, $a0
    /* 2A0E8 8003B8D8 21904000 */  addu       $s2, $v0, $zero
    /* 2A0EC 8003B8DC 01000324 */  addiu      $v1, $zero, 0x1
    /* 2A0F0 8003B8E0 900A848E */  lw         $a0, 0xA90($s4)
    /* 2A0F4 8003B8E4 9C00518E */  lw         $s1, 0x9C($s2)
    /* 2A0F8 8003B8E8 03008310 */  beq        $a0, $v1, .L8003B8F8
    /* 2A0FC 8003B8EC 04000224 */   addiu     $v0, $zero, 0x4
    /* 2A100 8003B8F0 04008214 */  bne        $a0, $v0, .L8003B904
    /* 2A104 8003B8F4 00000000 */   nop
  .L8003B8F8:
    /* 2A108 8003B8F8 840A958E */  lw         $s5, 0xA84($s4)
    /* 2A10C 8003B8FC 42EE0008 */  j          .L8003B908
    /* 2A110 8003B900 00000000 */   nop
  .L8003B904:
    /* 2A114 8003B904 800A958E */  lw         $s5, 0xA80($s4)
  .L8003B908:
    /* 2A118 8003B908 00000000 */  nop
    /* 2A11C 8003B90C F400A012 */  beqz       $s5, .L8003BCE0
    /* 2A120 8003B910 00000000 */   nop
    /* 2A124 8003B914 F2002012 */  beqz       $s1, .L8003BCE0
    /* 2A128 8003B918 0C80053C */   lui       $a1, %hi(D_800C4D8C)
    /* 2A12C 8003B91C 8C4DA524 */  addiu      $a1, $a1, %lo(D_800C4D8C)
    /* 2A130 8003B920 3800A48E */  lw         $a0, 0x38($s5)
    /* 2A134 8003B924 845F000C */  jal        func_80017E10
    /* 2A138 8003B928 09000624 */   addiu     $a2, $zero, 0x9
    /* 2A13C 8003B92C A0004526 */  addiu      $a1, $s2, 0xA0
    /* 2A140 8003B930 3800848E */  lw         $a0, 0x38($s4)
    /* 2A144 8003B934 7174000C */  jal        func_8001D1C4
    /* 2A148 8003B938 21804000 */   addu      $s0, $v0, $zero
    /* 2A14C 8003B93C 21980002 */  addu       $s3, $s0, $zero
    /* 2A150 8003B940 5400068E */  lw         $a2, 0x54($s0)
    /* 2A154 8003B944 0C00848E */  lw         $a0, 0xC($s4)
    /* 2A158 8003B948 80100600 */  sll        $v0, $a2, 2
    /* 2A15C 8003B94C 21104600 */  addu       $v0, $v0, $a2
    /* 2A160 8003B950 80190200 */  sll        $v1, $v0, 6
    /* 2A164 8003B954 21104300 */  addu       $v0, $v0, $v1
    /* 2A168 8003B958 21104600 */  addu       $v0, $v0, $a2
    /* 2A16C 8003B95C 02004104 */  bgez       $v0, .L8003B968
    /* 2A170 8003B960 002B0400 */   sll       $a1, $a0, 12
    /* 2A174 8003B964 FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .L8003B968:
    /* 2A178 8003B968 03330200 */  sra        $a2, $v0, 12
    /* 2A17C 8003B96C 3800848E */  lw         $a0, 0x38($s4)
    /* 2A180 8003B970 00080724 */  addiu      $a3, $zero, 0x800
    /* 2A184 8003B974 8F74000C */  jal        func_8001D23C
    /* 2A188 8003B978 1000A0AF */   sw        $zero, 0x10($sp)
    /* 2A18C 8003B97C E157020C */  jal        func_80095F84
    /* 2A190 8003B980 21204002 */   addu      $a0, $s2, $zero
    /* 2A194 8003B984 3400028E */  lw         $v0, 0x34($s0)
    /* 2A198 8003B988 00000000 */  nop
    /* 2A19C 8003B98C 1F004010 */  beqz       $v0, .L8003BA0C
    /* 2A1A0 8003B990 00000000 */   nop
    /* 2A1A4 8003B994 0000488C */  lw         $t0, 0x0($v0)
    /* 2A1A8 8003B998 0400498C */  lw         $t1, 0x4($v0)
    /* 2A1AC 8003B99C 08004A8C */  lw         $t2, 0x8($v0)
    /* 2A1B0 8003B9A0 0C004B8C */  lw         $t3, 0xC($v0)
    /* 2A1B4 8003B9A4 000028AE */  sw         $t0, 0x0($s1)
    /* 2A1B8 8003B9A8 040029AE */  sw         $t1, 0x4($s1)
    /* 2A1BC 8003B9AC 08002AAE */  sw         $t2, 0x8($s1)
    /* 2A1C0 8003B9B0 0C002BAE */  sw         $t3, 0xC($s1)
    /* 2A1C4 8003B9B4 1000488C */  lw         $t0, 0x10($v0)
    /* 2A1C8 8003B9B8 1400498C */  lw         $t1, 0x14($v0)
    /* 2A1CC 8003B9BC 18004A8C */  lw         $t2, 0x18($v0)
    /* 2A1D0 8003B9C0 1C004B8C */  lw         $t3, 0x1C($v0)
    /* 2A1D4 8003B9C4 100028AE */  sw         $t0, 0x10($s1)
    /* 2A1D8 8003B9C8 140029AE */  sw         $t1, 0x14($s1)
    /* 2A1DC 8003B9CC 18002AAE */  sw         $t2, 0x18($s1)
    /* 2A1E0 8003B9D0 1C002BAE */  sw         $t3, 0x1C($s1)
    /* 2A1E4 8003B9D4 3400028E */  lw         $v0, 0x34($s0)
    /* 2A1E8 8003B9D8 00000000 */  nop
    /* 2A1EC 8003B9DC 1400458C */  lw         $a1, 0x14($v0)
    /* 2A1F0 8003B9E0 1800438C */  lw         $v1, 0x18($v0)
    /* 2A1F4 8003B9E4 1C00448C */  lw         $a0, 0x1C($v0)
    /* 2A1F8 8003B9E8 1800A227 */  addiu      $v0, $sp, 0x18
    /* 2A1FC 8003B9EC 1800A5AF */  sw         $a1, 0x18($sp)
    /* 2A200 8003B9F0 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 2A204 8003B9F4 2000A4AF */  sw         $a0, 0x20($sp)
    /* 2A208 8003B9F8 0400438C */  lw         $v1, 0x4($v0)
    /* 2A20C 8003B9FC 0800448C */  lw         $a0, 0x8($v0)
    /* 2A210 8003BA00 F8003026 */  addiu      $s0, $s1, 0xF8
    /* 2A214 8003BA04 94EE0008 */  j          .L8003BA50
    /* 2A218 8003BA08 F80025AE */   sw        $a1, 0xF8($s1)
  .L8003BA0C:
    /* 2A21C 8003BA0C 21206002 */  addu       $a0, $s3, $zero
    /* 2A220 8003BA10 FE59000C */  jal        func_800167F8
    /* 2A224 8003BA14 1800A527 */   addiu     $a1, $sp, 0x18
    /* 2A228 8003BA18 21202002 */  addu       $a0, $s1, $zero
    /* 2A22C 8003BA1C DA5F020C */  jal        func_80097F68
    /* 2A230 8003BA20 1800A527 */   addiu     $a1, $sp, 0x18
    /* 2A234 8003BA24 0800688E */  lw         $t0, 0x8($s3)
    /* 2A238 8003BA28 0C00698E */  lw         $t1, 0xC($s3)
    /* 2A23C 8003BA2C 10006A8E */  lw         $t2, 0x10($s3)
    /* 2A240 8003BA30 2800A8AF */  sw         $t0, 0x28($sp)
    /* 2A244 8003BA34 2C00A9AF */  sw         $t1, 0x2C($sp)
    /* 2A248 8003BA38 3000AAAF */  sw         $t2, 0x30($sp)
    /* 2A24C 8003BA3C 2800A28F */  lw         $v0, 0x28($sp)
    /* 2A250 8003BA40 2C00A38F */  lw         $v1, 0x2C($sp)
    /* 2A254 8003BA44 3000A48F */  lw         $a0, 0x30($sp)
    /* 2A258 8003BA48 F8003026 */  addiu      $s0, $s1, 0xF8
    /* 2A25C 8003BA4C F80022AE */  sw         $v0, 0xF8($s1)
  .L8003BA50:
    /* 2A260 8003BA50 040003AE */  sw         $v1, 0x4($s0)
    /* 2A264 8003BA54 080004AE */  sw         $a0, 0x8($s0)
    /* 2A268 8003BA58 5FE1010C */  jal        func_8007857C
    /* 2A26C 8003BA5C 21202002 */   addu      $a0, $s1, $zero
    /* 2A270 8003BA60 36E2010C */  jal        func_800788D8
    /* 2A274 8003BA64 21202002 */   addu      $a0, $s1, $zero
    /* 2A278 8003BA68 3800848E */  lw         $a0, 0x38($s4)
    /* 2A27C 8003BA6C 2000288E */  lw         $t0, 0x20($s1)
    /* 2A280 8003BA70 2400298E */  lw         $t1, 0x24($s1)
    /* 2A284 8003BA74 28002A8E */  lw         $t2, 0x28($s1)
    /* 2A288 8003BA78 2C002B8E */  lw         $t3, 0x2C($s1)
    /* 2A28C 8003BA7C 3800A8AF */  sw         $t0, 0x38($sp)
    /* 2A290 8003BA80 3C00A9AF */  sw         $t1, 0x3C($sp)
    /* 2A294 8003BA84 4000AAAF */  sw         $t2, 0x40($sp)
    /* 2A298 8003BA88 4400ABAF */  sw         $t3, 0x44($sp)
    /* 2A29C 8003BA8C 3000288E */  lw         $t0, 0x30($s1)
    /* 2A2A0 8003BA90 3400298E */  lw         $t1, 0x34($s1)
    /* 2A2A4 8003BA94 38002A8E */  lw         $t2, 0x38($s1)
    /* 2A2A8 8003BA98 3C002B8E */  lw         $t3, 0x3C($s1)
    /* 2A2AC 8003BA9C 4800A8AF */  sw         $t0, 0x48($sp)
    /* 2A2B0 8003BAA0 4C00A9AF */  sw         $t1, 0x4C($sp)
    /* 2A2B4 8003BAA4 5000AAAF */  sw         $t2, 0x50($sp)
    /* 2A2B8 8003BAA8 5400ABAF */  sw         $t3, 0x54($sp)
    /* 2A2BC 8003BAAC F800228E */  lw         $v0, 0xF8($s1)
    /* 2A2C0 8003BAB0 0400038E */  lw         $v1, 0x4($s0)
    /* 2A2C4 8003BAB4 0800068E */  lw         $a2, 0x8($s0)
    /* 2A2C8 8003BAB8 3800A527 */  addiu      $a1, $sp, 0x38
    /* 2A2CC 8003BABC 4C00A2AF */  sw         $v0, 0x4C($sp)
    /* 2A2D0 8003BAC0 5000A3AF */  sw         $v1, 0x50($sp)
    /* 2A2D4 8003BAC4 9176000C */  jal        func_8001DA44
    /* 2A2D8 8003BAC8 5400A6AF */   sw        $a2, 0x54($sp)
    /* 2A2DC 8003BACC 6800A28E */  lw         $v0, 0x68($s5)
    /* 2A2E0 8003BAD0 00000000 */  nop
    /* 2A2E4 8003BAD4 03004010 */  beqz       $v0, .L8003BAE4
    /* 2A2E8 8003BAD8 00000000 */   nop
    /* 2A2EC 8003BADC 09F84000 */  jalr       $v0
    /* 2A2F0 8003BAE0 21208002 */   addu      $a0, $s4, $zero
  .L8003BAE4:
    /* 2A2F4 8003BAE4 0D80063C */  lui        $a2, %hi(D_800C886C)
    /* 2A2F8 8003BAE8 6C88C68C */  lw         $a2, %lo(D_800C886C)($a2)
    /* 2A2FC 8003BAEC 00000000 */  nop
    /* 2A300 8003BAF0 6800C38C */  lw         $v1, 0x68($a2)
    /* 2A304 8003BAF4 0800858E */  lw         $a1, 0x8($s4)
    /* 2A308 8003BAF8 70006484 */  lh         $a0, 0x70($v1)
    /* 2A30C 8003BAFC 7400628C */  lw         $v0, 0x74($v1)
    /* 2A310 8003BB00 00000000 */  nop
    /* 2A314 8003BB04 09F84000 */  jalr       $v0
    /* 2A318 8003BB08 2120C400 */   addu      $a0, $a2, $a0
    /* 2A31C 8003BB0C 2C00A38E */  lw         $v1, 0x2C($s5)
    /* 2A320 8003BB10 3800B38E */  lw         $s3, 0x38($s5)
    /* 2A324 8003BB14 80190300 */  sll        $v1, $v1, 6
    /* 2A328 8003BB18 831F0300 */  sra        $v1, $v1, 30
    /* 2A32C 8003BB1C 13006010 */  beqz       $v1, .L8003BB6C
    /* 2A330 8003BB20 00000000 */   nop
    /* 2A334 8003BB24 0800708E */  lw         $s0, 0x8($s3)
    /* 2A338 8003BB28 0000718E */  lw         $s1, 0x0($s3)
    /* 2A33C 8003BB2C 0F00001A */  blez       $s0, .L8003BB6C
    /* 2A340 8003BB30 00000000 */   nop
  .L8003BB34:
    /* 2A344 8003BB34 0000248E */  lw         $a0, 0x0($s1)
    /* 2A348 8003BB38 00000000 */  nop
    /* 2A34C 8003BB3C 08008010 */  beqz       $a0, .L8003BB60
    /* 2A350 8003BB40 00000000 */   nop
    /* 2A354 8003BB44 0400828C */  lw         $v0, 0x4($a0)
    /* 2A358 8003BB48 00000000 */  nop
    /* 2A35C 8003BB4C 41004230 */  andi       $v0, $v0, 0x41
    /* 2A360 8003BB50 03004010 */  beqz       $v0, .L8003BB60
    /* 2A364 8003BB54 00000000 */   nop
    /* 2A368 8003BB58 3965000C */  jal        func_800194E4
    /* 2A36C 8003BB5C 00000000 */   nop
  .L8003BB60:
    /* 2A370 8003BB60 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 2A374 8003BB64 F3FF0016 */  bnez       $s0, .L8003BB34
    /* 2A378 8003BB68 04003126 */   addiu     $s1, $s1, 0x4
  .L8003BB6C:
    /* 2A37C 8003BB6C 800A828E */  lw         $v0, 0xA80($s4)
    /* 2A380 8003BB70 00000000 */  nop
    /* 2A384 8003BB74 2800438C */  lw         $v1, 0x28($v0)
    /* 2A388 8003BB78 00000000 */  nop
    /* 2A38C 8003BB7C 32006004 */  bltz       $v1, .L8003BC48
    /* 2A390 8003BB80 21206002 */   addu      $a0, $s3, $zero
    /* 2A394 8003BB84 0800718E */  lw         $s1, 0x8($s3)
    /* 2A398 8003BB88 0000728E */  lw         $s2, 0x0($s3)
    /* 2A39C 8003BB8C 3500201A */  blez       $s1, .L8003BC64
    /* 2A3A0 8003BB90 5800B627 */   addiu     $s6, $sp, 0x58
    /* 2A3A4 8003BB94 EFFF1724 */  addiu      $s7, $zero, -0x11
  .L8003BB98:
    /* 2A3A8 8003BB98 0000508E */  lw         $s0, 0x0($s2)
    /* 2A3AC 8003BB9C 00000000 */  nop
    /* 2A3B0 8003BBA0 24000012 */  beqz       $s0, .L8003BC34
    /* 2A3B4 8003BBA4 00000000 */   nop
    /* 2A3B8 8003BBA8 0400028E */  lw         $v0, 0x4($s0)
    /* 2A3BC 8003BBAC 00000000 */  nop
    /* 2A3C0 8003BBB0 01004238 */  xori       $v0, $v0, 0x1
    /* 2A3C4 8003BBB4 01004230 */  andi       $v0, $v0, 0x1
    /* 2A3C8 8003BBB8 1E004010 */  beqz       $v0, .L8003BC34
    /* 2A3CC 8003BBBC 00000000 */   nop
    /* 2A3D0 8003BBC0 525E000C */  jal        func_80017948
    /* 2A3D4 8003BBC4 21200002 */   addu      $a0, $s0, $zero
    /* 2A3D8 8003BBC8 1A004010 */  beqz       $v0, .L8003BC34
    /* 2A3DC 8003BBCC 00000000 */   nop
    /* 2A3E0 8003BBD0 0400428C */  lw         $v0, 0x4($v0)
    /* 2A3E4 8003BBD4 00000000 */  nop
    /* 2A3E8 8003BBD8 12004010 */  beqz       $v0, .L8003BC24
    /* 2A3EC 8003BBDC 1800A527 */   addiu     $a1, $sp, 0x18
    /* 2A3F0 8003BBE0 3800848E */  lw         $a0, 0x38($s4)
    /* 2A3F4 8003BBE4 0800088E */  lw         $t0, 0x8($s0)
    /* 2A3F8 8003BBE8 0C00098E */  lw         $t1, 0xC($s0)
    /* 2A3FC 8003BBEC 10000A8E */  lw         $t2, 0x10($s0)
    /* 2A400 8003BBF0 1800A8AF */  sw         $t0, 0x18($sp)
    /* 2A404 8003BBF4 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* 2A408 8003BBF8 2000AAAF */  sw         $t2, 0x20($sp)
    /* 2A40C 8003BBFC 1000B6AF */  sw         $s6, 0x10($sp)
    /* 2A410 8003BC00 0C00878E */  lw         $a3, 0xC($s4)
    /* 2A414 8003BC04 1400468C */  lw         $a2, 0x14($v0)
    /* 2A418 8003BC08 C477000C */  jal        func_8001DF10
    /* 2A41C 8003BC0C 003B0700 */   sll       $a3, $a3, 12
    /* 2A420 8003BC10 04004014 */  bnez       $v0, .L8003BC24
    /* 2A424 8003BC14 00000000 */   nop
    /* 2A428 8003BC18 0400028E */  lw         $v0, 0x4($s0)
    /* 2A42C 8003BC1C 0CEF0008 */  j          .L8003BC30
    /* 2A430 8003BC20 24105700 */   and       $v0, $v0, $s7
  .L8003BC24:
    /* 2A434 8003BC24 0400028E */  lw         $v0, 0x4($s0)
    /* 2A438 8003BC28 00000000 */  nop
    /* 2A43C 8003BC2C 10004234 */  ori        $v0, $v0, 0x10
  .L8003BC30:
    /* 2A440 8003BC30 040002AE */  sw         $v0, 0x4($s0)
  .L8003BC34:
    /* 2A444 8003BC34 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 2A448 8003BC38 D7FF2016 */  bnez       $s1, .L8003BB98
    /* 2A44C 8003BC3C 04005226 */   addiu     $s2, $s2, 0x4
    /* 2A450 8003BC40 19EF0008 */  j          .L8003BC64
    /* 2A454 8003BC44 21206002 */   addu      $a0, $s3, $zero
  .L8003BC48:
    /* 2A458 8003BC48 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 2A45C 8003BC4C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2A460 8003BC50 10000524 */  addiu      $a1, $zero, 0x10
    /* 2A464 8003BC54 21300000 */  addu       $a2, $zero, $zero
    /* 2A468 8003BC58 7C61000C */  jal        func_800185F0
    /* 2A46C 8003BC5C 21380000 */   addu      $a3, $zero, $zero
    /* 2A470 8003BC60 21206002 */  addu       $a0, $s3, $zero
  .L8003BC64:
    /* 2A474 8003BC64 0800868C */  lw         $a2, 0x8($a0)
    /* 2A478 8003BC68 FA5D000C */  jal        func_800177E8
    /* 2A47C 8003BC6C 21280000 */   addu      $a1, $zero, $zero
    /* 2A480 8003BC70 6C00A28E */  lw         $v0, 0x6C($s5)
    /* 2A484 8003BC74 00000000 */  nop
    /* 2A488 8003BC78 03004010 */  beqz       $v0, .L8003BC88
    /* 2A48C 8003BC7C 00000000 */   nop
    /* 2A490 8003BC80 09F84000 */  jalr       $v0
    /* 2A494 8003BC84 21208002 */   addu      $a0, $s4, $zero
  .L8003BC88:
    /* 2A498 8003BC88 6000848E */  lw         $a0, 0x60($s4)
    /* 2A49C 8003BC8C 00000000 */  nop
    /* 2A4A0 8003BC90 13008010 */  beqz       $a0, .L8003BCE0
    /* 2A4A4 8003BC94 00000000 */   nop
    /* 2A4A8 8003BC98 9806828F */  lw         $v0, %gp_rel(D_800C4D88)($gp)
    /* 2A4AC 8003BC9C 00000000 */  nop
    /* 2A4B0 8003BCA0 0F004010 */  beqz       $v0, .L8003BCE0
    /* 2A4B4 8003BCA4 00000000 */   nop
    /* 2A4B8 8003BCA8 0800828C */  lw         $v0, 0x8($a0)
    /* 2A4BC 8003BCAC 00000000 */  nop
    /* 2A4C0 8003BCB0 0B004010 */  beqz       $v0, .L8003BCE0
    /* 2A4C4 8003BCB4 10000524 */   addiu     $a1, $zero, 0x10
    /* 2A4C8 8003BCB8 21300000 */  addu       $a2, $zero, $zero
    /* 2A4CC 8003BCBC 21380000 */  addu       $a3, $zero, $zero
    /* 2A4D0 8003BCC0 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 2A4D4 8003BCC4 7C61000C */  jal        func_800185F0
    /* 2A4D8 8003BCC8 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2A4DC 8003BCCC 6000848E */  lw         $a0, 0x60($s4)
    /* 2A4E0 8003BCD0 00000000 */  nop
    /* 2A4E4 8003BCD4 0800868C */  lw         $a2, 0x8($a0)
    /* 2A4E8 8003BCD8 FA5D000C */  jal        func_800177E8
    /* 2A4EC 8003BCDC 21280000 */   addu      $a1, $zero, $zero
  .L8003BCE0:
    /* 2A4F0 8003BCE0 2132020C */  jal        func_8008C884
    /* 2A4F4 8003BCE4 D8008426 */   addiu     $a0, $s4, 0xD8
    /* 2A4F8 8003BCE8 6800C38F */  lw         $v1, 0x68($fp)
    /* 2A4FC 8003BCEC 21280000 */  addu       $a1, $zero, $zero
    /* 2A500 8003BCF0 70006484 */  lh         $a0, 0x70($v1)
    /* 2A504 8003BCF4 7400628C */  lw         $v0, 0x74($v1)
    /* 2A508 8003BCF8 00000000 */  nop
    /* 2A50C 8003BCFC 09F84000 */  jalr       $v0
    /* 2A510 8003BD00 2120C403 */   addu      $a0, $fp, $a0
    /* 2A514 8003BD04 BFF9000C */  jal        func_8003E6FC
    /* 2A518 8003BD08 21208002 */   addu      $a0, $s4, $zero
    /* 2A51C 8003BD0C 0C80023C */  lui        $v0, %hi(D_800C4988)
    /* 2A520 8003BD10 8849428C */  lw         $v0, %lo(D_800C4988)($v0)
    /* 2A524 8003BD14 0D80033C */  lui        $v1, %hi(D_800D6128)
    /* 2A528 8003BD18 2861638C */  lw         $v1, %lo(D_800D6128)($v1)
    /* 2A52C 8003BD1C 00000000 */  nop
    /* 2A530 8003BD20 21104300 */  addu       $v0, $v0, $v1
    /* 2A534 8003BD24 0C80013C */  lui        $at, %hi(D_800C4988)
    /* 2A538 8003BD28 884922AC */  sw         $v0, %lo(D_800C4988)($at)
  .L8003BD2C:
    /* 2A53C 8003BD2C 8400BF8F */  lw         $ra, 0x84($sp)
    /* 2A540 8003BD30 8000BE8F */  lw         $fp, 0x80($sp)
    /* 2A544 8003BD34 7C00B78F */  lw         $s7, 0x7C($sp)
    /* 2A548 8003BD38 7800B68F */  lw         $s6, 0x78($sp)
    /* 2A54C 8003BD3C 7400B58F */  lw         $s5, 0x74($sp)
    /* 2A550 8003BD40 7000B48F */  lw         $s4, 0x70($sp)
    /* 2A554 8003BD44 6C00B38F */  lw         $s3, 0x6C($sp)
    /* 2A558 8003BD48 6800B28F */  lw         $s2, 0x68($sp)
    /* 2A55C 8003BD4C 6400B18F */  lw         $s1, 0x64($sp)
    /* 2A560 8003BD50 6000B08F */  lw         $s0, 0x60($sp)
    /* 2A564 8003BD54 0800E003 */  jr         $ra
    /* 2A568 8003BD58 8800BD27 */   addiu     $sp, $sp, 0x88
endlabel func_8003B850
