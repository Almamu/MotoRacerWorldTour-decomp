nonmatching func_8005B8D0, 0x274

glabel func_8005B8D0
    /* 4A0E0 8005B8D0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 4A0E4 8005B8D4 3400B5AF */  sw         $s5, 0x34($sp)
    /* 4A0E8 8005B8D8 21A88000 */  addu       $s5, $a0, $zero
    /* 4A0EC 8005B8DC 2000B0AF */  sw         $s0, 0x20($sp)
    /* 4A0F0 8005B8E0 2180A000 */  addu       $s0, $a1, $zero
    /* 4A0F4 8005B8E4 3800B6AF */  sw         $s6, 0x38($sp)
    /* 4A0F8 8005B8E8 21B0C000 */  addu       $s6, $a2, $zero
    /* 4A0FC 8005B8EC 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 4A100 8005B8F0 3000B4AF */  sw         $s4, 0x30($sp)
    /* 4A104 8005B8F4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 4A108 8005B8F8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 4A10C 8005B8FC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4A110 8005B900 0000028E */  lw         $v0, 0x0($s0)
    /* 4A114 8005B904 00000000 */  nop
    /* 4A118 8005B908 82110200 */  srl        $v0, $v0, 6
    /* 4A11C 8005B90C 01004230 */  andi       $v0, $v0, 0x1
    /* 4A120 8005B910 06004014 */  bnez       $v0, .L8005B92C
    /* 4A124 8005B914 2188E000 */   addu      $s1, $a3, $zero
    /* 4A128 8005B918 21200002 */  addu       $a0, $s0, $zero
    /* 4A12C 8005B91C 2344010C */  jal        func_8005108C
    /* 4A130 8005B920 21280000 */   addu      $a1, $zero, $zero
    /* 4A134 8005B924 C76E0108 */  j          .L8005BB1C
    /* 4A138 8005B928 00000000 */   nop
  .L8005B92C:
    /* 4A13C 8005B92C 2544010C */  jal        func_80051094
    /* 4A140 8005B930 21200002 */   addu      $a0, $s0, $zero
    /* 4A144 8005B934 21200002 */  addu       $a0, $s0, $zero
    /* 4A148 8005B938 2344010C */  jal        func_8005108C
    /* 4A14C 8005B93C 01000524 */   addiu     $a1, $zero, 0x1
    /* 4A150 8005B940 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 4A154 8005B944 0000028E */  lw         $v0, 0x0($s0)
    /* 4A158 8005B948 7FFF0324 */  addiu      $v1, $zero, -0x81
    /* 4A15C 8005B94C 040005AE */  sw         $a1, 0x4($s0)
    /* 4A160 8005B950 400005A2 */  sb         $a1, 0x40($s0)
    /* 4A164 8005B954 24104300 */  and        $v0, $v0, $v1
    /* 4A168 8005B958 000002AE */  sw         $v0, 0x0($s0)
    /* 4A16C 8005B95C 7803A48E */  lw         $a0, 0x378($s5)
    /* 4A170 8005B960 00000000 */  nop
    /* 4A174 8005B964 441F8390 */  lbu        $v1, 0x1F44($a0)
    /* 4A178 8005B968 FDFF0224 */  addiu      $v0, $zero, -0x3
    /* 4A17C 8005B96C 100002AE */  sw         $v0, 0x10($s0)
    /* 4A180 8005B970 140005AE */  sw         $a1, 0x14($s0)
    /* 4A184 8005B974 180005AE */  sw         $a1, 0x18($s0)
    /* 4A188 8005B978 420003A2 */  sb         $v1, 0x42($s0)
    /* 4A18C 8005B97C 0403A28E */  lw         $v0, 0x304($s5)
    /* 4A190 8005B980 00000000 */  nop
    /* 4A194 8005B984 02004014 */  bnez       $v0, .L8005B990
    /* 4A198 8005B988 00000000 */   nop
    /* 4A19C 8005B98C 410005A2 */  sb         $a1, 0x41($s0)
  .L8005B990:
    /* 4A1A0 8005B990 0E0000A6 */  sh         $zero, 0xE($s0)
    /* 4A1A4 8005B994 21280000 */  addu       $a1, $zero, $zero
    /* 4A1A8 8005B998 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 4A1AC 8005B99C 40211600 */  sll        $a0, $s6, 5
  .L8005B9A0:
    /* 4A1B0 8005B9A0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4A1B4 8005B9A4 7803A38E */  lw         $v1, 0x378($s5)
    /* 4A1B8 8005B9A8 0800A228 */  slti       $v0, $a1, 0x8
    /* 4A1BC 8005B9AC 21186400 */  addu       $v1, $v1, $a0
    /* 4A1C0 8005B9B0 04008424 */  addiu      $a0, $a0, 0x4
    /* 4A1C4 8005B9B4 FAFF4014 */  bnez       $v0, .L8005B9A0
    /* 4A1C8 8005B9B8 540066AC */   sw        $a2, 0x54($v1)
    /* 4A1CC 8005B9BC 2120A002 */  addu       $a0, $s5, $zero
    /* 4A1D0 8005B9C0 21280002 */  addu       $a1, $s0, $zero
    /* 4A1D4 8005B9C4 2130C002 */  addu       $a2, $s6, $zero
    /* 4A1D8 8005B9C8 3000138E */  lw         $s3, 0x30($s0)
    /* 4A1DC 8005B9CC D16E010C */  jal        func_8005BB44
    /* 4A1E0 8005B9D0 21382002 */   addu      $a3, $s1, $zero
    /* 4A1E4 8005B9D4 0000028E */  lw         $v0, 0x0($s0)
    /* 4A1E8 8005B9D8 01000324 */  addiu      $v1, $zero, 0x1
    /* 4A1EC 8005B9DC 80160200 */  sll        $v0, $v0, 26
    /* 4A1F0 8005B9E0 C3260200 */  sra        $a0, $v0, 27
    /* 4A1F4 8005B9E4 05008314 */  bne        $a0, $v1, .L8005B9FC
    /* 4A1F8 8005B9E8 02000224 */   addiu     $v0, $zero, 0x2
    /* 4A1FC 8005B9EC 0992000C */  jal        func_80024824
    /* 4A200 8005B9F0 21206002 */   addu      $a0, $s3, $zero
    /* 4A204 8005B9F4 856E0108 */  j          .L8005BA14
    /* 4A208 8005B9F8 2120A002 */   addu      $a0, $s5, $zero
  .L8005B9FC:
    /* 4A20C 8005B9FC 05008214 */  bne        $a0, $v0, .L8005BA14
    /* 4A210 8005BA00 2120A002 */   addu      $a0, $s5, $zero
    /* 4A214 8005BA04 21206002 */  addu       $a0, $s3, $zero
    /* 4A218 8005BA08 8291010C */  jal        func_80064608
    /* 4A21C 8005BA0C 2128A002 */   addu      $a1, $s5, $zero
    /* 4A220 8005BA10 2120A002 */  addu       $a0, $s5, $zero
  .L8005BA14:
    /* 4A224 8005BA14 5C77010C */  jal        func_8005DD70
    /* 4A228 8005BA18 2128C002 */   addu      $a1, $s6, $zero
    /* 4A22C 8005BA1C 7803A38E */  lw         $v1, 0x378($s5)
    /* 4A230 8005BA20 00000000 */  nop
    /* 4A234 8005BA24 0000628C */  lw         $v0, 0x0($v1)
    /* 4A238 8005BA28 00000000 */  nop
    /* 4A23C 8005BA2C 3C004230 */  andi       $v0, $v0, 0x3C
    /* 4A240 8005BA30 06004014 */  bnez       $v0, .L8005BA4C
    /* 4A244 8005BA34 2120A002 */   addu      $a0, $s5, $zero
    /* 4A248 8005BA38 256F010C */  jal        func_8005BC94
    /* 4A24C 8005BA3C 21280002 */   addu      $a1, $s0, $zero
    /* 4A250 8005BA40 01800224 */  addiu      $v0, $zero, -0x7FFF
    /* 4A254 8005BA44 3E0002A6 */  sh         $v0, 0x3E($s0)
    /* 4A258 8005BA48 3C0000A6 */  sh         $zero, 0x3C($s0)
  .L8005BA4C:
    /* 4A25C 8005BA4C 6C0CA58E */  lw         $a1, 0xC6C($s5)
    /* 4A260 8005BA50 2F8D010C */  jal        func_800634BC
    /* 4A264 8005BA54 21206002 */   addu      $a0, $s3, $zero
    /* 4A268 8005BA58 0000028E */  lw         $v0, 0x0($s0)
    /* 4A26C 8005BA5C 01000324 */  addiu      $v1, $zero, 0x1
    /* 4A270 8005BA60 80160200 */  sll        $v0, $v0, 26
    /* 4A274 8005BA64 C3160200 */  sra        $v0, $v0, 27
    /* 4A278 8005BA68 22004314 */  bne        $v0, $v1, .L8005BAF4
    /* 4A27C 8005BA6C 21A00000 */   addu      $s4, $zero, $zero
    /* 4A280 8005BA70 1000B127 */  addiu      $s1, $sp, 0x10
    /* 4A284 8005BA74 21282002 */  addu       $a1, $s1, $zero
    /* 4A288 8005BA78 21300000 */  addu       $a2, $zero, $zero
    /* 4A28C 8005BA7C 6C0CB28E */  lw         $s2, 0xC6C($s5)
    /* 4A290 8005BA80 21380000 */  addu       $a3, $zero, $zero
    /* 4A294 8005BA84 6400688E */  lw         $t0, 0x64($s3)
    /* 4A298 8005BA88 6800698E */  lw         $t1, 0x68($s3)
    /* 4A29C 8005BA8C 6C006A8E */  lw         $t2, 0x6C($s3)
    /* 4A2A0 8005BA90 1000A8AF */  sw         $t0, 0x10($sp)
    /* 4A2A4 8005BA94 1400A9AF */  sw         $t1, 0x14($sp)
    /* 4A2A8 8005BA98 1800AAAF */  sw         $t2, 0x18($sp)
    /* 4A2AC 8005BA9C AB69000C */  jal        func_8001A6AC
    /* 4A2B0 8005BAA0 21204002 */   addu      $a0, $s2, $zero
    /* 4A2B4 8005BAA4 21204000 */  addu       $a0, $v0, $zero
    /* 4A2B8 8005BAA8 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 4A2BC 8005BAAC 05008310 */  beq        $a0, $v1, .L8005BAC4
    /* 4A2C0 8005BAB0 C0100400 */   sll       $v0, $a0, 3
    /* 4A2C4 8005BAB4 23104400 */  subu       $v0, $v0, $a0
    /* 4A2C8 8005BAB8 0400438E */  lw         $v1, 0x4($s2)
    /* 4A2CC 8005BABC C0100200 */  sll        $v0, $v0, 3
    /* 4A2D0 8005BAC0 21A06200 */  addu       $s4, $v1, $v0
  .L8005BAC4:
    /* 4A2D4 8005BAC4 2002628E */  lw         $v0, 0x220($s3)
    /* 4A2D8 8005BAC8 00000000 */  nop
    /* 4A2DC 8005BACC 0000438C */  lw         $v1, 0x0($v0)
    /* 4A2E0 8005BAD0 000054AC */  sw         $s4, 0x0($v0)
    /* 4A2E4 8005BAD4 040043AC */  sw         $v1, 0x4($v0)
    /* 4A2E8 8005BAD8 1000A48F */  lw         $a0, 0x10($sp)
    /* 4A2EC 8005BADC 0400258E */  lw         $a1, 0x4($s1)
    /* 4A2F0 8005BAE0 0800238E */  lw         $v1, 0x8($s1)
    /* 4A2F4 8005BAE4 080044AC */  sw         $a0, 0x8($v0)
    /* 4A2F8 8005BAE8 08004224 */  addiu      $v0, $v0, 0x8
    /* 4A2FC 8005BAEC 040045AC */  sw         $a1, 0x4($v0)
    /* 4A300 8005BAF0 080043AC */  sw         $v1, 0x8($v0)
  .L8005BAF4:
    /* 4A304 8005BAF4 9484010C */  jal        func_80061250
    /* 4A308 8005BAF8 21200002 */   addu      $a0, $s0, $zero
    /* 4A30C 8005BAFC 2120C002 */  addu       $a0, $s6, $zero
    /* 4A310 8005BB00 16BE010C */  jal        func_8006F858
    /* 4A314 8005BB04 21280002 */   addu      $a1, $s0, $zero
    /* 4A318 8005BB08 EC03A48E */  lw         $a0, 0x3EC($s5)
    /* 4A31C 8005BB0C 2128C002 */  addu       $a1, $s6, $zero
    /* 4A320 8005BB10 2130A002 */  addu       $a2, $s5, $zero
    /* 4A324 8005BB14 5D6E000C */  jal        func_8001B974
    /* 4A328 8005BB18 01000724 */   addiu     $a3, $zero, 0x1
  .L8005BB1C:
    /* 4A32C 8005BB1C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 4A330 8005BB20 3800B68F */  lw         $s6, 0x38($sp)
    /* 4A334 8005BB24 3400B58F */  lw         $s5, 0x34($sp)
    /* 4A338 8005BB28 3000B48F */  lw         $s4, 0x30($sp)
    /* 4A33C 8005BB2C 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 4A340 8005BB30 2800B28F */  lw         $s2, 0x28($sp)
    /* 4A344 8005BB34 2400B18F */  lw         $s1, 0x24($sp)
    /* 4A348 8005BB38 2000B08F */  lw         $s0, 0x20($sp)
    /* 4A34C 8005BB3C 0800E003 */  jr         $ra
    /* 4A350 8005BB40 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_8005B8D0
