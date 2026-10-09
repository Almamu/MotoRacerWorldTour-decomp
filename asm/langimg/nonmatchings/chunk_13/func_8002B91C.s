nonmatching func_8002B91C, 0x15B8

glabel func_8002B91C
    /* 1A12C 8002B91C B0FEBD27 */  addiu      $sp, $sp, -0x150
    /* 1A130 8002B920 3801B4AF */  sw         $s4, 0x138($sp)
    /* 1A134 8002B924 21A08000 */  addu       $s4, $a0, $zero
    /* 1A138 8002B928 3401B3AF */  sw         $s3, 0x134($sp)
    /* 1A13C 8002B92C 1800B327 */  addiu      $s3, $sp, 0x18
    /* 1A140 8002B930 21206002 */  addu       $a0, $s3, $zero
    /* 1A144 8002B934 2C01B1AF */  sw         $s1, 0x12C($sp)
    /* 1A148 8002B938 2188A000 */  addu       $s1, $a1, $zero
    /* 1A14C 8002B93C 0E000524 */  addiu      $a1, $zero, 0xE
    /* 1A150 8002B940 3001B2AF */  sw         $s2, 0x130($sp)
    /* 1A154 8002B944 4C01BFAF */  sw         $ra, 0x14C($sp)
    /* 1A158 8002B948 4801BEAF */  sw         $fp, 0x148($sp)
    /* 1A15C 8002B94C 4401B7AF */  sw         $s7, 0x144($sp)
    /* 1A160 8002B950 4001B6AF */  sw         $s6, 0x140($sp)
    /* 1A164 8002B954 3C01B5AF */  sw         $s5, 0x13C($sp)
    /* 1A168 8002B958 2801B0AF */  sw         $s0, 0x128($sp)
    /* 1A16C 8002B95C 0000CA8C */  lw         $t2, 0x0($a2)
    /* 1A170 8002B960 0400CB8C */  lw         $t3, 0x4($a2)
    /* 1A174 8002B964 0800CC8C */  lw         $t4, 0x8($a2)
    /* 1A178 8002B968 1800AAAF */  sw         $t2, 0x18($sp)
    /* 1A17C 8002B96C 1C00ABAF */  sw         $t3, 0x1C($sp)
    /* 1A180 8002B970 2000ACAF */  sw         $t4, 0x20($sp)
    /* 1A184 8002B974 6001B08F */  lw         $s0, 0x160($sp)
    /* 1A188 8002B978 5267020C */  jal        func_80099D48
    /* 1A18C 8002B97C 2190E000 */   addu      $s2, $a3, $zero
    /* 1A190 8002B980 2800A427 */  addiu      $a0, $sp, 0x28
    /* 1A194 8002B984 00000A8E */  lw         $t2, 0x0($s0)
    /* 1A198 8002B988 04000B8E */  lw         $t3, 0x4($s0)
    /* 1A19C 8002B98C 08000C8E */  lw         $t4, 0x8($s0)
    /* 1A1A0 8002B990 2800AAAF */  sw         $t2, 0x28($sp)
    /* 1A1A4 8002B994 2C00ABAF */  sw         $t3, 0x2C($sp)
    /* 1A1A8 8002B998 3000ACAF */  sw         $t4, 0x30($sp)
    /* 1A1AC 8002B99C 5267020C */  jal        func_80099D48
    /* 1A1B0 8002B9A0 0E000524 */   addiu     $a1, $zero, 0xE
    /* 1A1B4 8002B9A4 3800A427 */  addiu      $a0, $sp, 0x38
    /* 1A1B8 8002B9A8 00002A8E */  lw         $t2, 0x0($s1)
    /* 1A1BC 8002B9AC 04002B8E */  lw         $t3, 0x4($s1)
    /* 1A1C0 8002B9B0 08002C8E */  lw         $t4, 0x8($s1)
    /* 1A1C4 8002B9B4 3800AAAF */  sw         $t2, 0x38($sp)
    /* 1A1C8 8002B9B8 3C00ABAF */  sw         $t3, 0x3C($sp)
    /* 1A1CC 8002B9BC 4000ACAF */  sw         $t4, 0x40($sp)
    /* 1A1D0 8002B9C0 5D67020C */  jal        func_80099D74
    /* 1A1D4 8002B9C4 05000524 */   addiu     $a1, $zero, 0x5
    /* 1A1D8 8002B9C8 4800A427 */  addiu      $a0, $sp, 0x48
    /* 1A1DC 8002B9CC 00004A8E */  lw         $t2, 0x0($s2)
    /* 1A1E0 8002B9D0 04004B8E */  lw         $t3, 0x4($s2)
    /* 1A1E4 8002B9D4 08004C8E */  lw         $t4, 0x8($s2)
    /* 1A1E8 8002B9D8 4800AAAF */  sw         $t2, 0x48($sp)
    /* 1A1EC 8002B9DC 4C00ABAF */  sw         $t3, 0x4C($sp)
    /* 1A1F0 8002B9E0 5000ACAF */  sw         $t4, 0x50($sp)
    /* 1A1F4 8002B9E4 5D67020C */  jal        func_80099D74
    /* 1A1F8 8002B9E8 05000524 */   addiu     $a1, $zero, 0x5
    /* 1A1FC 8002B9EC 54029726 */  addiu      $s7, $s4, 0x254
    /* 1A200 8002B9F0 54028A8E */  lw         $t2, 0x254($s4)
    /* 1A204 8002B9F4 58028B8E */  lw         $t3, 0x258($s4)
    /* 1A208 8002B9F8 5C028C8E */  lw         $t4, 0x25C($s4)
    /* 1A20C 8002B9FC 5800AAAF */  sw         $t2, 0x58($sp)
    /* 1A210 8002BA00 5C00ABAF */  sw         $t3, 0x5C($sp)
    /* 1A214 8002BA04 6000ACAF */  sw         $t4, 0x60($sp)
    /* 1A218 8002BA08 60028A8E */  lw         $t2, 0x260($s4)
    /* 1A21C 8002BA0C 64028B8E */  lw         $t3, 0x264($s4)
    /* 1A220 8002BA10 68028C8E */  lw         $t4, 0x268($s4)
    /* 1A224 8002BA14 6800AAAF */  sw         $t2, 0x68($sp)
    /* 1A228 8002BA18 6C00ABAF */  sw         $t3, 0x6C($sp)
    /* 1A22C 8002BA1C 7000ACAF */  sw         $t4, 0x70($sp)
    /* 1A230 8002BA20 60028A26 */  addiu      $t2, $s4, 0x260
    /* 1A234 8002BA24 2001B7AF */  sw         $s7, 0x120($sp)
    /* 1A238 8002BA28 1001AAAF */  sw         $t2, 0x110($sp)
    /* 1A23C 8002BA2C 2401AAAF */  sw         $t2, 0x124($sp)
    /* 1A240 8002BA30 4C028B8E */  lw         $t3, 0x24C($s4)
    /* 1A244 8002BA34 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 1A248 8002BA38 0801ABAF */  sw         $t3, 0x108($sp)
    /* 1A24C 8002BA3C 50028C8E */  lw         $t4, 0x250($s4)
    /* 1A250 8002BA40 09004018 */  blez       $v0, .L8002BA68
    /* 1A254 8002BA44 0C01ACAF */   sw        $t4, 0x10C($sp)
    /* 1A258 8002BA48 1800A28F */  lw         $v0, 0x18($sp)
    /* 1A25C 8002BA4C 0400638E */  lw         $v1, 0x4($s3)
    /* 1A260 8002BA50 0800648E */  lw         $a0, 0x8($s3)
    /* 1A264 8002BA54 3C00A58F */  lw         $a1, 0x3C($sp)
    /* 1A268 8002BA58 540282AE */  sw         $v0, 0x254($s4)
    /* 1A26C 8002BA5C 0400E3AE */  sw         $v1, 0x4($s7)
    /* 1A270 8002BA60 0800E4AE */  sw         $a0, 0x8($s7)
    /* 1A274 8002BA64 4C0285AE */  sw         $a1, 0x24C($s4)
  .L8002BA68:
    /* 1A278 8002BA68 2C00A58F */  lw         $a1, 0x2C($sp)
    /* 1A27C 8002BA6C 00000000 */  nop
    /* 1A280 8002BA70 0A00A018 */  blez       $a1, .L8002BA9C
    /* 1A284 8002BA74 00000000 */   nop
    /* 1A288 8002BA78 2800A28F */  lw         $v0, 0x28($sp)
    /* 1A28C 8002BA7C 3000A38F */  lw         $v1, 0x30($sp)
    /* 1A290 8002BA80 4C00A48F */  lw         $a0, 0x4C($sp)
    /* 1A294 8002BA84 600282AE */  sw         $v0, 0x260($s4)
    /* 1A298 8002BA88 1001AD8F */  lw         $t5, 0x110($sp)
    /* 1A29C 8002BA8C 00000000 */  nop
    /* 1A2A0 8002BA90 0400A5AD */  sw         $a1, 0x4($t5)
    /* 1A2A4 8002BA94 0800A3AD */  sw         $v1, 0x8($t5)
    /* 1A2A8 8002BA98 500284AE */  sw         $a0, 0x250($s4)
  .L8002BA9C:
    /* 1A2AC 8002BA9C A005838E */  lw         $v1, 0x5A0($s4)
    /* 1A2B0 8002BAA0 4C02828E */  lw         $v0, 0x24C($s4)
    /* 1A2B4 8002BAA4 160480A2 */  sb         $zero, 0x416($s4)
    /* 1A2B8 8002BAA8 240480AE */  sw         $zero, 0x424($s4)
    /* 1A2BC 8002BAAC B400648C */  lw         $a0, 0xB4($v1)
    /* 1A2C0 8002BAB0 3802858E */  lw         $a1, 0x238($s4)
    /* 1A2C4 8002BAB4 21104400 */  addu       $v0, $v0, $a0
    /* 1A2C8 8002BAB8 2A104500 */  slt        $v0, $v0, $a1
    /* 1A2CC 8002BABC 04004014 */  bnez       $v0, .L8002BAD0
    /* 1A2D0 8002BAC0 01000224 */   addiu     $v0, $zero, 0x1
    /* 1A2D4 8002BAC4 D005838E */  lw         $v1, 0x5D0($s4)
    /* 1A2D8 8002BAC8 B7AE0008 */  j          .L8002BADC
    /* 1A2DC 8002BACC 140062AC */   sw        $v0, 0x14($v1)
  .L8002BAD0:
    /* 1A2E0 8002BAD0 D005828E */  lw         $v0, 0x5D0($s4)
    /* 1A2E4 8002BAD4 00000000 */  nop
    /* 1A2E8 8002BAD8 140040AC */  sw         $zero, 0x14($v0)
  .L8002BADC:
    /* 1A2EC 8002BADC 58008382 */  lb         $v1, 0x58($s4)
    /* 1A2F0 8002BAE0 00000000 */  nop
    /* 1A2F4 8002BAE4 25016010 */  beqz       $v1, .L8002BF7C
    /* 1A2F8 8002BAE8 03000224 */   addiu     $v0, $zero, 0x3
    /* 1A2FC 8002BAEC 24016210 */  beq        $v1, $v0, .L8002BF80
    /* 1A300 8002BAF0 34029E26 */   addiu     $fp, $s4, 0x234
    /* 1A304 8002BAF4 49018282 */  lb         $v0, 0x149($s4)
    /* 1A308 8002BAF8 00000000 */  nop
    /* 1A30C 8002BAFC 06004014 */  bnez       $v0, .L8002BB18
    /* 1A310 8002BB00 00000000 */   nop
    /* 1A314 8002BB04 9C02828E */  lw         $v0, 0x29C($s4)
    /* 1A318 8002BB08 00000000 */  nop
    /* 1A31C 8002BB0C 01604228 */  slti       $v0, $v0, 0x6001
    /* 1A320 8002BB10 1B014014 */  bnez       $v0, .L8002BF80
    /* 1A324 8002BB14 00000000 */   nop
  .L8002BB18:
    /* 1A328 8002BB18 D005828E */  lw         $v0, 0x5D0($s4)
    /* 1A32C 8002BB1C 00000000 */  nop
    /* 1A330 8002BB20 1400438C */  lw         $v1, 0x14($v0)
    /* 1A334 8002BB24 00000000 */  nop
    /* 1A338 8002BB28 14016010 */  beqz       $v1, .L8002BF7C
    /* 1A33C 8002BB2C 34029E26 */   addiu     $fp, $s4, 0x234
    /* 1A340 8002BB30 7800B027 */  addiu      $s0, $sp, 0x78
    /* 1A344 8002BB34 21200002 */  addu       $a0, $s0, $zero
    /* 1A348 8002BB38 2198C003 */  addu       $s3, $fp, $zero
    /* 1A34C 8002BB3C 21286002 */  addu       $a1, $s3, $zero
    /* 1A350 8002BB40 C4039526 */  addiu      $s5, $s4, 0x3C4
    /* 1A354 8002BB44 3466020C */  jal        func_800998D0
    /* 1A358 8002BB48 2130A002 */   addu      $a2, $s5, $zero
    /* 1A35C 8002BB4C 21200002 */  addu       $a0, $s0, $zero
    /* 1A360 8002BB50 5267020C */  jal        func_80099D48
    /* 1A364 8002BB54 05000524 */   addiu     $a1, $zero, 0x5
    /* 1A368 8002BB58 8800B027 */  addiu      $s0, $sp, 0x88
    /* 1A36C 8002BB5C 21200002 */  addu       $a0, $s0, $zero
    /* 1A370 8002BB60 8000A38F */  lw         $v1, 0x80($sp)
    /* 1A374 8002BB64 7800A28F */  lw         $v0, 0x78($sp)
    /* 1A378 8002BB68 0C000524 */  addiu      $a1, $zero, 0xC
    /* 1A37C 8002BB6C 8C00A0AF */  sw         $zero, 0x8C($sp)
    /* 1A380 8002BB70 23100200 */  negu       $v0, $v0
    /* 1A384 8002BB74 8800A3AF */  sw         $v1, 0x88($sp)
    /* 1A388 8002BB78 E563020C */  jal        func_80098F94
    /* 1A38C 8002BB7C 9000A2AF */   sw        $v0, 0x90($sp)
    /* 1A390 8002BB80 21200002 */  addu       $a0, $s0, $zero
    /* 1A394 8002BB84 2128E002 */  addu       $a1, $s7, $zero
    /* 1A398 8002BB88 0867020C */  jal        func_80099C20
    /* 1A39C 8002BB8C 0C000624 */   addiu     $a2, $zero, 0xC
    /* 1A3A0 8002BB90 21884000 */  addu       $s1, $v0, $zero
    /* 1A3A4 8002BB94 01000324 */  addiu      $v1, $zero, 0x1
    /* 1A3A8 8002BB98 58008282 */  lb         $v0, 0x58($s4)
    /* 1A3AC 8002BB9C 58008592 */  lbu        $a1, 0x58($s4)
    /* 1A3B0 8002BBA0 02004314 */  bne        $v0, $v1, .L8002BBAC
    /* 1A3B4 8002BBA4 55050624 */   addiu     $a2, $zero, 0x555
    /* 1A3B8 8002BBA8 66060624 */  addiu      $a2, $zero, 0x666
  .L8002BBAC:
    /* 1A3BC 8002BBAC 02002106 */  bgez       $s1, .L8002BBB8
    /* 1A3C0 8002BBB0 21202002 */   addu      $a0, $s1, $zero
    /* 1A3C4 8002BBB4 23200400 */  negu       $a0, $a0
  .L8002BBB8:
    /* 1A3C8 8002BBB8 2A10C400 */  slt        $v0, $a2, $a0
    /* 1A3CC 8002BBBC EF004010 */  beqz       $v0, .L8002BF7C
    /* 1A3D0 8002BBC0 21388000 */   addu      $a3, $a0, $zero
    /* 1A3D4 8002BBC4 03002106 */  bgez       $s1, .L8002BBD4
    /* 1A3D8 8002BBC8 21900000 */   addu      $s2, $zero, $zero
    /* 1A3DC 8002BBCC F8AE0008 */  j          .L8002BBE0
    /* 1A3E0 8002BBD0 FFFF1224 */   addiu     $s2, $zero, -0x1
  .L8002BBD4:
    /* 1A3E4 8002BBD4 0300201A */  blez       $s1, .L8002BBE4
    /* 1A3E8 8002BBD8 00160500 */   sll       $v0, $a1, 24
    /* 1A3EC 8002BBDC 01001224 */  addiu      $s2, $zero, 0x1
  .L8002BBE0:
    /* 1A3F0 8002BBE0 00160500 */  sll        $v0, $a1, 24
  .L8002BBE4:
    /* 1A3F4 8002BBE4 03160200 */  sra        $v0, $v0, 24
    /* 1A3F8 8002BBE8 01000324 */  addiu      $v1, $zero, 0x1
    /* 1A3FC 8002BBEC 10004314 */  bne        $v0, $v1, .L8002BC30
    /* 1A400 8002BBF0 2318E600 */   subu      $v1, $a3, $a2
    /* 1A404 8002BBF4 CC04C524 */  addiu      $a1, $a2, 0x4CC
    /* 1A408 8002BBF8 2A10E500 */  slt        $v0, $a3, $a1
    /* 1A40C 8002BBFC 17004010 */  beqz       $v0, .L8002BC5C
    /* 1A410 8002BC00 23188600 */   subu      $v1, $a0, $a2
    /* 1A414 8002BC04 18006500 */  mult       $v1, $a1
    /* 1A418 8002BC08 12180000 */  mflo       $v1
    /* 1A41C 8002BC0C 78D5023C */  lui        $v0, (0xD578E97D >> 16)
    /* 1A420 8002BC10 7DE94234 */  ori        $v0, $v0, (0xD578E97D & 0xFFFF)
    /* 1A424 8002BC14 18006200 */  mult       $v1, $v0
    /* 1A428 8002BC18 10100000 */  mfhi       $v0
    /* 1A42C 8002BC1C 21104300 */  addu       $v0, $v0, $v1
    /* 1A430 8002BC20 83120200 */  sra        $v0, $v0, 10
    /* 1A434 8002BC24 C31F0300 */  sra        $v1, $v1, 31
    /* 1A438 8002BC28 11AF0008 */  j          .L8002BC44
    /* 1A43C 8002BC2C 23884300 */   subu      $s1, $v0, $v1
  .L8002BC30:
    /* 1A440 8002BC30 001B0300 */  sll        $v1, $v1, 12
    /* 1A444 8002BC34 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1A448 8002BC38 23104600 */  subu       $v0, $v0, $a2
    /* 1A44C 8002BC3C 1A006200 */  div        $zero, $v1, $v0
    /* 1A450 8002BC40 12880000 */  mflo       $s1
  .L8002BC44:
    /* 1A454 8002BC44 06004106 */  bgez       $s2, .L8002BC60
    /* 1A458 8002BC48 9800B027 */   addiu     $s0, $sp, 0x98
    /* 1A45C 8002BC4C 02002106 */  bgez       $s1, .L8002BC58
    /* 1A460 8002BC50 21102002 */   addu      $v0, $s1, $zero
    /* 1A464 8002BC54 23100200 */  negu       $v0, $v0
  .L8002BC58:
    /* 1A468 8002BC58 23880200 */  negu       $s1, $v0
  .L8002BC5C:
    /* 1A46C 8002BC5C 9800B027 */  addiu      $s0, $sp, 0x98
  .L8002BC60:
    /* 1A470 8002BC60 21200002 */  addu       $a0, $s0, $zero
    /* 1A474 8002BC64 5402828E */  lw         $v0, 0x254($s4)
    /* 1A478 8002BC68 0400E38E */  lw         $v1, 0x4($s7)
    /* 1A47C 8002BC6C 0800E68E */  lw         $a2, 0x8($s7)
    /* 1A480 8002BC70 0C000524 */  addiu      $a1, $zero, 0xC
    /* 1A484 8002BC74 9800A2AF */  sw         $v0, 0x98($sp)
    /* 1A488 8002BC78 9C00A3AF */  sw         $v1, 0x9C($sp)
    /* 1A48C 8002BC7C A000A6AF */  sw         $a2, 0xA0($sp)
    /* 1A490 8002BC80 E563020C */  jal        func_80098F94
    /* 1A494 8002BC84 9C00A0AF */   sw        $zero, 0x9C($sp)
    /* 1A498 8002BC88 A800A427 */  addiu      $a0, $sp, 0xA8
    /* 1A49C 8002BC8C 21286002 */  addu       $a1, $s3, $zero
    /* 1A4A0 8002BC90 3466020C */  jal        func_800998D0
    /* 1A4A4 8002BC94 2130A002 */   addu      $a2, $s5, $zero
    /* 1A4A8 8002BC98 7800A427 */  addiu      $a0, $sp, 0x78
    /* 1A4AC 8002BC9C 21280002 */  addu       $a1, $s0, $zero
    /* 1A4B0 8002BCA0 A800A28F */  lw         $v0, 0xA8($sp)
    /* 1A4B4 8002BCA4 AC00A38F */  lw         $v1, 0xAC($sp)
    /* 1A4B8 8002BCA8 B000A78F */  lw         $a3, 0xB0($sp)
    /* 1A4BC 8002BCAC 0C000624 */  addiu      $a2, $zero, 0xC
    /* 1A4C0 8002BCB0 7800A2AF */  sw         $v0, 0x78($sp)
    /* 1A4C4 8002BCB4 7C00A3AF */  sw         $v1, 0x7C($sp)
    /* 1A4C8 8002BCB8 0867020C */  jal        func_80099C20
    /* 1A4CC 8002BCBC 8000A7AF */   sw        $a3, 0x80($sp)
    /* 1A4D0 8002BCC0 21804000 */  addu       $s0, $v0, $zero
    /* 1A4D4 8002BCC4 0F00001A */  blez       $s0, .L8002BD04
    /* 1A4D8 8002BCC8 01000224 */   addiu     $v0, $zero, 0x1
    /* 1A4DC 8002BCCC 58008382 */  lb         $v1, 0x58($s4)
    /* 1A4E0 8002BCD0 00000000 */  nop
    /* 1A4E4 8002BCD4 09006214 */  bne        $v1, $v0, .L8002BCFC
    /* 1A4E8 8002BCD8 C2171100 */   srl       $v0, $s1, 31
    /* 1A4EC 8002BCDC 5555033C */  lui        $v1, (0x55555556 >> 16)
    /* 1A4F0 8002BCE0 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
    /* 1A4F4 8002BCE4 40101100 */  sll        $v0, $s1, 1
    /* 1A4F8 8002BCE8 18004300 */  mult       $v0, $v1
    /* 1A4FC 8002BCEC C3170200 */  sra        $v0, $v0, 31
    /* 1A500 8002BCF0 10180000 */  mfhi       $v1
    /* 1A504 8002BCF4 41AF0008 */  j          .L8002BD04
    /* 1A508 8002BCF8 23886200 */   subu      $s1, $v1, $v0
  .L8002BCFC:
    /* 1A50C 8002BCFC 21102202 */  addu       $v0, $s1, $v0
    /* 1A510 8002BD00 43880200 */  sra        $s1, $v0, 1
  .L8002BD04:
    /* 1A514 8002BD04 0D048392 */  lbu        $v1, 0x40D($s4)
    /* 1A518 8002BD08 21208002 */  addu       $a0, $s4, $zero
    /* 1A51C 8002BD0C 818E010C */  jal        func_80063A04
    /* 1A520 8002BD10 0E0483A2 */   sb        $v1, 0x40E($s4)
    /* 1A524 8002BD14 02002106 */  bgez       $s1, .L8002BD20
    /* 1A528 8002BD18 21202002 */   addu      $a0, $s1, $zero
    /* 1A52C 8002BD1C 23200400 */  negu       $a0, $a0
  .L8002BD20:
    /* 1A530 8002BD20 01000324 */  addiu      $v1, $zero, 0x1
    /* 1A534 8002BD24 03004314 */  bne        $v0, $v1, .L8002BD34
    /* 1A538 8002BD28 00000000 */   nop
    /* 1A53C 8002BD2C 4EAF0008 */  j          .L8002BD38
    /* 1A540 8002BD30 0D0482A2 */   sb        $v0, 0x40D($s4)
  .L8002BD34:
    /* 1A544 8002BD34 0D0480A2 */  sb         $zero, 0x40D($s4)
  .L8002BD38:
    /* 1A548 8002BD38 0D048282 */  lb         $v0, 0x40D($s4)
    /* 1A54C 8002BD3C 00000000 */  nop
    /* 1A550 8002BD40 06004010 */  beqz       $v0, .L8002BD5C
    /* 1A554 8002BD44 40100400 */   sll       $v0, $a0, 1
    /* 1A558 8002BD48 21104400 */  addu       $v0, $v0, $a0
    /* 1A55C 8002BD4C C21F0200 */  srl        $v1, $v0, 31
    /* 1A560 8002BD50 21104300 */  addu       $v0, $v0, $v1
    /* 1A564 8002BD54 67AF0008 */  j          .L8002BD9C
    /* 1A568 8002BD58 43880200 */   sra       $s1, $v0, 1
  .L8002BD5C:
    /* 1A56C 8002BD5C 58008382 */  lb         $v1, 0x58($s4)
    /* 1A570 8002BD60 01000224 */  addiu      $v0, $zero, 0x1
    /* 1A574 8002BD64 09006214 */  bne        $v1, $v0, .L8002BD8C
    /* 1A578 8002BD68 01088228 */   slti      $v0, $a0, 0x801
    /* 1A57C 8002BD6C 67068228 */  slti       $v0, $a0, 0x667
    /* 1A580 8002BD70 0B004014 */  bnez       $v0, .L8002BDA0
    /* 1A584 8002BD74 0110222A */   slti      $v0, $s1, 0x1001
    /* 1A588 8002BD78 9AF98324 */  addiu      $v1, $a0, -0x666
    /* 1A58C 8002BD7C 40100300 */  sll        $v0, $v1, 1
    /* 1A590 8002BD80 21104300 */  addu       $v0, $v0, $v1
    /* 1A594 8002BD84 67AF0008 */  j          .L8002BD9C
    /* 1A598 8002BD88 66065124 */   addiu     $s1, $v0, 0x666
  .L8002BD8C:
    /* 1A59C 8002BD8C 04004014 */  bnez       $v0, .L8002BDA0
    /* 1A5A0 8002BD90 0110222A */   slti      $v0, $s1, 0x1001
    /* 1A5A4 8002BD94 80100400 */  sll        $v0, $a0, 2
    /* 1A5A8 8002BD98 00E85124 */  addiu      $s1, $v0, -0x1800
  .L8002BD9C:
    /* 1A5AC 8002BD9C 0110222A */  slti       $v0, $s1, 0x1001
  .L8002BDA0:
    /* 1A5B0 8002BDA0 02004014 */  bnez       $v0, .L8002BDAC
    /* 1A5B4 8002BDA4 00000000 */   nop
    /* 1A5B8 8002BDA8 00101124 */  addiu      $s1, $zero, 0x1000
  .L8002BDAC:
    /* 1A5BC 8002BDAC 04004106 */  bgez       $s2, .L8002BDC0
    /* 1A5C0 8002BDB0 00000000 */   nop
    /* 1A5C4 8002BDB4 0200201A */  blez       $s1, .L8002BDC0
    /* 1A5C8 8002BDB8 00000000 */   nop
    /* 1A5CC 8002BDBC 23881100 */  negu       $s1, $s1
  .L8002BDC0:
    /* 1A5D0 8002BDC0 02000106 */  bgez       $s0, .L8002BDCC
    /* 1A5D4 8002BDC4 21180002 */   addu      $v1, $s0, $zero
    /* 1A5D8 8002BDC8 23180300 */  negu       $v1, $v1
  .L8002BDCC:
    /* 1A5DC 8002BDCC 02002106 */  bgez       $s1, .L8002BDD8
    /* 1A5E0 8002BDD0 21102002 */   addu      $v0, $s1, $zero
    /* 1A5E4 8002BDD4 23100200 */  negu       $v0, $v0
  .L8002BDD8:
    /* 1A5E8 8002BDD8 18006200 */  mult       $v1, $v0
    /* 1A5EC 8002BDDC 12180000 */  mflo       $v1
    /* 1A5F0 8002BDE0 02006104 */  bgez       $v1, .L8002BDEC
    /* 1A5F4 8002BDE4 240491AE */   sw        $s1, 0x424($s4)
    /* 1A5F8 8002BDE8 FF0F6324 */  addiu      $v1, $v1, 0xFFF
  .L8002BDEC:
    /* 1A5FC 8002BDEC B800B027 */  addiu      $s0, $sp, 0xB8
    /* 1A600 8002BDF0 21200002 */  addu       $a0, $s0, $zero
    /* 1A604 8002BDF4 032B0300 */  sra        $a1, $v1, 12
    /* 1A608 8002BDF8 9800A627 */  addiu      $a2, $sp, 0x98
    /* 1A60C 8002BDFC B565020C */  jal        func_800996D4
    /* 1A610 8002BE00 A800B127 */   addiu     $s1, $sp, 0xA8
    /* 1A614 8002BE04 21202002 */  addu       $a0, $s1, $zero
    /* 1A618 8002BE08 21280002 */  addu       $a1, $s0, $zero
    /* 1A61C 8002BE0C D765020C */  jal        func_8009975C
    /* 1A620 8002BE10 00100624 */   addiu     $a2, $zero, 0x1000
    /* 1A624 8002BE14 21200002 */  addu       $a0, $s0, $zero
    /* 1A628 8002BE18 21286002 */  addu       $a1, $s3, $zero
    /* 1A62C 8002BE1C 2666020C */  jal        func_80099898
    /* 1A630 8002BE20 21302002 */   addu      $a2, $s1, $zero
    /* 1A634 8002BE24 C800B027 */  addiu      $s0, $sp, 0xC8
    /* 1A638 8002BE28 21200002 */  addu       $a0, $s0, $zero
    /* 1A63C 8002BE2C B800A28F */  lw         $v0, 0xB8($sp)
    /* 1A640 8002BE30 BC00A38F */  lw         $v1, 0xBC($sp)
    /* 1A644 8002BE34 C000A68F */  lw         $a2, 0xC0($sp)
    /* 1A648 8002BE38 340282AE */  sw         $v0, 0x234($s4)
    /* 1A64C 8002BE3C 040063AE */  sw         $v1, 0x4($s3)
    /* 1A650 8002BE40 080066AE */  sw         $a2, 0x8($s3)
    /* 1A654 8002BE44 34028A8E */  lw         $t2, 0x234($s4)
    /* 1A658 8002BE48 38028B8E */  lw         $t3, 0x238($s4)
    /* 1A65C 8002BE4C 3C028C8E */  lw         $t4, 0x23C($s4)
    /* 1A660 8002BE50 C800AAAF */  sw         $t2, 0xC8($sp)
    /* 1A664 8002BE54 CC00ABAF */  sw         $t3, 0xCC($sp)
    /* 1A668 8002BE58 D000ACAF */  sw         $t4, 0xD0($sp)
    /* 1A66C 8002BE5C 5267020C */  jal        func_80099D48
    /* 1A670 8002BE60 05000524 */   addiu     $a1, $zero, 0x5
    /* 1A674 8002BE64 21208002 */  addu       $a0, $s4, $zero
    /* 1A678 8002BE68 21300002 */  addu       $a2, $s0, $zero
    /* 1A67C 8002BE6C 01001124 */  addiu      $s1, $zero, 0x1
    /* 1A680 8002BE70 2C02858E */  lw         $a1, 0x22C($s4)
    /* 1A684 8002BE74 4C02828E */  lw         $v0, 0x24C($s4)
    /* 1A688 8002BE78 D800A727 */  addiu      $a3, $sp, 0xD8
    /* 1A68C 8002BE7C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1A690 8002BE80 00AE000C */  jal        func_8002B800
    /* 1A694 8002BE84 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1A698 8002BE88 1F004010 */  beqz       $v0, .L8002BF08
    /* 1A69C 8002BE8C 1800B027 */   addiu     $s0, $sp, 0x18
    /* 1A6A0 8002BE90 21200002 */  addu       $a0, $s0, $zero
    /* 1A6A4 8002BE94 D800A28F */  lw         $v0, 0xD8($sp)
    /* 1A6A8 8002BE98 DC00A38F */  lw         $v1, 0xDC($sp)
    /* 1A6AC 8002BE9C E000A68F */  lw         $a2, 0xE0($sp)
    /* 1A6B0 8002BEA0 0E000524 */  addiu      $a1, $zero, 0xE
    /* 1A6B4 8002BEA4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1A6B8 8002BEA8 040003AE */  sw         $v1, 0x4($s0)
    /* 1A6BC 8002BEAC 5267020C */  jal        func_80099D48
    /* 1A6C0 8002BEB0 080006AE */   sw        $a2, 0x8($s0)
    /* 1A6C4 8002BEB4 3800A427 */  addiu      $a0, $sp, 0x38
    /* 1A6C8 8002BEB8 1800A28F */  lw         $v0, 0x18($sp)
    /* 1A6CC 8002BEBC 0400038E */  lw         $v1, 0x4($s0)
    /* 1A6D0 8002BEC0 0800068E */  lw         $a2, 0x8($s0)
    /* 1A6D4 8002BEC4 C800A78F */  lw         $a3, 0xC8($sp)
    /* 1A6D8 8002BEC8 CC00A88F */  lw         $t0, 0xCC($sp)
    /* 1A6DC 8002BECC D000A98F */  lw         $t1, 0xD0($sp)
    /* 1A6E0 8002BED0 05000524 */  addiu      $a1, $zero, 0x5
    /* 1A6E4 8002BED4 540282AE */  sw         $v0, 0x254($s4)
    /* 1A6E8 8002BED8 0400E3AE */  sw         $v1, 0x4($s7)
    /* 1A6EC 8002BEDC 0800E6AE */  sw         $a2, 0x8($s7)
    /* 1A6F0 8002BEE0 3800A7AF */  sw         $a3, 0x38($sp)
    /* 1A6F4 8002BEE4 3C00A8AF */  sw         $t0, 0x3C($sp)
    /* 1A6F8 8002BEE8 5D67020C */  jal        func_80099D74
    /* 1A6FC 8002BEEC 4000A9AF */   sw        $t1, 0x40($sp)
    /* 1A700 8002BEF0 3C00A38F */  lw         $v1, 0x3C($sp)
    /* 1A704 8002BEF4 58008282 */  lb         $v0, 0x58($s4)
    /* 1A708 8002BEF8 00000000 */  nop
    /* 1A70C 8002BEFC 02005110 */  beq        $v0, $s1, .L8002BF08
    /* 1A710 8002BF00 4C0283AE */   sw        $v1, 0x24C($s4)
    /* 1A714 8002BF04 380283AE */  sw         $v1, 0x238($s4)
  .L8002BF08:
    /* 1A718 8002BF08 F800B127 */  addiu      $s1, $sp, 0xF8
    /* 1A71C 8002BF0C 21202002 */  addu       $a0, $s1, $zero
    /* 1A720 8002BF10 40028526 */  addiu      $a1, $s4, 0x240
    /* 1A724 8002BF14 21306002 */  addu       $a2, $s3, $zero
    /* 1A728 8002BF18 D005828E */  lw         $v0, 0x5D0($s4)
    /* 1A72C 8002BF1C 00000000 */  nop
    /* 1A730 8002BF20 0800528C */  lw         $s2, 0x8($v0)
    /* 1A734 8002BF24 2666020C */  jal        func_80099898
    /* 1A738 8002BF28 E800B027 */   addiu     $s0, $sp, 0xE8
    /* 1A73C 8002BF2C 21200002 */  addu       $a0, $s0, $zero
    /* 1A740 8002BF30 21282002 */  addu       $a1, $s1, $zero
    /* 1A744 8002BF34 D765020C */  jal        func_8009975C
    /* 1A748 8002BF38 02000624 */   addiu     $a2, $zero, 0x2
    /* 1A74C 8002BF3C D005828E */  lw         $v0, 0x5D0($s4)
    /* 1A750 8002BF40 E800A38F */  lw         $v1, 0xE8($sp)
    /* 1A754 8002BF44 EC00A48F */  lw         $a0, 0xEC($sp)
    /* 1A758 8002BF48 F000A58F */  lw         $a1, 0xF0($sp)
    /* 1A75C 8002BF4C 040043AC */  sw         $v1, 0x4($v0)
    /* 1A760 8002BF50 04004224 */  addiu      $v0, $v0, 0x4
    /* 1A764 8002BF54 040044AC */  sw         $a0, 0x4($v0)
    /* 1A768 8002BF58 080045AC */  sw         $a1, 0x8($v0)
    /* 1A76C 8002BF5C 58008382 */  lb         $v1, 0x58($s4)
    /* 1A770 8002BF60 01000424 */  addiu      $a0, $zero, 0x1
    /* 1A774 8002BF64 04006414 */  bne        $v1, $a0, .L8002BF78
    /* 1A778 8002BF68 00000000 */   nop
    /* 1A77C 8002BF6C D005828E */  lw         $v0, 0x5D0($s4)
    /* 1A780 8002BF70 00000000 */  nop
    /* 1A784 8002BF74 080052AC */  sw         $s2, 0x8($v0)
  .L8002BF78:
    /* 1A788 8002BF78 160484A2 */  sb         $a0, 0x416($s4)
  .L8002BF7C:
    /* 1A78C 8002BF7C 34029E26 */  addiu      $fp, $s4, 0x234
  .L8002BF80:
    /* 1A790 8002BF80 1401A0AF */  sw         $zero, 0x114($sp)
    /* 1A794 8002BF84 1801A0AF */  sw         $zero, 0x118($sp)
    /* 1A798 8002BF88 34028A8E */  lw         $t2, 0x234($s4)
    /* 1A79C 8002BF8C 38028B8E */  lw         $t3, 0x238($s4)
    /* 1A7A0 8002BF90 3C028C8E */  lw         $t4, 0x23C($s4)
    /* 1A7A4 8002BF94 7800AAAF */  sw         $t2, 0x78($sp)
    /* 1A7A8 8002BF98 7C00ABAF */  sw         $t3, 0x7C($sp)
    /* 1A7AC 8002BF9C 8000ACAF */  sw         $t4, 0x80($sp)
    /* 1A7B0 8002BFA0 40028A8E */  lw         $t2, 0x240($s4)
    /* 1A7B4 8002BFA4 44028B8E */  lw         $t3, 0x244($s4)
    /* 1A7B8 8002BFA8 48028C8E */  lw         $t4, 0x248($s4)
    /* 1A7BC 8002BFAC 8800AAAF */  sw         $t2, 0x88($sp)
    /* 1A7C0 8002BFB0 8C00ABAF */  sw         $t3, 0x8C($sp)
    /* 1A7C4 8002BFB4 9000ACAF */  sw         $t4, 0x90($sp)
    /* 1A7C8 8002BFB8 A005838E */  lw         $v1, 0x5A0($s4)
    /* 1A7CC 8002BFBC 4C02828E */  lw         $v0, 0x24C($s4)
    /* 1A7D0 8002BFC0 3802858E */  lw         $a1, 0x238($s4)
    /* 1A7D4 8002BFC4 B400648C */  lw         $a0, 0xB4($v1)
    /* 1A7D8 8002BFC8 40028A26 */  addiu      $t2, $s4, 0x240
    /* 1A7DC 8002BFCC 21104400 */  addu       $v0, $v0, $a0
    /* 1A7E0 8002BFD0 2A104500 */  slt        $v0, $v0, $a1
    /* 1A7E4 8002BFD4 05004014 */  bnez       $v0, .L8002BFEC
    /* 1A7E8 8002BFD8 1C01AAAF */   sw        $t2, 0x11C($sp)
    /* 1A7EC 8002BFDC D005838E */  lw         $v1, 0x5D0($s4)
    /* 1A7F0 8002BFE0 01000224 */  addiu      $v0, $zero, 0x1
    /* 1A7F4 8002BFE4 FEAF0008 */  j          .L8002BFF8
    /* 1A7F8 8002BFE8 140062AC */   sw        $v0, 0x14($v1)
  .L8002BFEC:
    /* 1A7FC 8002BFEC D005828E */  lw         $v0, 0x5D0($s4)
    /* 1A800 8002BFF0 00000000 */  nop
    /* 1A804 8002BFF4 140040AC */  sw         $zero, 0x14($v0)
  .L8002BFF8:
    /* 1A808 8002BFF8 A005838E */  lw         $v1, 0x5A0($s4)
    /* 1A80C 8002BFFC 5002828E */  lw         $v0, 0x250($s4)
    /* 1A810 8002C000 B800648C */  lw         $a0, 0xB8($v1)
    /* 1A814 8002C004 4402858E */  lw         $a1, 0x244($s4)
    /* 1A818 8002C008 21104400 */  addu       $v0, $v0, $a0
    /* 1A81C 8002C00C 2A104500 */  slt        $v0, $v0, $a1
    /* 1A820 8002C010 04004014 */  bnez       $v0, .L8002C024
    /* 1A824 8002C014 01000224 */   addiu     $v0, $zero, 0x1
    /* 1A828 8002C018 D005838E */  lw         $v1, 0x5D0($s4)
    /* 1A82C 8002C01C 0CB00008 */  j          .L8002C030
    /* 1A830 8002C020 180062AC */   sw        $v0, 0x18($v1)
  .L8002C024:
    /* 1A834 8002C024 D005828E */  lw         $v0, 0x5D0($s4)
    /* 1A838 8002C028 00000000 */  nop
    /* 1A83C 8002C02C 180040AC */  sw         $zero, 0x18($v0)
  .L8002C030:
    /* 1A840 8002C030 58008382 */  lb         $v1, 0x58($s4)
    /* 1A844 8002C034 03000224 */  addiu      $v0, $zero, 0x3
    /* 1A848 8002C038 4F026214 */  bne        $v1, $v0, .L8002C978
    /* 1A84C 8002C03C 21208002 */   addu      $a0, $s4, $zero
    /* 1A850 8002C040 9C02838E */  lw         $v1, 0x29C($s4)
    /* 1A854 8002C044 9002828E */  lw         $v0, 0x290($s4)
    /* 1A858 8002C048 00000000 */  nop
    /* 1A85C 8002C04C 18006200 */  mult       $v1, $v0
    /* 1A860 8002C050 21900000 */  addu       $s2, $zero, $zero
    /* 1A864 8002C054 12100000 */  mflo       $v0
    /* 1A868 8002C058 02004104 */  bgez       $v0, .L8002C064
    /* 1A86C 8002C05C 21880000 */   addu      $s1, $zero, $zero
    /* 1A870 8002C060 FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .L8002C064:
    /* 1A874 8002C064 03B30200 */  sra        $s6, $v0, 12
    /* 1A878 8002C068 5802828E */  lw         $v0, 0x258($s4)
    /* 1A87C 8002C06C 00000000 */  nop
    /* 1A880 8002C070 AA0A4228 */  slti       $v0, $v0, 0xAAA
    /* 1A884 8002C074 30004010 */  beqz       $v0, .L8002C138
    /* 1A888 8002C078 40B11600 */   sll       $s6, $s6, 5
    /* 1A88C 8002C07C 21208002 */  addu       $a0, $s4, $zero
    /* 1A890 8002C080 A1B9000C */  jal        func_8002E684
    /* 1A894 8002C084 21280000 */   addu      $a1, $zero, $zero
    /* 1A898 8002C088 21284000 */  addu       $a1, $v0, $zero
    /* 1A89C 8002C08C 4000A018 */  blez       $a1, .L8002C190
    /* 1A8A0 8002C090 00000000 */   nop
    /* 1A8A4 8002C094 3802848E */  lw         $a0, 0x238($s4)
    /* 1A8A8 8002C098 0801AA8F */  lw         $t2, 0x108($sp)
    /* 1A8AC 8002C09C 00000000 */  nop
    /* 1A8B0 8002C0A0 2A108A00 */  slt        $v0, $a0, $t2
    /* 1A8B4 8002C0A4 02004010 */  beqz       $v0, .L8002C0B0
    /* 1A8B8 8002C0A8 80301600 */   sll       $a2, $s6, 2
    /* 1A8BC 8002C0AC 21204001 */  addu       $a0, $t2, $zero
  .L8002C0B0:
    /* 1A8C0 8002C0B0 4C02828E */  lw         $v0, 0x24C($s4)
    /* 1A8C4 8002C0B4 DE028382 */  lb         $v1, 0x2DE($s4)
    /* 1A8C8 8002C0B8 00000000 */  nop
    /* 1A8CC 8002C0BC 02006010 */  beqz       $v1, .L8002C0C8
    /* 1A8D0 8002C0C0 23884400 */   subu      $s1, $v0, $a0
    /* 1A8D4 8002C0C4 80311600 */  sll        $a2, $s6, 6
  .L8002C0C8:
    /* 1A8D8 8002C0C8 5802828E */  lw         $v0, 0x258($s4)
    /* 1A8DC 8002C0CC 00000000 */  nop
    /* 1A8E0 8002C0D0 55054228 */  slti       $v0, $v0, 0x555
    /* 1A8E4 8002C0D4 06004010 */  beqz       $v0, .L8002C0F0
    /* 1A8E8 8002C0D8 0140222A */   slti      $v0, $s1, 0x4001
    /* 1A8EC 8002C0DC 05004014 */  bnez       $v0, .L8002C0F4
    /* 1A8F0 8002C0E0 FF7F0224 */   addiu     $v0, $zero, 0x7FFF
    /* 1A8F4 8002C0E4 01000B24 */  addiu      $t3, $zero, 0x1
    /* 1A8F8 8002C0E8 64B00008 */  j          .L8002C190
    /* 1A8FC 8002C0EC 1401ABAF */   sw        $t3, 0x114($sp)
  .L8002C0F0:
    /* 1A900 8002C0F0 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
  .L8002C0F4:
    /* 1A904 8002C0F4 2A104500 */  slt        $v0, $v0, $a1
    /* 1A908 8002C0F8 07004014 */  bnez       $v0, .L8002C118
    /* 1A90C 8002C0FC 0100023C */   lui       $v0, (0x10000 >> 16)
    /* 1A910 8002C100 D005828E */  lw         $v0, 0x5D0($s4)
    /* 1A914 8002C104 00000000 */  nop
    /* 1A918 8002C108 1800438C */  lw         $v1, 0x18($v0)
    /* 1A91C 8002C10C 00000000 */  nop
    /* 1A920 8002C110 1F006014 */  bnez       $v1, .L8002C190
    /* 1A924 8002C114 0100023C */   lui       $v0, (0x10000 >> 16)
  .L8002C118:
    /* 1A928 8002C118 2A105100 */  slt        $v0, $v0, $s1
    /* 1A92C 8002C11C 04004014 */  bnez       $v0, .L8002C130
    /* 1A930 8002C120 01000C24 */   addiu     $t4, $zero, 0x1
    /* 1A934 8002C124 2A10D100 */  slt        $v0, $a2, $s1
    /* 1A938 8002C128 19004010 */  beqz       $v0, .L8002C190
    /* 1A93C 8002C12C 00000000 */   nop
  .L8002C130:
    /* 1A940 8002C130 64B00008 */  j          .L8002C190
    /* 1A944 8002C134 1401ACAF */   sw        $t4, 0x114($sp)
  .L8002C138:
    /* 1A948 8002C138 21208002 */  addu       $a0, $s4, $zero
    /* 1A94C 8002C13C 4C02868E */  lw         $a2, 0x24C($s4)
    /* 1A950 8002C140 3802838E */  lw         $v1, 0x238($s4)
    /* 1A954 8002C144 21280000 */  addu       $a1, $zero, $zero
    /* 1A958 8002C148 A1B9000C */  jal        func_8002E684
    /* 1A95C 8002C14C 2380C300 */   subu      $s0, $a2, $v1
    /* 1A960 8002C150 01104228 */  slti       $v0, $v0, 0x1001
    /* 1A964 8002C154 0E004014 */  bnez       $v0, .L8002C190
    /* 1A968 8002C158 0100023C */   lui       $v0, (0x10000 >> 16)
    /* 1A96C 8002C15C 2A105000 */  slt        $v0, $v0, $s0
    /* 1A970 8002C160 0B004010 */  beqz       $v0, .L8002C190
    /* 1A974 8002C164 40101600 */   sll       $v0, $s6, 1
    /* 1A978 8002C168 2A105000 */  slt        $v0, $v0, $s0
    /* 1A97C 8002C16C 08004010 */  beqz       $v0, .L8002C190
    /* 1A980 8002C170 00000000 */   nop
    /* 1A984 8002C174 2F058282 */  lb         $v0, 0x52F($s4)
    /* 1A988 8002C178 00000000 */  nop
    /* 1A98C 8002C17C 04004014 */  bnez       $v0, .L8002C190
    /* 1A990 8002C180 00000000 */   nop
    /* 1A994 8002C184 01000D24 */  addiu      $t5, $zero, 0x1
    /* 1A998 8002C188 1401ADAF */  sw         $t5, 0x114($sp)
    /* 1A99C 8002C18C 01001224 */  addiu      $s2, $zero, 0x1
  .L8002C190:
    /* 1A9A0 8002C190 1401AA8F */  lw         $t2, 0x114($sp)
    /* 1A9A4 8002C194 00000000 */  nop
    /* 1A9A8 8002C198 11004015 */  bnez       $t2, .L8002C1E0
    /* 1A9AC 8002C19C 0100043C */   lui       $a0, (0x10000 >> 16)
    /* 1A9B0 8002C1A0 2A109100 */  slt        $v0, $a0, $s1
    /* 1A9B4 8002C1A4 0A004010 */  beqz       $v0, .L8002C1D0
    /* 1A9B8 8002C1A8 00000000 */   nop
    /* 1A9BC 8002C1AC 3802838E */  lw         $v1, 0x238($s4)
    /* 1A9C0 8002C1B0 0801AB8F */  lw         $t3, 0x108($sp)
    /* 1A9C4 8002C1B4 00000000 */  nop
    /* 1A9C8 8002C1B8 2A106B00 */  slt        $v0, $v1, $t3
    /* 1A9CC 8002C1BC 03004010 */  beqz       $v0, .L8002C1CC
    /* 1A9D0 8002C1C0 21106400 */   addu      $v0, $v1, $a0
    /* 1A9D4 8002C1C4 21186001 */  addu       $v1, $t3, $zero
    /* 1A9D8 8002C1C8 21106400 */  addu       $v0, $v1, $a0
  .L8002C1CC:
    /* 1A9DC 8002C1CC 4C0282AE */  sw         $v0, 0x24C($s4)
  .L8002C1D0:
    /* 1A9E0 8002C1D0 1401AC8F */  lw         $t4, 0x114($sp)
    /* 1A9E4 8002C1D4 00000000 */  nop
    /* 1A9E8 8002C1D8 93008011 */  beqz       $t4, .L8002C428
    /* 1A9EC 8002C1DC 00000000 */   nop
  .L8002C1E0:
    /* 1A9F0 8002C1E0 D005828E */  lw         $v0, 0x5D0($s4)
    /* 1A9F4 8002C1E4 00000000 */  nop
    /* 1A9F8 8002C1E8 1800438C */  lw         $v1, 0x18($v0)
    /* 1A9FC 8002C1EC 00000000 */  nop
    /* 1AA00 8002C1F0 50006010 */  beqz       $v1, .L8002C334
    /* 1AA04 8002C1F4 C4038226 */   addiu     $v0, $s4, 0x3C4
    /* 1AA08 8002C1F8 0801AD8F */  lw         $t5, 0x108($sp)
    /* 1AA0C 8002C1FC C403838E */  lw         $v1, 0x3C4($s4)
    /* 1AA10 8002C200 4C028DAE */  sw         $t5, 0x24C($s4)
    /* 1AA14 8002C204 0400448C */  lw         $a0, 0x4($v0)
    /* 1AA18 8002C208 0800468C */  lw         $a2, 0x8($v0)
    /* 1AA1C 8002C20C A800B027 */  addiu      $s0, $sp, 0xA8
    /* 1AA20 8002C210 340283AE */  sw         $v1, 0x234($s4)
    /* 1AA24 8002C214 0400C4AF */  sw         $a0, 0x4($fp)
    /* 1AA28 8002C218 0800C6AF */  sw         $a2, 0x8($fp)
    /* 1AA2C 8002C21C 3402828E */  lw         $v0, 0x234($s4)
    /* 1AA30 8002C220 DC038326 */  addiu      $v1, $s4, 0x3DC
    /* 1AA34 8002C224 DC0382AE */  sw         $v0, 0x3DC($s4)
    /* 1AA38 8002C228 040064AC */  sw         $a0, 0x4($v1)
    /* 1AA3C 8002C22C 080066AC */  sw         $a2, 0x8($v1)
    /* 1AA40 8002C230 D005858E */  lw         $a1, 0x5D0($s4)
    /* 1AA44 8002C234 9800B127 */  addiu      $s1, $sp, 0x98
    /* 1AA48 8002C238 0800A28C */  lw         $v0, 0x8($a1)
    /* 1AA4C 8002C23C 21200002 */  addu       $a0, $s0, $zero
    /* 1AA50 8002C240 21105600 */  addu       $v0, $v0, $s6
    /* 1AA54 8002C244 0800A2AC */  sw         $v0, 0x8($a1)
    /* 1AA58 8002C248 D005868E */  lw         $a2, 0x5D0($s4)
    /* 1AA5C 8002C24C 2128C003 */  addu       $a1, $fp, $zero
    /* 1AA60 8002C250 3466020C */  jal        func_800998D0
    /* 1AA64 8002C254 0400C624 */   addiu     $a2, $a2, 0x4
    /* 1AA68 8002C258 21202002 */  addu       $a0, $s1, $zero
    /* 1AA6C 8002C25C D005858E */  lw         $a1, 0x5D0($s4)
    /* 1AA70 8002C260 21300002 */  addu       $a2, $s0, $zero
    /* 1AA74 8002C264 3466020C */  jal        func_800998D0
    /* 1AA78 8002C268 0400A524 */   addiu     $a1, $a1, 0x4
    /* 1AA7C 8002C26C 5555033C */  lui        $v1, (0x55555556 >> 16)
    /* 1AA80 8002C270 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
    /* 1AA84 8002C274 A0029526 */  addiu      $s5, $s4, 0x2A0
    /* 1AA88 8002C278 1800C302 */  mult       $s6, $v1
    /* 1AA8C 8002C27C 21200002 */  addu       $a0, $s0, $zero
    /* 1AA90 8002C280 9800A28F */  lw         $v0, 0x98($sp)
    /* 1AA94 8002C284 9C00A78F */  lw         $a3, 0x9C($sp)
    /* 1AA98 8002C288 A000A88F */  lw         $t0, 0xA0($sp)
    /* 1AA9C 8002C28C 2128A002 */  addu       $a1, $s5, $zero
    /* 1AAA0 8002C290 400282AE */  sw         $v0, 0x240($s4)
    /* 1AAA4 8002C294 1C01AA8F */  lw         $t2, 0x11C($sp)
    /* 1AAA8 8002C298 C3371600 */  sra        $a2, $s6, 31
    /* 1AAAC 8002C29C 040047AD */  sw         $a3, 0x4($t2)
    /* 1AAB0 8002C2A0 080048AD */  sw         $t0, 0x8($t2)
    /* 1AAB4 8002C2A4 0C03828E */  lw         $v0, 0x30C($s4)
    /* 1AAB8 8002C2A8 10180000 */  mfhi       $v1
    /* 1AABC 8002C2AC 23186600 */  subu       $v1, $v1, $a2
    /* 1AAC0 8002C2B0 21104300 */  addu       $v0, $v0, $v1
    /* 1AAC4 8002C2B4 E965020C */  jal        func_800997A4
    /* 1AAC8 8002C2B8 0C0382AE */   sw        $v0, 0x30C($s4)
    /* 1AACC 8002C2BC 21202002 */  addu       $a0, $s1, $zero
    /* 1AAD0 8002C2C0 21280002 */  addu       $a1, $s0, $zero
    /* 1AAD4 8002C2C4 D765020C */  jal        func_8009975C
    /* 1AAD8 8002C2C8 02000624 */   addiu     $a2, $zero, 0x2
    /* 1AADC 8002C2CC 21208002 */  addu       $a0, $s4, $zero
    /* 1AAE0 8002C2D0 9800A28F */  lw         $v0, 0x98($sp)
    /* 1AAE4 8002C2D4 9C00A38F */  lw         $v1, 0x9C($sp)
    /* 1AAE8 8002C2D8 A000A68F */  lw         $a2, 0xA0($sp)
    /* 1AAEC 8002C2DC 21280000 */  addu       $a1, $zero, $zero
    /* 1AAF0 8002C2E0 A00282AE */  sw         $v0, 0x2A0($s4)
    /* 1AAF4 8002C2E4 0400A3AE */  sw         $v1, 0x4($s5)
    /* 1AAF8 8002C2E8 A1B9000C */  jal        func_8002E684
    /* 1AAFC 8002C2EC 0800A6AE */   sw        $a2, 0x8($s5)
    /* 1AB00 8002C2F0 00404228 */  slti       $v0, $v0, 0x4000
    /* 1AB04 8002C2F4 49004010 */  beqz       $v0, .L8002C41C
    /* 1AB08 8002C2F8 21202002 */   addu      $a0, $s1, $zero
    /* 1AB0C 8002C2FC FCFF0524 */  addiu      $a1, $zero, -0x4
    /* 1AB10 8002C300 B565020C */  jal        func_800996D4
    /* 1AB14 8002C304 30038626 */   addiu     $a2, $s4, 0x330
    /* 1AB18 8002C308 2120A002 */  addu       $a0, $s5, $zero
    /* 1AB1C 8002C30C 9800A28F */  lw         $v0, 0x98($sp)
    /* 1AB20 8002C310 9C00A38F */  lw         $v1, 0x9C($sp)
    /* 1AB24 8002C314 A000A68F */  lw         $a2, 0xA0($sp)
    /* 1AB28 8002C318 09000524 */  addiu      $a1, $zero, 0x9
    /* 1AB2C 8002C31C A00282AE */  sw         $v0, 0x2A0($s4)
    /* 1AB30 8002C320 0400A3AE */  sw         $v1, 0x4($s5)
    /* 1AB34 8002C324 5267020C */  jal        func_80099D48
    /* 1AB38 8002C328 0800A6AE */   sw        $a2, 0x8($s5)
    /* 1AB3C 8002C32C 07B10008 */  j          .L8002C41C
    /* 1AB40 8002C330 00000000 */   nop
  .L8002C334:
    /* 1AB44 8002C334 4C02828E */  lw         $v0, 0x24C($s4)
    /* 1AB48 8002C338 0801AB8F */  lw         $t3, 0x108($sp)
    /* 1AB4C 8002C33C 00000000 */  nop
    /* 1AB50 8002C340 2A106201 */  slt        $v0, $t3, $v0
    /* 1AB54 8002C344 02004010 */  beqz       $v0, .L8002C350
    /* 1AB58 8002C348 00000000 */   nop
    /* 1AB5C 8002C34C 4C028BAE */  sw         $t3, 0x24C($s4)
  .L8002C350:
    /* 1AB60 8002C350 07004016 */  bnez       $s2, .L8002C370
    /* 1AB64 8002C354 A0029526 */   addiu     $s5, $s4, 0x2A0
    /* 1AB68 8002C358 2120E002 */  addu       $a0, $s7, $zero
    /* 1AB6C 8002C35C 2128A002 */  addu       $a1, $s5, $zero
    /* 1AB70 8002C360 0867020C */  jal        func_80099C20
    /* 1AB74 8002C364 0C000624 */   addiu     $a2, $zero, 0xC
    /* 1AB78 8002C368 0E004018 */  blez       $v0, .L8002C3A4
    /* 1AB7C 8002C36C 9800B027 */   addiu     $s0, $sp, 0x98
  .L8002C370:
    /* 1AB80 8002C370 A002828E */  lw         $v0, 0x2A0($s4)
    /* 1AB84 8002C374 A802838E */  lw         $v1, 0x2A8($s4)
    /* 1AB88 8002C378 23100200 */  negu       $v0, $v0
    /* 1AB8C 8002C37C C2270200 */  srl        $a0, $v0, 31
    /* 1AB90 8002C380 21104400 */  addu       $v0, $v0, $a0
    /* 1AB94 8002C384 43100200 */  sra        $v0, $v0, 1
    /* 1AB98 8002C388 23180300 */  negu       $v1, $v1
    /* 1AB9C 8002C38C C2270300 */  srl        $a0, $v1, 31
    /* 1ABA0 8002C390 21186400 */  addu       $v1, $v1, $a0
    /* 1ABA4 8002C394 43180300 */  sra        $v1, $v1, 1
    /* 1ABA8 8002C398 A00282AE */  sw         $v0, 0x2A0($s4)
    /* 1ABAC 8002C39C 07B10008 */  j          .L8002C41C
    /* 1ABB0 8002C3A0 A80283AE */   sw        $v1, 0x2A8($s4)
  .L8002C3A4:
    /* 1ABB4 8002C3A4 21200002 */  addu       $a0, $s0, $zero
    /* 1ABB8 8002C3A8 54028C8E */  lw         $t4, 0x254($s4)
    /* 1ABBC 8002C3AC 58028D8E */  lw         $t5, 0x258($s4)
    /* 1ABC0 8002C3B0 5C028A8E */  lw         $t2, 0x25C($s4)
    /* 1ABC4 8002C3B4 9800ACAF */  sw         $t4, 0x98($sp)
    /* 1ABC8 8002C3B8 9C00ADAF */  sw         $t5, 0x9C($sp)
    /* 1ABCC 8002C3BC A000AAAF */  sw         $t2, 0xA0($sp)
    /* 1ABD0 8002C3C0 7165020C */  jal        func_800995C4
    /* 1ABD4 8002C3C4 21284000 */   addu      $a1, $v0, $zero
    /* 1ABD8 8002C3C8 C800B127 */  addiu      $s1, $sp, 0xC8
    /* 1ABDC 8002C3CC 21202002 */  addu       $a0, $s1, $zero
    /* 1ABE0 8002C3D0 03000524 */  addiu      $a1, $zero, 0x3
    /* 1ABE4 8002C3D4 21300002 */  addu       $a2, $s0, $zero
    /* 1ABE8 8002C3D8 A800B327 */  addiu      $s3, $sp, 0xA8
    /* 1ABEC 8002C3DC B565020C */  jal        func_800996D4
    /* 1ABF0 8002C3E0 B800B227 */   addiu     $s2, $sp, 0xB8
    /* 1ABF4 8002C3E4 21204002 */  addu       $a0, $s2, $zero
    /* 1ABF8 8002C3E8 21282002 */  addu       $a1, $s1, $zero
    /* 1ABFC 8002C3EC D765020C */  jal        func_8009975C
    /* 1AC00 8002C3F0 02000624 */   addiu     $a2, $zero, 0x2
    /* 1AC04 8002C3F4 21206002 */  addu       $a0, $s3, $zero
    /* 1AC08 8002C3F8 2128A002 */  addu       $a1, $s5, $zero
    /* 1AC0C 8002C3FC 3466020C */  jal        func_800998D0
    /* 1AC10 8002C400 21304002 */   addu      $a2, $s2, $zero
    /* 1AC14 8002C404 A800A28F */  lw         $v0, 0xA8($sp)
    /* 1AC18 8002C408 AC00A38F */  lw         $v1, 0xAC($sp)
    /* 1AC1C 8002C40C B000A48F */  lw         $a0, 0xB0($sp)
    /* 1AC20 8002C410 A00282AE */  sw         $v0, 0x2A0($s4)
    /* 1AC24 8002C414 0400A3AE */  sw         $v1, 0x4($s5)
    /* 1AC28 8002C418 0800A4AE */  sw         $a0, 0x8($s5)
  .L8002C41C:
    /* 1AC2C 8002C41C 52B9000C */  jal        func_8002E548
    /* 1AC30 8002C420 21208002 */   addu      $a0, $s4, $zero
    /* 1AC34 8002C424 2E0580A2 */  sb         $zero, 0x52E($s4)
  .L8002C428:
    /* 1AC38 8002C428 6402828E */  lw         $v0, 0x264($s4)
    /* 1AC3C 8002C42C 00000000 */  nop
    /* 1AC40 8002C430 55054228 */  slti       $v0, $v0, 0x555
    /* 1AC44 8002C434 26004010 */  beqz       $v0, .L8002C4D0
    /* 1AC48 8002C438 21900000 */   addu      $s2, $zero, $zero
    /* 1AC4C 8002C43C 30038526 */  addiu      $a1, $s4, 0x330
    /* 1AC50 8002C440 1A000624 */  addiu      $a2, $zero, 0x1A
    /* 1AC54 8002C444 9800B027 */  addiu      $s0, $sp, 0x98
    /* 1AC58 8002C448 1001A48F */  lw         $a0, 0x110($sp)
    /* 1AC5C 8002C44C A800B127 */  addiu      $s1, $sp, 0xA8
    /* 1AC60 8002C450 30038C8E */  lw         $t4, 0x330($s4)
    /* 1AC64 8002C454 34038D8E */  lw         $t5, 0x334($s4)
    /* 1AC68 8002C458 38038A8E */  lw         $t2, 0x338($s4)
    /* 1AC6C 8002C45C 9800ACAF */  sw         $t4, 0x98($sp)
    /* 1AC70 8002C460 9C00ADAF */  sw         $t5, 0x9C($sp)
    /* 1AC74 8002C464 A000AAAF */  sw         $t2, 0xA0($sp)
    /* 1AC78 8002C468 9C00A0AF */  sw         $zero, 0x9C($sp)
    /* 1AC7C 8002C46C A0028C8E */  lw         $t4, 0x2A0($s4)
    /* 1AC80 8002C470 A4028D8E */  lw         $t5, 0x2A4($s4)
    /* 1AC84 8002C474 A8028A8E */  lw         $t2, 0x2A8($s4)
    /* 1AC88 8002C478 A800ACAF */  sw         $t4, 0xA8($sp)
    /* 1AC8C 8002C47C AC00ADAF */  sw         $t5, 0xAC($sp)
    /* 1AC90 8002C480 B000AAAF */  sw         $t2, 0xB0($sp)
    /* 1AC94 8002C484 0867020C */  jal        func_80099C20
    /* 1AC98 8002C488 AC00A0AF */   sw        $zero, 0xAC($sp)
    /* 1AC9C 8002C48C 21200002 */  addu       $a0, $s0, $zero
    /* 1ACA0 8002C490 21282002 */  addu       $a1, $s1, $zero
    /* 1ACA4 8002C494 1A000624 */  addiu      $a2, $zero, 0x1A
    /* 1ACA8 8002C498 0867020C */  jal        func_80099C20
    /* 1ACAC 8002C49C 21804000 */   addu      $s0, $v0, $zero
    /* 1ACB0 8002C4A0 21004104 */  bgez       $v0, .L8002C528
    /* 1ACB4 8002C4A4 00000000 */   nop
    /* 1ACB8 8002C4A8 1F00001A */  blez       $s0, .L8002C528
    /* 1ACBC 8002C4AC 00000000 */   nop
    /* 1ACC0 8002C4B0 5002828E */  lw         $v0, 0x250($s4)
    /* 1ACC4 8002C4B4 4402838E */  lw         $v1, 0x244($s4)
    /* 1ACC8 8002C4B8 00000000 */  nop
    /* 1ACCC 8002C4BC 23104300 */  subu       $v0, $v0, $v1
    /* 1ACD0 8002C4C0 01104228 */  slti       $v0, $v0, 0x1001
    /* 1ACD4 8002C4C4 0100422C */  sltiu      $v0, $v0, 0x1
    /* 1ACD8 8002C4C8 4AB10008 */  j          .L8002C528
    /* 1ACDC 8002C4CC 1801A2AF */   sw        $v0, 0x118($sp)
  .L8002C4D0:
    /* 1ACE0 8002C4D0 21208002 */  addu       $a0, $s4, $zero
    /* 1ACE4 8002C4D4 5002868E */  lw         $a2, 0x250($s4)
    /* 1ACE8 8002C4D8 4402838E */  lw         $v1, 0x244($s4)
    /* 1ACEC 8002C4DC 21280000 */  addu       $a1, $zero, $zero
    /* 1ACF0 8002C4E0 A1B9000C */  jal        func_8002E684
    /* 1ACF4 8002C4E4 2380C300 */   subu      $s0, $a2, $v1
    /* 1ACF8 8002C4E8 00F04228 */  slti       $v0, $v0, -0x1000
    /* 1ACFC 8002C4EC 0E004010 */  beqz       $v0, .L8002C528
    /* 1AD00 8002C4F0 0100023C */   lui       $v0, (0x10000 >> 16)
    /* 1AD04 8002C4F4 2A105000 */  slt        $v0, $v0, $s0
    /* 1AD08 8002C4F8 0B004010 */  beqz       $v0, .L8002C528
    /* 1AD0C 8002C4FC 40101600 */   sll       $v0, $s6, 1
    /* 1AD10 8002C500 2A105000 */  slt        $v0, $v0, $s0
    /* 1AD14 8002C504 08004010 */  beqz       $v0, .L8002C528
    /* 1AD18 8002C508 00000000 */   nop
    /* 1AD1C 8002C50C 2E058282 */  lb         $v0, 0x52E($s4)
    /* 1AD20 8002C510 00000000 */  nop
    /* 1AD24 8002C514 04004014 */  bnez       $v0, .L8002C528
    /* 1AD28 8002C518 00000000 */   nop
    /* 1AD2C 8002C51C 01000C24 */  addiu      $t4, $zero, 0x1
    /* 1AD30 8002C520 1801ACAF */  sw         $t4, 0x118($sp)
    /* 1AD34 8002C524 01001224 */  addiu      $s2, $zero, 0x1
  .L8002C528:
    /* 1AD38 8002C528 1801AD8F */  lw         $t5, 0x118($sp)
    /* 1AD3C 8002C52C 00000000 */  nop
    /* 1AD40 8002C530 5D00A011 */  beqz       $t5, .L8002C6A8
    /* 1AD44 8002C534 00000000 */   nop
    /* 1AD48 8002C538 1401AA8F */  lw         $t2, 0x114($sp)
    /* 1AD4C 8002C53C 00000000 */  nop
    /* 1AD50 8002C540 59004015 */  bnez       $t2, .L8002C6A8
    /* 1AD54 8002C544 00000000 */   nop
    /* 1AD58 8002C548 07004016 */  bnez       $s2, .L8002C568
    /* 1AD5C 8002C54C A0029526 */   addiu     $s5, $s4, 0x2A0
    /* 1AD60 8002C550 1001A48F */  lw         $a0, 0x110($sp)
    /* 1AD64 8002C554 2128A002 */  addu       $a1, $s5, $zero
    /* 1AD68 8002C558 0867020C */  jal        func_80099C20
    /* 1AD6C 8002C55C 0C000624 */   addiu     $a2, $zero, 0xC
    /* 1AD70 8002C560 10004018 */  blez       $v0, .L8002C5A4
    /* 1AD74 8002C564 A800B027 */   addiu     $s0, $sp, 0xA8
  .L8002C568:
    /* 1AD78 8002C568 A002828E */  lw         $v0, 0x2A0($s4)
    /* 1AD7C 8002C56C A402858E */  lw         $a1, 0x2A4($s4)
    /* 1AD80 8002C570 A802838E */  lw         $v1, 0x2A8($s4)
    /* 1AD84 8002C574 23100200 */  negu       $v0, $v0
    /* 1AD88 8002C578 C2270200 */  srl        $a0, $v0, 31
    /* 1AD8C 8002C57C 21104400 */  addu       $v0, $v0, $a0
    /* 1AD90 8002C580 43100200 */  sra        $v0, $v0, 1
    /* 1AD94 8002C584 23180300 */  negu       $v1, $v1
    /* 1AD98 8002C588 9800A2AF */  sw         $v0, 0x98($sp)
    /* 1AD9C 8002C58C C2170300 */  srl        $v0, $v1, 31
    /* 1ADA0 8002C590 21186200 */  addu       $v1, $v1, $v0
    /* 1ADA4 8002C594 43180300 */  sra        $v1, $v1, 1
    /* 1ADA8 8002C598 9C00A5AF */  sw         $a1, 0x9C($sp)
    /* 1ADAC 8002C59C 87B10008 */  j          .L8002C61C
    /* 1ADB0 8002C5A0 A000A3AF */   sw        $v1, 0xA0($sp)
  .L8002C5A4:
    /* 1ADB4 8002C5A4 21200002 */  addu       $a0, $s0, $zero
    /* 1ADB8 8002C5A8 60028B8E */  lw         $t3, 0x260($s4)
    /* 1ADBC 8002C5AC 64028C8E */  lw         $t4, 0x264($s4)
    /* 1ADC0 8002C5B0 68028D8E */  lw         $t5, 0x268($s4)
    /* 1ADC4 8002C5B4 A800ABAF */  sw         $t3, 0xA8($sp)
    /* 1ADC8 8002C5B8 AC00ACAF */  sw         $t4, 0xAC($sp)
    /* 1ADCC 8002C5BC B000ADAF */  sw         $t5, 0xB0($sp)
    /* 1ADD0 8002C5C0 7165020C */  jal        func_800995C4
    /* 1ADD4 8002C5C4 21284000 */   addu      $a1, $v0, $zero
    /* 1ADD8 8002C5C8 D800B127 */  addiu      $s1, $sp, 0xD8
    /* 1ADDC 8002C5CC 21202002 */  addu       $a0, $s1, $zero
    /* 1ADE0 8002C5D0 03000524 */  addiu      $a1, $zero, 0x3
    /* 1ADE4 8002C5D4 21300002 */  addu       $a2, $s0, $zero
    /* 1ADE8 8002C5D8 B800B327 */  addiu      $s3, $sp, 0xB8
    /* 1ADEC 8002C5DC B565020C */  jal        func_800996D4
    /* 1ADF0 8002C5E0 C800B227 */   addiu     $s2, $sp, 0xC8
    /* 1ADF4 8002C5E4 21204002 */  addu       $a0, $s2, $zero
    /* 1ADF8 8002C5E8 21282002 */  addu       $a1, $s1, $zero
    /* 1ADFC 8002C5EC D765020C */  jal        func_8009975C
    /* 1AE00 8002C5F0 02000624 */   addiu     $a2, $zero, 0x2
    /* 1AE04 8002C5F4 21206002 */  addu       $a0, $s3, $zero
    /* 1AE08 8002C5F8 2128A002 */  addu       $a1, $s5, $zero
    /* 1AE0C 8002C5FC 3466020C */  jal        func_800998D0
    /* 1AE10 8002C600 21304002 */   addu      $a2, $s2, $zero
    /* 1AE14 8002C604 B800A28F */  lw         $v0, 0xB8($sp)
    /* 1AE18 8002C608 BC00A38F */  lw         $v1, 0xBC($sp)
    /* 1AE1C 8002C60C C000A48F */  lw         $a0, 0xC0($sp)
    /* 1AE20 8002C610 9800A2AF */  sw         $v0, 0x98($sp)
    /* 1AE24 8002C614 9C00A3AF */  sw         $v1, 0x9C($sp)
    /* 1AE28 8002C618 A000A4AF */  sw         $a0, 0xA0($sp)
  .L8002C61C:
    /* 1AE2C 8002C61C D005828E */  lw         $v0, 0x5D0($s4)
    /* 1AE30 8002C620 00000000 */  nop
    /* 1AE34 8002C624 1400438C */  lw         $v1, 0x14($v0)
    /* 1AE38 8002C628 00000000 */  nop
    /* 1AE3C 8002C62C 0C006010 */  beqz       $v1, .L8002C660
    /* 1AE40 8002C630 0100053C */   lui       $a1, (0x10000 >> 16)
    /* 1AE44 8002C634 2120A002 */  addu       $a0, $s5, $zero
    /* 1AE48 8002C638 9800A28F */  lw         $v0, 0x98($sp)
    /* 1AE4C 8002C63C 9C00A38F */  lw         $v1, 0x9C($sp)
    /* 1AE50 8002C640 A000A78F */  lw         $a3, 0xA0($sp)
    /* 1AE54 8002C644 18000624 */  addiu      $a2, $zero, 0x18
    /* 1AE58 8002C648 A00282AE */  sw         $v0, 0x2A0($s4)
    /* 1AE5C 8002C64C 0400A3AE */  sw         $v1, 0x4($s5)
    /* 1AE60 8002C650 508C000C */  jal        func_80023140
    /* 1AE64 8002C654 0800A7AE */   sw        $a3, 0x8($s5)
    /* 1AE68 8002C658 9EB10008 */  j          .L8002C678
    /* 1AE6C 8002C65C 00000000 */   nop
  .L8002C660:
    /* 1AE70 8002C660 9800A28F */  lw         $v0, 0x98($sp)
    /* 1AE74 8002C664 9C00A38F */  lw         $v1, 0x9C($sp)
    /* 1AE78 8002C668 A000A48F */  lw         $a0, 0xA0($sp)
    /* 1AE7C 8002C66C A00282AE */  sw         $v0, 0x2A0($s4)
    /* 1AE80 8002C670 0400A3AE */  sw         $v1, 0x4($s5)
    /* 1AE84 8002C674 0800A4AE */  sw         $a0, 0x8($s5)
  .L8002C678:
    /* 1AE88 8002C678 52B9000C */  jal        func_8002E548
    /* 1AE8C 8002C67C 21208002 */   addu      $a0, $s4, $zero
    /* 1AE90 8002C680 9C02828E */  lw         $v0, 0x29C($s4)
    /* 1AE94 8002C684 00000000 */  nop
    /* 1AE98 8002C688 00084228 */  slti       $v0, $v0, 0x800
    /* 1AE9C 8002C68C 06004010 */  beqz       $v0, .L8002C6A8
    /* 1AEA0 8002C690 0100053C */   lui       $a1, (0x10000 >> 16)
    /* 1AEA4 8002C694 2120A002 */  addu       $a0, $s5, $zero
    /* 1AEA8 8002C698 508C000C */  jal        func_80023140
    /* 1AEAC 8002C69C 18000624 */   addiu     $a2, $zero, 0x18
    /* 1AEB0 8002C6A0 52B9000C */  jal        func_8002E548
    /* 1AEB4 8002C6A4 21208002 */   addu      $a0, $s4, $zero
  .L8002C6A8:
    /* 1AEB8 8002C6A8 5802828E */  lw         $v0, 0x258($s4)
    /* 1AEBC 8002C6AC 00000000 */  nop
    /* 1AEC0 8002C6B0 00044228 */  slti       $v0, $v0, 0x400
    /* 1AEC4 8002C6B4 18004010 */  beqz       $v0, .L8002C718
    /* 1AEC8 8002C6B8 2120E002 */   addu      $a0, $s7, $zero
    /* 1AECC 8002C6BC 30038526 */  addiu      $a1, $s4, 0x330
    /* 1AED0 8002C6C0 0867020C */  jal        func_80099C20
    /* 1AED4 8002C6C4 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1AED8 8002C6C8 21208002 */  addu       $a0, $s4, $zero
    /* 1AEDC 8002C6CC 21280000 */  addu       $a1, $zero, $zero
    /* 1AEE0 8002C6D0 A1B9000C */  jal        func_8002E684
    /* 1AEE4 8002C6D4 21804000 */   addu      $s0, $v0, $zero
    /* 1AEE8 8002C6D8 1E00001A */  blez       $s0, .L8002C754
    /* 1AEEC 8002C6DC 00000000 */   nop
    /* 1AEF0 8002C6E0 0500401C */  bgtz       $v0, .L8002C6F8
    /* 1AEF4 8002C6E4 00000000 */   nop
    /* 1AEF8 8002C6E8 2E058282 */  lb         $v0, 0x52E($s4)
    /* 1AEFC 8002C6EC 00000000 */  nop
    /* 1AF00 8002C6F0 18004010 */  beqz       $v0, .L8002C754
    /* 1AF04 8002C6F4 00000000 */   nop
  .L8002C6F8:
    /* 1AF08 8002C6F8 CC05828E */  lw         $v0, 0x5CC($s4)
    /* 1AF0C 8002C6FC 00000000 */  nop
    /* 1AF10 8002C700 1000438C */  lw         $v1, 0x10($v0)
    /* 1AF14 8002C704 00000000 */  nop
    /* 1AF18 8002C708 13006010 */  beqz       $v1, .L8002C758
    /* 1AF1C 8002C70C 01000224 */   addiu     $v0, $zero, 0x1
    /* 1AF20 8002C710 D6B10008 */  j          .L8002C758
    /* 1AF24 8002C714 2E0582A2 */   sb        $v0, 0x52E($s4)
  .L8002C718:
    /* 1AF28 8002C718 2E058282 */  lb         $v0, 0x52E($s4)
    /* 1AF2C 8002C71C 00000000 */  nop
    /* 1AF30 8002C720 0D004010 */  beqz       $v0, .L8002C758
    /* 1AF34 8002C724 00000000 */   nop
    /* 1AF38 8002C728 3802848E */  lw         $a0, 0x238($s4)
    /* 1AF3C 8002C72C 4C02838E */  lw         $v1, 0x24C($s4)
    /* 1AF40 8002C730 00000000 */  nop
    /* 1AF44 8002C734 2A106400 */  slt        $v0, $v1, $a0
    /* 1AF48 8002C738 07004014 */  bnez       $v0, .L8002C758
    /* 1AF4C 8002C73C FFFF023C */   lui       $v0, (0xFFFF5556 >> 16)
    /* 1AF50 8002C740 56554234 */  ori        $v0, $v0, (0xFFFF5556 & 0xFFFF)
    /* 1AF54 8002C744 21106200 */  addu       $v0, $v1, $v0
    /* 1AF58 8002C748 2A104400 */  slt        $v0, $v0, $a0
    /* 1AF5C 8002C74C 02004010 */  beqz       $v0, .L8002C758
    /* 1AF60 8002C750 00000000 */   nop
  .L8002C754:
    /* 1AF64 8002C754 2E0580A2 */  sb         $zero, 0x52E($s4)
  .L8002C758:
    /* 1AF68 8002C758 6402828E */  lw         $v0, 0x264($s4)
    /* 1AF6C 8002C75C 00000000 */  nop
    /* 1AF70 8002C760 00044228 */  slti       $v0, $v0, 0x400
    /* 1AF74 8002C764 15004010 */  beqz       $v0, .L8002C7BC
    /* 1AF78 8002C768 30038526 */   addiu     $a1, $s4, 0x330
    /* 1AF7C 8002C76C 1001A48F */  lw         $a0, 0x110($sp)
    /* 1AF80 8002C770 0867020C */  jal        func_80099C20
    /* 1AF84 8002C774 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 1AF88 8002C778 1F004104 */  bgez       $v0, .L8002C7F8
    /* 1AF8C 8002C77C 21208002 */   addu      $a0, $s4, $zero
    /* 1AF90 8002C780 A1B9000C */  jal        func_8002E684
    /* 1AF94 8002C784 21280000 */   addu      $a1, $zero, $zero
    /* 1AF98 8002C788 CC05838E */  lw         $v1, 0x5CC($s4)
    /* 1AF9C 8002C78C 00000000 */  nop
    /* 1AFA0 8002C790 1000648C */  lw         $a0, 0x10($v1)
    /* 1AFA4 8002C794 00000000 */  nop
    /* 1AFA8 8002C798 18008010 */  beqz       $a0, .L8002C7FC
    /* 1AFAC 8002C79C 21184000 */   addu      $v1, $v0, $zero
    /* 1AFB0 8002C7A0 00106228 */  slti       $v0, $v1, 0x1000
    /* 1AFB4 8002C7A4 15004010 */  beqz       $v0, .L8002C7FC
    /* 1AFB8 8002C7A8 01E06228 */   slti      $v0, $v1, -0x1FFF
    /* 1AFBC 8002C7AC 13004014 */  bnez       $v0, .L8002C7FC
    /* 1AFC0 8002C7B0 01000224 */   addiu     $v0, $zero, 0x1
    /* 1AFC4 8002C7B4 FFB10008 */  j          .L8002C7FC
    /* 1AFC8 8002C7B8 2F0582A2 */   sb        $v0, 0x52F($s4)
  .L8002C7BC:
    /* 1AFCC 8002C7BC 2F058282 */  lb         $v0, 0x52F($s4)
    /* 1AFD0 8002C7C0 00000000 */  nop
    /* 1AFD4 8002C7C4 0D004010 */  beqz       $v0, .L8002C7FC
    /* 1AFD8 8002C7C8 00000000 */   nop
    /* 1AFDC 8002C7CC 4402848E */  lw         $a0, 0x244($s4)
    /* 1AFE0 8002C7D0 5002838E */  lw         $v1, 0x250($s4)
    /* 1AFE4 8002C7D4 00000000 */  nop
    /* 1AFE8 8002C7D8 2A106400 */  slt        $v0, $v1, $a0
    /* 1AFEC 8002C7DC 07004014 */  bnez       $v0, .L8002C7FC
    /* 1AFF0 8002C7E0 FFFF023C */   lui       $v0, (0xFFFF5556 >> 16)
    /* 1AFF4 8002C7E4 56554234 */  ori        $v0, $v0, (0xFFFF5556 & 0xFFFF)
    /* 1AFF8 8002C7E8 21106200 */  addu       $v0, $v1, $v0
    /* 1AFFC 8002C7EC 2A104400 */  slt        $v0, $v0, $a0
    /* 1B000 8002C7F0 02004010 */  beqz       $v0, .L8002C7FC
    /* 1B004 8002C7F4 00000000 */   nop
  .L8002C7F8:
    /* 1B008 8002C7F8 2F0580A2 */  sb         $zero, 0x52F($s4)
  .L8002C7FC:
    /* 1B00C 8002C7FC 2E058282 */  lb         $v0, 0x52E($s4)
    /* 1B010 8002C800 00000000 */  nop
    /* 1B014 8002C804 2D004010 */  beqz       $v0, .L8002C8BC
    /* 1B018 8002C808 00000000 */   nop
    /* 1B01C 8002C80C 4C02828E */  lw         $v0, 0x24C($s4)
    /* 1B020 8002C810 0801AB8F */  lw         $t3, 0x108($sp)
    /* 1B024 8002C814 00000000 */  nop
    /* 1B028 8002C818 2A106201 */  slt        $v0, $t3, $v0
    /* 1B02C 8002C81C 27004010 */  beqz       $v0, .L8002C8BC
    /* 1B030 8002C820 21208002 */   addu      $a0, $s4, $zero
    /* 1B034 8002C824 5800A28F */  lw         $v0, 0x58($sp)
    /* 1B038 8002C828 5C00A38F */  lw         $v1, 0x5C($sp)
    /* 1B03C 8002C82C 6000A68F */  lw         $a2, 0x60($sp)
    /* 1B040 8002C830 21280000 */  addu       $a1, $zero, $zero
    /* 1B044 8002C834 4C028BAE */  sw         $t3, 0x24C($s4)
    /* 1B048 8002C838 540282AE */  sw         $v0, 0x254($s4)
    /* 1B04C 8002C83C 0400E3AE */  sw         $v1, 0x4($s7)
    /* 1B050 8002C840 A1B9000C */  jal        func_8002E684
    /* 1B054 8002C844 0800E6AE */   sw        $a2, 0x8($s7)
    /* 1B058 8002C848 1C004018 */  blez       $v0, .L8002C8BC
    /* 1B05C 8002C84C 00000000 */   nop
    /* 1B060 8002C850 3802828E */  lw         $v0, 0x238($s4)
    /* 1B064 8002C854 4402838E */  lw         $v1, 0x244($s4)
    /* 1B068 8002C858 00000000 */  nop
    /* 1B06C 8002C85C 2A104300 */  slt        $v0, $v0, $v1
    /* 1B070 8002C860 16004010 */  beqz       $v0, .L8002C8BC
    /* 1B074 8002C864 00000000 */   nop
    /* 1B078 8002C868 9800B027 */  addiu      $s0, $sp, 0x98
    /* 1B07C 8002C86C 21200002 */  addu       $a0, $s0, $zero
    /* 1B080 8002C870 C4038526 */  addiu      $a1, $s4, 0x3C4
    /* 1B084 8002C874 3466020C */  jal        func_800998D0
    /* 1B088 8002C878 2130C003 */   addu      $a2, $fp, $zero
    /* 1B08C 8002C87C 21280002 */  addu       $a1, $s0, $zero
    /* 1B090 8002C880 2001A48F */  lw         $a0, 0x120($sp)
    /* 1B094 8002C884 11000624 */  addiu      $a2, $zero, 0x11
    /* 1B098 8002C888 0867020C */  jal        func_80099C20
    /* 1B09C 8002C88C 9C00A0AF */   sw        $zero, 0x9C($sp)
    /* 1B0A0 8002C890 0A004018 */  blez       $v0, .L8002C8BC
    /* 1B0A4 8002C894 2120C003 */   addu      $a0, $fp, $zero
    /* 1B0A8 8002C898 F465020C */  jal        func_800997D0
    /* 1B0AC 8002C89C 21280002 */   addu      $a1, $s0, $zero
    /* 1B0B0 8002C8A0 CC05848E */  lw         $a0, 0x5CC($s4)
    /* 1B0B4 8002C8A4 21280002 */  addu       $a1, $s0, $zero
    /* 1B0B8 8002C8A8 F465020C */  jal        func_800997D0
    /* 1B0BC 8002C8AC 04008424 */   addiu     $a0, $a0, 0x4
    /* 1B0C0 8002C8B0 1C01A48F */  lw         $a0, 0x11C($sp)
    /* 1B0C4 8002C8B4 F465020C */  jal        func_800997D0
    /* 1B0C8 8002C8B8 21280002 */   addu      $a1, $s0, $zero
  .L8002C8BC:
    /* 1B0CC 8002C8BC 2F058282 */  lb         $v0, 0x52F($s4)
    /* 1B0D0 8002C8C0 00000000 */  nop
    /* 1B0D4 8002C8C4 2C004010 */  beqz       $v0, .L8002C978
    /* 1B0D8 8002C8C8 21208002 */   addu      $a0, $s4, $zero
    /* 1B0DC 8002C8CC 5002828E */  lw         $v0, 0x250($s4)
    /* 1B0E0 8002C8D0 0C01AC8F */  lw         $t4, 0x10C($sp)
    /* 1B0E4 8002C8D4 00000000 */  nop
    /* 1B0E8 8002C8D8 2A108201 */  slt        $v0, $t4, $v0
    /* 1B0EC 8002C8DC 26004010 */  beqz       $v0, .L8002C978
    /* 1B0F0 8002C8E0 00000000 */   nop
    /* 1B0F4 8002C8E4 6800A28F */  lw         $v0, 0x68($sp)
    /* 1B0F8 8002C8E8 6C00A48F */  lw         $a0, 0x6C($sp)
    /* 1B0FC 8002C8EC 7000A58F */  lw         $a1, 0x70($sp)
    /* 1B100 8002C8F0 50028CAE */  sw         $t4, 0x250($s4)
    /* 1B104 8002C8F4 600282AE */  sw         $v0, 0x260($s4)
    /* 1B108 8002C8F8 1001AD8F */  lw         $t5, 0x110($sp)
    /* 1B10C 8002C8FC 00000000 */  nop
    /* 1B110 8002C900 0400A4AD */  sw         $a0, 0x4($t5)
    /* 1B114 8002C904 0800A5AD */  sw         $a1, 0x8($t5)
    /* 1B118 8002C908 3802838E */  lw         $v1, 0x238($s4)
    /* 1B11C 8002C90C 4402828E */  lw         $v0, 0x244($s4)
    /* 1B120 8002C910 00000000 */  nop
    /* 1B124 8002C914 2A104300 */  slt        $v0, $v0, $v1
    /* 1B128 8002C918 17004010 */  beqz       $v0, .L8002C978
    /* 1B12C 8002C91C 21208002 */   addu      $a0, $s4, $zero
    /* 1B130 8002C920 9800B027 */  addiu      $s0, $sp, 0x98
    /* 1B134 8002C924 21200002 */  addu       $a0, $s0, $zero
    /* 1B138 8002C928 1C01A68F */  lw         $a2, 0x11C($sp)
    /* 1B13C 8002C92C 3466020C */  jal        func_800998D0
    /* 1B140 8002C930 D0038526 */   addiu     $a1, $s4, 0x3D0
    /* 1B144 8002C934 21280002 */  addu       $a1, $s0, $zero
    /* 1B148 8002C938 2401A48F */  lw         $a0, 0x124($sp)
    /* 1B14C 8002C93C 11000624 */  addiu      $a2, $zero, 0x11
    /* 1B150 8002C940 0867020C */  jal        func_80099C20
    /* 1B154 8002C944 9C00A0AF */   sw        $zero, 0x9C($sp)
    /* 1B158 8002C948 0A004018 */  blez       $v0, .L8002C974
    /* 1B15C 8002C94C 2120C003 */   addu      $a0, $fp, $zero
    /* 1B160 8002C950 F465020C */  jal        func_800997D0
    /* 1B164 8002C954 21280002 */   addu      $a1, $s0, $zero
    /* 1B168 8002C958 CC05848E */  lw         $a0, 0x5CC($s4)
    /* 1B16C 8002C95C 21280002 */  addu       $a1, $s0, $zero
    /* 1B170 8002C960 F465020C */  jal        func_800997D0
    /* 1B174 8002C964 04008424 */   addiu     $a0, $a0, 0x4
    /* 1B178 8002C968 1C01A48F */  lw         $a0, 0x11C($sp)
    /* 1B17C 8002C96C F465020C */  jal        func_800997D0
    /* 1B180 8002C970 21280002 */   addu      $a1, $s0, $zero
  .L8002C974:
    /* 1B184 8002C974 21208002 */  addu       $a0, $s4, $zero
  .L8002C978:
    /* 1B188 8002C978 03AD000C */  jal        func_8002B40C
    /* 1B18C 8002C97C 01000524 */   addiu     $a1, $zero, 0x1
    /* 1B190 8002C980 A005848E */  lw         $a0, 0x5A0($s4)
    /* 1B194 8002C984 4C02878E */  lw         $a3, 0x24C($s4)
    /* 1B198 8002C988 3802868E */  lw         $a2, 0x238($s4)
    /* 1B19C 8002C98C BC00838C */  lw         $v1, 0xBC($a0)
    /* 1B1A0 8002C990 B400858C */  lw         $a1, 0xB4($a0)
    /* 1B1A4 8002C994 21186700 */  addu       $v1, $v1, $a3
    /* 1B1A8 8002C998 23186500 */  subu       $v1, $v1, $a1
    /* 1B1AC 8002C99C 2A106600 */  slt        $v0, $v1, $a2
    /* 1B1B0 8002C9A0 17004014 */  bnez       $v0, .L8002CA00
    /* 1B1B4 8002C9A4 21880000 */   addu      $s1, $zero, $zero
    /* 1B1B8 8002C9A8 D005828E */  lw         $v0, 0x5D0($s4)
    /* 1B1BC 8002C9AC 380283AE */  sw         $v1, 0x238($s4)
    /* 1B1C0 8002C9B0 01000324 */  addiu      $v1, $zero, 0x1
    /* 1B1C4 8002C9B4 140043AC */  sw         $v1, 0x14($v0)
    /* 1B1C8 8002C9B8 58008482 */  lb         $a0, 0x58($s4)
    /* 1B1CC 8002C9BC 00000000 */  nop
    /* 1B1D0 8002C9C0 1B008010 */  beqz       $a0, .L8002CA30
    /* 1B1D4 8002C9C4 00000000 */   nop
    /* 1B1D8 8002C9C8 D005848E */  lw         $a0, 0x5D0($s4)
    /* 1B1DC 8002C9CC 3802838E */  lw         $v1, 0x238($s4)
    /* 1B1E0 8002C9D0 0800828C */  lw         $v0, 0x8($a0)
    /* 1B1E4 8002C9D4 4402848E */  lw         $a0, 0x244($s4)
    /* 1B1E8 8002C9D8 23186200 */  subu       $v1, $v1, $v0
    /* 1B1EC 8002C9DC 23104300 */  subu       $v0, $v0, $v1
    /* 1B1F0 8002C9E0 440282AE */  sw         $v0, 0x244($s4)
    /* 1B1F4 8002C9E4 2A108200 */  slt        $v0, $a0, $v0
    /* 1B1F8 8002C9E8 03004010 */  beqz       $v0, .L8002C9F8
    /* 1B1FC 8002C9EC 00000000 */   nop
    /* 1B200 8002C9F0 8CB20008 */  j          .L8002CA30
    /* 1B204 8002C9F4 440284AE */   sw        $a0, 0x244($s4)
  .L8002C9F8:
    /* 1B208 8002C9F8 8CB20008 */  j          .L8002CA30
    /* 1B20C 8002C9FC 01001124 */   addiu     $s1, $zero, 0x1
  .L8002CA00:
    /* 1B210 8002CA00 C000838C */  lw         $v1, 0xC0($a0)
    /* 1B214 8002CA04 2110E500 */  addu       $v0, $a3, $a1
    /* 1B218 8002CA08 23104300 */  subu       $v0, $v0, $v1
    /* 1B21C 8002CA0C 2A104600 */  slt        $v0, $v0, $a2
    /* 1B220 8002CA10 04004014 */  bnez       $v0, .L8002CA24
    /* 1B224 8002CA14 01000224 */   addiu     $v0, $zero, 0x1
    /* 1B228 8002CA18 D005838E */  lw         $v1, 0x5D0($s4)
    /* 1B22C 8002CA1C 8CB20008 */  j          .L8002CA30
    /* 1B230 8002CA20 140062AC */   sw        $v0, 0x14($v1)
  .L8002CA24:
    /* 1B234 8002CA24 D005828E */  lw         $v0, 0x5D0($s4)
    /* 1B238 8002CA28 00000000 */  nop
    /* 1B23C 8002CA2C 140040AC */  sw         $zero, 0x14($v0)
  .L8002CA30:
    /* 1B240 8002CA30 A005838E */  lw         $v1, 0x5A0($s4)
    /* 1B244 8002CA34 5002828E */  lw         $v0, 0x250($s4)
    /* 1B248 8002CA38 B800648C */  lw         $a0, 0xB8($v1)
    /* 1B24C 8002CA3C 4402858E */  lw         $a1, 0x244($s4)
    /* 1B250 8002CA40 21104400 */  addu       $v0, $v0, $a0
    /* 1B254 8002CA44 2A104500 */  slt        $v0, $v0, $a1
    /* 1B258 8002CA48 04004014 */  bnez       $v0, .L8002CA5C
    /* 1B25C 8002CA4C 01000224 */   addiu     $v0, $zero, 0x1
    /* 1B260 8002CA50 D005838E */  lw         $v1, 0x5D0($s4)
    /* 1B264 8002CA54 9AB20008 */  j          .L8002CA68
    /* 1B268 8002CA58 180062AC */   sw        $v0, 0x18($v1)
  .L8002CA5C:
    /* 1B26C 8002CA5C D005828E */  lw         $v0, 0x5D0($s4)
    /* 1B270 8002CA60 00000000 */  nop
    /* 1B274 8002CA64 180040AC */  sw         $zero, 0x18($v0)
  .L8002CA68:
    /* 1B278 8002CA68 21208002 */  addu       $a0, $s4, $zero
    /* 1B27C 8002CA6C 03AD000C */  jal        func_8002B40C
    /* 1B280 8002CA70 21280000 */   addu      $a1, $zero, $zero
    /* 1B284 8002CA74 A005848E */  lw         $a0, 0x5A0($s4)
    /* 1B288 8002CA78 5002878E */  lw         $a3, 0x250($s4)
    /* 1B28C 8002CA7C 4402868E */  lw         $a2, 0x244($s4)
    /* 1B290 8002CA80 C400838C */  lw         $v1, 0xC4($a0)
    /* 1B294 8002CA84 B800858C */  lw         $a1, 0xB8($a0)
    /* 1B298 8002CA88 21186700 */  addu       $v1, $v1, $a3
    /* 1B29C 8002CA8C 23186500 */  subu       $v1, $v1, $a1
    /* 1B2A0 8002CA90 2A106600 */  slt        $v0, $v1, $a2
    /* 1B2A4 8002CA94 52004014 */  bnez       $v0, .L8002CBE0
    /* 1B2A8 8002CA98 2110E500 */   addu      $v0, $a3, $a1
    /* 1B2AC 8002CA9C D005828E */  lw         $v0, 0x5D0($s4)
    /* 1B2B0 8002CAA0 440283AE */  sw         $v1, 0x244($s4)
    /* 1B2B4 8002CAA4 01000324 */  addiu      $v1, $zero, 0x1
    /* 1B2B8 8002CAA8 180043AC */  sw         $v1, 0x18($v0)
    /* 1B2BC 8002CAAC 58008482 */  lb         $a0, 0x58($s4)
    /* 1B2C0 8002CAB0 00000000 */  nop
    /* 1B2C4 8002CAB4 56008010 */  beqz       $a0, .L8002CC10
    /* 1B2C8 8002CAB8 00000000 */   nop
    /* 1B2CC 8002CABC D005888E */  lw         $t0, 0x5D0($s4)
    /* 1B2D0 8002CAC0 00000000 */  nop
    /* 1B2D4 8002CAC4 1400028D */  lw         $v0, 0x14($t0)
    /* 1B2D8 8002CAC8 00000000 */  nop
    /* 1B2DC 8002CACC 50004014 */  bnez       $v0, .L8002CC10
    /* 1B2E0 8002CAD0 21300001 */   addu      $a2, $t0, $zero
    /* 1B2E4 8002CAD4 FEFF053C */  lui        $a1, (0xFFFE0000 >> 16)
    /* 1B2E8 8002CAD8 C805828E */  lw         $v0, 0x5C8($s4)
    /* 1B2EC 8002CADC A402838E */  lw         $v1, 0x2A4($s4)
    /* 1B2F0 8002CAE0 1000448C */  lw         $a0, 0x10($v0)
    /* 1B2F4 8002CAE4 00000000 */  nop
    /* 1B2F8 8002CAE8 07008014 */  bnez       $a0, .L8002CB08
    /* 1B2FC 8002CAEC 2A28A300 */   slt       $a1, $a1, $v1
    /* 1B300 8002CAF0 3004828E */  lw         $v0, 0x430($s4)
    /* 1B304 8002CAF4 00000000 */  nop
    /* 1B308 8002CAF8 C9004228 */  slti       $v0, $v0, 0xC9
    /* 1B30C 8002CAFC 02004014 */  bnez       $v0, .L8002CB08
    /* 1B310 8002CB00 00000000 */   nop
    /* 1B314 8002CB04 21280000 */  addu       $a1, $zero, $zero
  .L8002CB08:
    /* 1B318 8002CB08 4A018282 */  lb         $v0, 0x14A($s4)
    /* 1B31C 8002CB0C 00000000 */  nop
    /* 1B320 8002CB10 02004010 */  beqz       $v0, .L8002CB1C
    /* 1B324 8002CB14 00000000 */   nop
    /* 1B328 8002CB18 21280000 */  addu       $a1, $zero, $zero
  .L8002CB1C:
    /* 1B32C 8002CB1C 1000A010 */  beqz       $a1, .L8002CB60
    /* 1B330 8002CB20 00000000 */   nop
    /* 1B334 8002CB24 4402838E */  lw         $v1, 0x244($s4)
    /* 1B338 8002CB28 8C00A28F */  lw         $v0, 0x8C($sp)
    /* 1B33C 8002CB2C 00000000 */  nop
    /* 1B340 8002CB30 23206200 */  subu       $a0, $v1, $v0
    /* 1B344 8002CB34 36008018 */  blez       $a0, .L8002CC10
    /* 1B348 8002CB38 00000000 */   nop
    /* 1B34C 8002CB3C 0800C28C */  lw         $v0, 0x8($a2)
    /* 1B350 8002CB40 00000000 */  nop
    /* 1B354 8002CB44 21104400 */  addu       $v0, $v0, $a0
    /* 1B358 8002CB48 0800C2AC */  sw         $v0, 0x8($a2)
    /* 1B35C 8002CB4C 3802838E */  lw         $v1, 0x238($s4)
    /* 1B360 8002CB50 00000000 */  nop
    /* 1B364 8002CB54 21186400 */  addu       $v1, $v1, $a0
    /* 1B368 8002CB58 04B30008 */  j          .L8002CC10
    /* 1B36C 8002CB5C 380283AE */   sw        $v1, 0x238($s4)
  .L8002CB60:
    /* 1B370 8002CB60 0800C28C */  lw         $v0, 0x8($a2)
    /* 1B374 8002CB64 4402838E */  lw         $v1, 0x244($s4)
    /* 1B378 8002CB68 3802868E */  lw         $a2, 0x238($s4)
    /* 1B37C 8002CB6C 23184300 */  subu       $v1, $v0, $v1
    /* 1B380 8002CB70 21284300 */  addu       $a1, $v0, $v1
    /* 1B384 8002CB74 2A20C500 */  slt        $a0, $a2, $a1
    /* 1B388 8002CB78 03008010 */  beqz       $a0, .L8002CB88
    /* 1B38C 8002CB7C 380285AE */   sw        $a1, 0x238($s4)
    /* 1B390 8002CB80 04B30008 */  j          .L8002CC10
    /* 1B394 8002CB84 380286AE */   sw        $a2, 0x238($s4)
  .L8002CB88:
    /* 1B398 8002CB88 A005848E */  lw         $a0, 0x5A0($s4)
    /* 1B39C 8002CB8C 4C02878E */  lw         $a3, 0x24C($s4)
    /* 1B3A0 8002CB90 BC00828C */  lw         $v0, 0xBC($a0)
    /* 1B3A4 8002CB94 B400868C */  lw         $a2, 0xB4($a0)
    /* 1B3A8 8002CB98 21104700 */  addu       $v0, $v0, $a3
    /* 1B3AC 8002CB9C 23104600 */  subu       $v0, $v0, $a2
    /* 1B3B0 8002CBA0 2A184500 */  slt        $v1, $v0, $a1
    /* 1B3B4 8002CBA4 04006014 */  bnez       $v1, .L8002CBB8
    /* 1B3B8 8002CBA8 01001124 */   addiu     $s1, $zero, 0x1
    /* 1B3BC 8002CBAC 380282AE */  sw         $v0, 0x238($s4)
    /* 1B3C0 8002CBB0 04B30008 */  j          .L8002CC10
    /* 1B3C4 8002CBB4 140011AD */   sw        $s1, 0x14($t0)
  .L8002CBB8:
    /* 1B3C8 8002CBB8 C000838C */  lw         $v1, 0xC0($a0)
    /* 1B3CC 8002CBBC 2110E600 */  addu       $v0, $a3, $a2
    /* 1B3D0 8002CBC0 23104300 */  subu       $v0, $v0, $v1
    /* 1B3D4 8002CBC4 2A104500 */  slt        $v0, $v0, $a1
    /* 1B3D8 8002CBC8 03004014 */  bnez       $v0, .L8002CBD8
    /* 1B3DC 8002CBCC 00000000 */   nop
    /* 1B3E0 8002CBD0 04B30008 */  j          .L8002CC10
    /* 1B3E4 8002CBD4 140011AD */   sw        $s1, 0x14($t0)
  .L8002CBD8:
    /* 1B3E8 8002CBD8 04B30008 */  j          .L8002CC10
    /* 1B3EC 8002CBDC 140000AD */   sw        $zero, 0x14($t0)
  .L8002CBE0:
    /* 1B3F0 8002CBE0 C800838C */  lw         $v1, 0xC8($a0)
    /* 1B3F4 8002CBE4 00000000 */  nop
    /* 1B3F8 8002CBE8 23104300 */  subu       $v0, $v0, $v1
    /* 1B3FC 8002CBEC 2A104600 */  slt        $v0, $v0, $a2
    /* 1B400 8002CBF0 04004014 */  bnez       $v0, .L8002CC04
    /* 1B404 8002CBF4 01000224 */   addiu     $v0, $zero, 0x1
    /* 1B408 8002CBF8 D005838E */  lw         $v1, 0x5D0($s4)
    /* 1B40C 8002CBFC 04B30008 */  j          .L8002CC10
    /* 1B410 8002CC00 180062AC */   sw        $v0, 0x18($v1)
  .L8002CC04:
    /* 1B414 8002CC04 D005828E */  lw         $v0, 0x5D0($s4)
    /* 1B418 8002CC08 00000000 */  nop
    /* 1B41C 8002CC0C 180040AC */  sw         $zero, 0x18($v0)
  .L8002CC10:
    /* 1B420 8002CC10 2C058296 */  lhu        $v0, 0x52C($s4)
    /* 1B424 8002CC14 00000000 */  nop
    /* 1B428 8002CC18 29004014 */  bnez       $v0, .L8002CCC0
    /* 1B42C 8002CC1C 03000224 */   addiu     $v0, $zero, 0x3
    /* 1B430 8002CC20 58008382 */  lb         $v1, 0x58($s4)
    /* 1B434 8002CC24 00000000 */  nop
    /* 1B438 8002CC28 12006214 */  bne        $v1, $v0, .L8002CC74
    /* 1B43C 8002CC2C 00000000 */   nop
    /* 1B440 8002CC30 1401AA8F */  lw         $t2, 0x114($sp)
    /* 1B444 8002CC34 00000000 */  nop
    /* 1B448 8002CC38 41004015 */  bnez       $t2, .L8002CD40
    /* 1B44C 8002CC3C 9800B027 */   addiu     $s0, $sp, 0x98
    /* 1B450 8002CC40 4402828E */  lw         $v0, 0x244($s4)
    /* 1B454 8002CC44 3802838E */  lw         $v1, 0x238($s4)
    /* 1B458 8002CC48 D005858E */  lw         $a1, 0x5D0($s4)
    /* 1B45C 8002CC4C 21104300 */  addu       $v0, $v0, $v1
    /* 1B460 8002CC50 C2270200 */  srl        $a0, $v0, 31
    /* 1B464 8002CC54 21104400 */  addu       $v0, $v0, $a0
    /* 1B468 8002CC58 0800A38C */  lw         $v1, 0x8($a1)
    /* 1B46C 8002CC5C 43100200 */  sra        $v0, $v0, 1
    /* 1B470 8002CC60 23104300 */  subu       $v0, $v0, $v1
    /* 1B474 8002CC64 36004004 */  bltz       $v0, .L8002CD40
    /* 1B478 8002CC68 21106200 */   addu      $v0, $v1, $v0
    /* 1B47C 8002CC6C 50B30008 */  j          .L8002CD40
    /* 1B480 8002CC70 0800A2AC */   sw        $v0, 0x8($a1)
  .L8002CC74:
    /* 1B484 8002CC74 D005858E */  lw         $a1, 0x5D0($s4)
    /* 1B488 8002CC78 00000000 */  nop
    /* 1B48C 8002CC7C 1800A28C */  lw         $v0, 0x18($a1)
    /* 1B490 8002CC80 00000000 */  nop
    /* 1B494 8002CC84 05004014 */  bnez       $v0, .L8002CC9C
    /* 1B498 8002CC88 00000000 */   nop
    /* 1B49C 8002CC8C 1400A28C */  lw         $v0, 0x14($a1)
    /* 1B4A0 8002CC90 00000000 */  nop
    /* 1B4A4 8002CC94 2A004010 */  beqz       $v0, .L8002CD40
    /* 1B4A8 8002CC98 9800B027 */   addiu     $s0, $sp, 0x98
  .L8002CC9C:
    /* 1B4AC 8002CC9C 4402828E */  lw         $v0, 0x244($s4)
    /* 1B4B0 8002CCA0 3802838E */  lw         $v1, 0x238($s4)
    /* 1B4B4 8002CCA4 00000000 */  nop
    /* 1B4B8 8002CCA8 21104300 */  addu       $v0, $v0, $v1
    /* 1B4BC 8002CCAC C2270200 */  srl        $a0, $v0, 31
    /* 1B4C0 8002CCB0 21104400 */  addu       $v0, $v0, $a0
    /* 1B4C4 8002CCB4 43100200 */  sra        $v0, $v0, 1
    /* 1B4C8 8002CCB8 4FB30008 */  j          .L8002CD3C
    /* 1B4CC 8002CCBC 0800A2AC */   sw        $v0, 0x8($a1)
  .L8002CCC0:
    /* 1B4D0 8002CCC0 2C058282 */  lb         $v0, 0x52C($s4)
    /* 1B4D4 8002CCC4 00000000 */  nop
    /* 1B4D8 8002CCC8 0C004010 */  beqz       $v0, .L8002CCFC
    /* 1B4DC 8002CCCC 00000000 */   nop
    /* 1B4E0 8002CCD0 D005828E */  lw         $v0, 0x5D0($s4)
    /* 1B4E4 8002CCD4 00000000 */  nop
    /* 1B4E8 8002CCD8 1400438C */  lw         $v1, 0x14($v0)
    /* 1B4EC 8002CCDC 00000000 */  nop
    /* 1B4F0 8002CCE0 06006010 */  beqz       $v1, .L8002CCFC
    /* 1B4F4 8002CCE4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1B4F8 8002CCE8 5400838E */  lw         $v1, 0x54($s4)
    /* 1B4FC 8002CCEC 00000000 */  nop
    /* 1B500 8002CCF0 870162A0 */  sb         $v0, 0x187($v1)
    /* 1B504 8002CCF4 4DB30008 */  j          .L8002CD34
    /* 1B508 8002CCF8 2C0580A2 */   sb        $zero, 0x52C($s4)
  .L8002CCFC:
    /* 1B50C 8002CCFC 2D058282 */  lb         $v0, 0x52D($s4)
    /* 1B510 8002CD00 00000000 */  nop
    /* 1B514 8002CD04 0E004010 */  beqz       $v0, .L8002CD40
    /* 1B518 8002CD08 9800B027 */   addiu     $s0, $sp, 0x98
    /* 1B51C 8002CD0C D005828E */  lw         $v0, 0x5D0($s4)
    /* 1B520 8002CD10 00000000 */  nop
    /* 1B524 8002CD14 1800438C */  lw         $v1, 0x18($v0)
    /* 1B528 8002CD18 00000000 */  nop
    /* 1B52C 8002CD1C 08006010 */  beqz       $v1, .L8002CD40
    /* 1B530 8002CD20 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 1B534 8002CD24 5400838E */  lw         $v1, 0x54($s4)
    /* 1B538 8002CD28 00000000 */  nop
    /* 1B53C 8002CD2C 870162A0 */  sb         $v0, 0x187($v1)
    /* 1B540 8002CD30 2D0580A2 */  sb         $zero, 0x52D($s4)
  .L8002CD34:
    /* 1B544 8002CD34 2E0580A2 */  sb         $zero, 0x52E($s4)
    /* 1B548 8002CD38 2F0580A2 */  sb         $zero, 0x52F($s4)
  .L8002CD3C:
    /* 1B54C 8002CD3C 9800B027 */  addiu      $s0, $sp, 0x98
  .L8002CD40:
    /* 1B550 8002CD40 21200002 */  addu       $a0, $s0, $zero
    /* 1B554 8002CD44 1C01A68F */  lw         $a2, 0x11C($sp)
    /* 1B558 8002CD48 3466020C */  jal        func_800998D0
    /* 1B55C 8002CD4C 2128C003 */   addu      $a1, $fp, $zero
    /* 1B560 8002CD50 21200002 */  addu       $a0, $s0, $zero
    /* 1B564 8002CD54 4C02838E */  lw         $v1, 0x24C($s4)
    /* 1B568 8002CD58 5002828E */  lw         $v0, 0x250($s4)
    /* 1B56C 8002CD5C 05000524 */  addiu      $a1, $zero, 0x5
    /* 1B570 8002CD60 23186200 */  subu       $v1, $v1, $v0
    /* 1B574 8002CD64 5267020C */  jal        func_80099D48
    /* 1B578 8002CD68 9C00A3AF */   sw        $v1, 0x9C($sp)
    /* 1B57C 8002CD6C 8F64020C */  jal        func_8009923C
    /* 1B580 8002CD70 21200002 */   addu      $a0, $s0, $zero
    /* 1B584 8002CD74 21204000 */  addu       $a0, $v0, $zero
    /* 1B588 8002CD78 17008018 */  blez       $a0, .L8002CDD8
    /* 1B58C 8002CD7C 00000000 */   nop
    /* 1B590 8002CD80 D005838E */  lw         $v1, 0x5D0($s4)
    /* 1B594 8002CD84 00000000 */  nop
    /* 1B598 8002CD88 1800628C */  lw         $v0, 0x18($v1)
    /* 1B59C 8002CD8C 00000000 */  nop
    /* 1B5A0 8002CD90 05004014 */  bnez       $v0, .L8002CDA8
    /* 1B5A4 8002CD94 00000000 */   nop
    /* 1B5A8 8002CD98 1400628C */  lw         $v0, 0x14($v1)
    /* 1B5AC 8002CD9C 00000000 */  nop
    /* 1B5B0 8002CDA0 0D004010 */  beqz       $v0, .L8002CDD8
    /* 1B5B4 8002CDA4 00000000 */   nop
  .L8002CDA8:
    /* 1B5B8 8002CDA8 4C02828E */  lw         $v0, 0x24C($s4)
    /* 1B5BC 8002CDAC 5002838E */  lw         $v1, 0x250($s4)
    /* 1B5C0 8002CDB0 00000000 */  nop
    /* 1B5C4 8002CDB4 23104300 */  subu       $v0, $v0, $v1
    /* 1B5C8 8002CDB8 43110200 */  sra        $v0, $v0, 5
    /* 1B5CC 8002CDBC 00130200 */  sll        $v0, $v0, 12
    /* 1B5D0 8002CDC0 1A004400 */  div        $zero, $v0, $a0
    /* 1B5D4 8002CDC4 12100000 */  mflo       $v0
    /* 1B5D8 8002CDC8 00000000 */  nop
    /* 1B5DC 8002CDCC 23100200 */  negu       $v0, $v0
    /* 1B5E0 8002CDD0 77B30008 */  j          .L8002CDDC
    /* 1B5E4 8002CDD4 540182AE */   sw        $v0, 0x154($s4)
  .L8002CDD8:
    /* 1B5E8 8002CDD8 540180AE */  sw         $zero, 0x154($s4)
  .L8002CDDC:
    /* 1B5EC 8002CDDC 5802828E */  lw         $v0, 0x258($s4)
    /* 1B5F0 8002CDE0 6402838E */  lw         $v1, 0x264($s4)
    /* 1B5F4 8002CDE4 00000000 */  nop
    /* 1B5F8 8002CDE8 2A104300 */  slt        $v0, $v0, $v1
    /* 1B5FC 8002CDEC 06004010 */  beqz       $v0, .L8002CE08
    /* 1B600 8002CDF0 B8038226 */   addiu     $v0, $s4, 0x3B8
    /* 1B604 8002CDF4 5402838E */  lw         $v1, 0x254($s4)
    /* 1B608 8002CDF8 0400E48E */  lw         $a0, 0x4($s7)
    /* 1B60C 8002CDFC 0800E58E */  lw         $a1, 0x8($s7)
    /* 1B610 8002CE00 87B30008 */  j          .L8002CE1C
    /* 1B614 8002CE04 B80383AE */   sw        $v1, 0x3B8($s4)
  .L8002CE08:
    /* 1B618 8002CE08 1001AA8F */  lw         $t2, 0x110($sp)
    /* 1B61C 8002CE0C 6002838E */  lw         $v1, 0x260($s4)
    /* 1B620 8002CE10 0400448D */  lw         $a0, 0x4($t2)
    /* 1B624 8002CE14 0800458D */  lw         $a1, 0x8($t2)
    /* 1B628 8002CE18 B80383AE */  sw         $v1, 0x3B8($s4)
  .L8002CE1C:
    /* 1B62C 8002CE1C 040044AC */  sw         $a0, 0x4($v0)
    /* 1B630 8002CE20 080045AC */  sw         $a1, 0x8($v0)
    /* 1B634 8002CE24 58008282 */  lb         $v0, 0x58($s4)
    /* 1B638 8002CE28 00000000 */  nop
    /* 1B63C 8002CE2C 1D004010 */  beqz       $v0, .L8002CEA4
    /* 1B640 8002CE30 00000000 */   nop
    /* 1B644 8002CE34 1B002012 */  beqz       $s1, .L8002CEA4
    /* 1B648 8002CE38 B800A427 */   addiu     $a0, $sp, 0xB8
    /* 1B64C 8002CE3C 1C01A68F */  lw         $a2, 0x11C($sp)
    /* 1B650 8002CE40 3466020C */  jal        func_800998D0
    /* 1B654 8002CE44 2128C003 */   addu      $a1, $fp, $zero
    /* 1B658 8002CE48 A800A427 */  addiu      $a0, $sp, 0xA8
    /* 1B65C 8002CE4C B800A28F */  lw         $v0, 0xB8($sp)
    /* 1B660 8002CE50 BC00A38F */  lw         $v1, 0xBC($sp)
    /* 1B664 8002CE54 C000A68F */  lw         $a2, 0xC0($sp)
    /* 1B668 8002CE58 11000524 */  addiu      $a1, $zero, 0x11
    /* 1B66C 8002CE5C A800A2AF */  sw         $v0, 0xA8($sp)
    /* 1B670 8002CE60 AC00A3AF */  sw         $v1, 0xAC($sp)
    /* 1B674 8002CE64 E563020C */  jal        func_80098F94
    /* 1B678 8002CE68 B000A6AF */   sw        $a2, 0xB0($sp)
    /* 1B67C 8002CE6C AC00A28F */  lw         $v0, 0xAC($sp)
    /* 1B680 8002CE70 00000000 */  nop
    /* 1B684 8002CE74 43110200 */  sra        $v0, $v0, 5
    /* 1B688 8002CE78 23200200 */  negu       $a0, $v0
    /* 1B68C 8002CE7C 9AF18328 */  slti       $v1, $a0, -0xE66
    /* 1B690 8002CE80 06006014 */  bnez       $v1, .L8002CE9C
    /* 1B694 8002CE84 AC00A2AF */   sw        $v0, 0xAC($sp)
    /* 1B698 8002CE88 670E8228 */  slti       $v0, $a0, 0xE67
    /* 1B69C 8002CE8C 04004010 */  beqz       $v0, .L8002CEA0
    /* 1B6A0 8002CE90 660E0324 */   addiu     $v1, $zero, 0xE66
    /* 1B6A4 8002CE94 A8B30008 */  j          .L8002CEA0
    /* 1B6A8 8002CE98 21188000 */   addu      $v1, $a0, $zero
  .L8002CE9C:
    /* 1B6AC 8002CE9C 9AF10324 */  addiu      $v1, $zero, -0xE66
  .L8002CEA0:
    /* 1B6B0 8002CEA0 B00383AE */  sw         $v1, 0x3B0($s4)
  .L8002CEA4:
    /* 1B6B4 8002CEA4 4C01BF8F */  lw         $ra, 0x14C($sp)
    /* 1B6B8 8002CEA8 4801BE8F */  lw         $fp, 0x148($sp)
    /* 1B6BC 8002CEAC 4401B78F */  lw         $s7, 0x144($sp)
    /* 1B6C0 8002CEB0 4001B68F */  lw         $s6, 0x140($sp)
    /* 1B6C4 8002CEB4 3C01B58F */  lw         $s5, 0x13C($sp)
    /* 1B6C8 8002CEB8 3801B48F */  lw         $s4, 0x138($sp)
    /* 1B6CC 8002CEBC 3401B38F */  lw         $s3, 0x134($sp)
    /* 1B6D0 8002CEC0 3001B28F */  lw         $s2, 0x130($sp)
    /* 1B6D4 8002CEC4 2C01B18F */  lw         $s1, 0x12C($sp)
    /* 1B6D8 8002CEC8 2801B08F */  lw         $s0, 0x128($sp)
    /* 1B6DC 8002CECC 0800E003 */  jr         $ra
    /* 1B6E0 8002CED0 5001BD27 */   addiu     $sp, $sp, 0x150
endlabel func_8002B91C
