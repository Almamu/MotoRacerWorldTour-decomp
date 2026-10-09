nonmatching func_8004BA04, 0x4DC

glabel func_8004BA04
    /* 3A214 8004BA04 0D80023C */  lui        $v0, %hi(D_800D5FCC)
    /* 3A218 8004BA08 CC5F428C */  lw         $v0, %lo(D_800D5FCC)($v0)
    /* 3A21C 8004BA0C 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 3A220 8004BA10 8C00BFAF */  sw         $ra, 0x8C($sp)
    /* 3A224 8004BA14 8800BEAF */  sw         $fp, 0x88($sp)
    /* 3A228 8004BA18 8400B7AF */  sw         $s7, 0x84($sp)
    /* 3A22C 8004BA1C 8000B6AF */  sw         $s6, 0x80($sp)
    /* 3A230 8004BA20 7C00B5AF */  sw         $s5, 0x7C($sp)
    /* 3A234 8004BA24 7800B4AF */  sw         $s4, 0x78($sp)
    /* 3A238 8004BA28 7400B3AF */  sw         $s3, 0x74($sp)
    /* 3A23C 8004BA2C 7000B2AF */  sw         $s2, 0x70($sp)
    /* 3A240 8004BA30 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 3A244 8004BA34 1B014010 */  beqz       $v0, .L8004BEA4
    /* 3A248 8004BA38 6800B0AF */   sw        $s0, 0x68($sp)
    /* 3A24C 8004BA3C 1A018014 */  bnez       $a0, .L8004BEA8
    /* 3A250 8004BA40 01000424 */   addiu     $a0, $zero, 0x1
    /* 3A254 8004BA44 0D80043C */  lui        $a0, %hi(D_800D5F38)
    /* 3A258 8004BA48 385F848C */  lw         $a0, %lo(D_800D5F38)($a0)
    /* 3A25C 8004BA4C 5B2E010C */  jal        func_8004B96C
    /* 3A260 8004BA50 00000000 */   nop
    /* 3A264 8004BA54 0D80033C */  lui        $v1, %hi(D_800CC030)
    /* 3A268 8004BA58 30C06324 */  addiu      $v1, $v1, %lo(D_800CC030)
    /* 3A26C 8004BA5C C400758C */  lw         $s5, 0xC4($v1)
    /* 3A270 8004BA60 0D80113C */  lui        $s1, %hi(D_800C886C)
    /* 3A274 8004BA64 6C88318E */  lw         $s1, %lo(D_800C886C)($s1)
    /* 3A278 8004BA68 0200A016 */  bnez       $s5, .L8004BA74
    /* 3A27C 8004BA6C 21804000 */   addu      $s0, $v0, $zero
    /* 3A280 8004BA70 4C00758C */  lw         $s5, 0x4C($v1)
  .L8004BA74:
    /* 3A284 8004BA74 6800238E */  lw         $v1, 0x68($s1)
    /* 3A288 8004BA78 00000000 */  nop
    /* 3A28C 8004BA7C 40006484 */  lh         $a0, 0x40($v1)
    /* 3A290 8004BA80 4400628C */  lw         $v0, 0x44($v1)
    /* 3A294 8004BA84 00000000 */  nop
    /* 3A298 8004BA88 09F84000 */  jalr       $v0
    /* 3A29C 8004BA8C 21202402 */   addu      $a0, $s1, $a0
    /* 3A2A0 8004BA90 21200000 */  addu       $a0, $zero, $zero
    /* 3A2A4 8004BA94 FB85020C */  jal        func_800A17EC
    /* 3A2A8 8004BA98 21280002 */   addu      $a1, $s0, $zero
    /* 3A2AC 8004BA9C 6800238E */  lw         $v1, 0x68($s1)
    /* 3A2B0 8004BAA0 00000000 */  nop
    /* 3A2B4 8004BAA4 28006484 */  lh         $a0, 0x28($v1)
    /* 3A2B8 8004BAA8 2C00628C */  lw         $v0, 0x2C($v1)
    /* 3A2BC 8004BAAC 00000000 */  nop
    /* 3A2C0 8004BAB0 09F84000 */  jalr       $v0
    /* 3A2C4 8004BAB4 21202402 */   addu      $a0, $s1, $a0
    /* 3A2C8 8004BAB8 0D80033C */  lui        $v1, %hi(D_800D5F40)
    /* 3A2CC 8004BABC 405F638C */  lw         $v1, %lo(D_800D5F40)($v1)
    /* 3A2D0 8004BAC0 04000224 */  addiu      $v0, $zero, 0x4
    /* 3A2D4 8004BAC4 07006214 */  bne        $v1, $v0, .L8004BAE4
    /* 3A2D8 8004BAC8 00000000 */   nop
    /* 3A2DC 8004BACC 0D80023C */  lui        $v0, %hi(D_800D5F38)
    /* 3A2E0 8004BAD0 385F428C */  lw         $v0, %lo(D_800D5F38)($v0)
    /* 3A2E4 8004BAD4 0D80043C */  lui        $a0, %hi(D_800D5394)
    /* 3A2E8 8004BAD8 94538424 */  addiu      $a0, $a0, %lo(D_800D5394)
    /* 3A2EC 8004BADC BE2E0108 */  j          .L8004BAF8
    /* 3A2F0 8004BAE0 80180200 */   sll       $v1, $v0, 2
  .L8004BAE4:
    /* 3A2F4 8004BAE4 0D80023C */  lui        $v0, %hi(D_800D5F38)
    /* 3A2F8 8004BAE8 385F428C */  lw         $v0, %lo(D_800D5F38)($v0)
    /* 3A2FC 8004BAEC 0D80043C */  lui        $a0, %hi(D_800D53E0)
    /* 3A300 8004BAF0 E0538424 */  addiu      $a0, $a0, %lo(D_800D53E0)
    /* 3A304 8004BAF4 80180200 */  sll        $v1, $v0, 2
  .L8004BAF8:
    /* 3A308 8004BAF8 21186200 */  addu       $v1, $v1, $v0
    /* 3A30C 8004BAFC 80180300 */  sll        $v1, $v1, 2
    /* 3A310 8004BB00 23186200 */  subu       $v1, $v1, $v0
    /* 3A314 8004BB04 C0180300 */  sll        $v1, $v1, 3
    /* 3A318 8004BB08 21B06400 */  addu       $s6, $v1, $a0
    /* 3A31C 8004BB0C 0D80023C */  lui        $v0, %hi(D_800C89D4)
    /* 3A320 8004BB10 D4894290 */  lbu        $v0, %lo(D_800C89D4)($v0)
    /* 3A324 8004BB14 08000324 */  addiu      $v1, $zero, 0x8
    /* 3A328 8004BB18 0D80013C */  lui        $at, %hi(D_800C89D0)
    /* 3A32C 8004BB1C D08920AC */  sw         $zero, %lo(D_800C89D0)($at)
    /* 3A330 8004BB20 06004314 */  bne        $v0, $v1, .L8004BB3C
    /* 3A334 8004BB24 00000000 */   nop
    /* 3A338 8004BB28 0D80023C */  lui        $v0, %hi(D_800C89D5)
    /* 3A33C 8004BB2C D5894290 */  lbu        $v0, %lo(D_800C89D5)($v0)
    /* 3A340 8004BB30 00000000 */  nop
    /* 3A344 8004BB34 08004010 */  beqz       $v0, .L8004BB58
    /* 3A348 8004BB38 21280000 */   addu      $a1, $zero, $zero
  .L8004BB3C:
    /* 3A34C 8004BB3C 0D80013C */  lui        $at, %hi(D_800C89D4)
    /* 3A350 8004BB40 D48923A0 */  sb         $v1, %lo(D_800C89D4)($at)
    /* 3A354 8004BB44 0D80013C */  lui        $at, %hi(D_800C89D5)
    /* 3A358 8004BB48 D58920A0 */  sb         $zero, %lo(D_800C89D5)($at)
    /* 3A35C 8004BB4C E303020C */  jal        func_80080F8C
    /* 3A360 8004BB50 00000000 */   nop
    /* 3A364 8004BB54 21280000 */  addu       $a1, $zero, $zero
  .L8004BB58:
    /* 3A368 8004BB58 21900000 */  addu       $s2, $zero, $zero
    /* 3A36C 8004BB5C FFFF1E34 */  ori        $fp, $zero, 0xFFFF
    /* 3A370 8004BB60 0D001724 */  addiu      $s7, $zero, 0xD
    /* 3A374 8004BB64 5B001024 */  addiu      $s0, $zero, 0x5B
    /* 3A378 8004BB68 0D80063C */  lui        $a2, %hi(D_800C886C)
    /* 3A37C 8004BB6C 6C88C68C */  lw         $a2, %lo(D_800C886C)($a2)
    /* 3A380 8004BB70 0400D426 */  addiu      $s4, $s6, 0x4
    /* 3A384 8004BB74 6800C38C */  lw         $v1, 0x68($a2)
    /* 3A388 8004BB78 0800D326 */  addiu      $s3, $s6, 0x8
    /* 3A38C 8004BB7C 70006484 */  lh         $a0, 0x70($v1)
    /* 3A390 8004BB80 7400628C */  lw         $v0, 0x74($v1)
    /* 3A394 8004BB84 00000000 */  nop
    /* 3A398 8004BB88 09F84000 */  jalr       $v0
    /* 3A39C 8004BB8C 2120C400 */   addu      $a0, $a2, $a0
  .L8004BB90:
    /* 3A3A0 8004BB90 0D80023C */  lui        $v0, %hi(D_800C89D8)
    /* 3A3A4 8004BB94 D889428C */  lw         $v0, %lo(D_800C89D8)($v0)
    /* 3A3A8 8004BB98 00000000 */  nop
    /* 3A3AC 8004BB9C 06005E10 */  beq        $v0, $fp, .L8004BBB8
    /* 3A3B0 8004BBA0 2120A002 */   addu      $a0, $s5, $zero
    /* 3A3B4 8004BBA4 0D80013C */  lui        $at, %hi(D_800C89D8)
    /* 3A3B8 8004BBA8 D8893EAC */  sw         $fp, %lo(D_800C89D8)($at)
    /* 3A3BC 8004BBAC E303020C */  jal        func_80080F8C
    /* 3A3C0 8004BBB0 00000000 */   nop
    /* 3A3C4 8004BBB4 2120A002 */  addu       $a0, $s5, $zero
  .L8004BBB8:
    /* 3A3C8 8004BBB8 21286002 */  addu       $a1, $s3, $zero
    /* 3A3CC 8004BBBC 1E000624 */  addiu      $a2, $zero, 0x1E
    /* 3A3D0 8004BBC0 CC03020C */  jal        func_80080F30
    /* 3A3D4 8004BBC4 21380002 */   addu      $a3, $s0, $zero
    /* 3A3D8 8004BBC8 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* 3A3DC 8004BBCC 0D80023C */  lui        $v0, %hi(D_800C89D8)
    /* 3A3E0 8004BBD0 D889428C */  lw         $v0, %lo(D_800C89D8)($v0)
    /* 3A3E4 8004BBD4 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 3A3E8 8004BBD8 05004310 */  beq        $v0, $v1, .L8004BBF0
    /* 3A3EC 8004BBDC 00000000 */   nop
    /* 3A3F0 8004BBE0 0D80013C */  lui        $at, %hi(D_800C89D8)
    /* 3A3F4 8004BBE4 D88923AC */  sw         $v1, %lo(D_800C89D8)($at)
    /* 3A3F8 8004BBE8 E303020C */  jal        func_80080F8C
    /* 3A3FC 8004BBEC 00000000 */   nop
  .L8004BBF0:
    /* 3A400 8004BBF0 0000868E */  lw         $a2, 0x0($s4)
    /* 3A404 8004BBF4 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 3A408 8004BBF8 2500C810 */  beq        $a2, $t0, .L8004BC90
    /* 3A40C 8004BBFC 00000000 */   nop
    /* 3A410 8004BC00 0D80023C */  lui        $v0, %hi(D_800D5F38)
    /* 3A414 8004BC04 385F428C */  lw         $v0, %lo(D_800D5F38)($v0)
    /* 3A418 8004BC08 00000000 */  nop
    /* 3A41C 8004BC0C 0F005710 */  beq        $v0, $s7, .L8004BC4C
    /* 3A420 8004BC10 2120C000 */   addu      $a0, $a2, $zero
    /* 3A424 8004BC14 5000A527 */  addiu      $a1, $sp, 0x50
    /* 3A428 8004BC18 5400A627 */  addiu      $a2, $sp, 0x54
    /* 3A42C 8004BC1C 3497020C */  jal        func_800A5CD0
    /* 3A430 8004BC20 5800A727 */   addiu     $a3, $sp, 0x58
    /* 3A434 8004BC24 1800A427 */  addiu      $a0, $sp, 0x18
    /* 3A438 8004BC28 0C80083C */  lui        $t0, %hi(D_800C6454)
    /* 3A43C 8004BC2C 5000A68F */  lw         $a2, 0x50($sp)
    /* 3A440 8004BC30 5400A78F */  lw         $a3, 0x54($sp)
    /* 3A444 8004BC34 5800A38F */  lw         $v1, 0x58($sp)
    /* 3A448 8004BC38 54640525 */  addiu      $a1, $t0, %lo(D_800C6454)
    /* 3A44C 8004BC3C 96D9020C */  jal        func_800B6658
    /* 3A450 8004BC40 1000A3AF */   sw        $v1, 0x10($sp)
    /* 3A454 8004BC44 172F0108 */  j          .L8004BC5C
    /* 3A458 8004BC48 00000000 */   nop
  .L8004BC4C:
    /* 3A45C 8004BC4C 1800A427 */  addiu      $a0, $sp, 0x18
    /* 3A460 8004BC50 0C80083C */  lui        $t0, %hi(D_800C6464)
    /* 3A464 8004BC54 96D9020C */  jal        func_800B6658
    /* 3A468 8004BC58 64640525 */   addiu     $a1, $t0, %lo(D_800C6464)
  .L8004BC5C:
    /* 3A46C 8004BC5C 19004016 */  bnez       $s2, .L8004BCC4
    /* 3A470 8004BC60 2120A002 */   addu      $a0, $s5, $zero
    /* 3A474 8004BC64 0D80023C */  lui        $v0, %hi(D_800C89D8)
    /* 3A478 8004BC68 D889428C */  lw         $v0, %lo(D_800C89D8)($v0)
    /* 3A47C 8004BC6C FF000324 */  addiu      $v1, $zero, 0xFF
    /* 3A480 8004BC70 15004310 */  beq        $v0, $v1, .L8004BCC8
    /* 3A484 8004BC74 1800A527 */   addiu     $a1, $sp, 0x18
    /* 3A488 8004BC78 0D80013C */  lui        $at, %hi(D_800C89D8)
    /* 3A48C 8004BC7C D88923AC */  sw         $v1, %lo(D_800C89D8)($at)
    /* 3A490 8004BC80 E303020C */  jal        func_80080F8C
    /* 3A494 8004BC84 00000000 */   nop
    /* 3A498 8004BC88 312F0108 */  j          .L8004BCC4
    /* 3A49C 8004BC8C 2120A002 */   addu      $a0, $s5, $zero
  .L8004BC90:
    /* 3A4A0 8004BC90 0D80023C */  lui        $v0, %hi(D_800D5F38)
    /* 3A4A4 8004BC94 385F428C */  lw         $v0, %lo(D_800D5F38)($v0)
    /* 3A4A8 8004BC98 00000000 */  nop
    /* 3A4AC 8004BC9C 04005710 */  beq        $v0, $s7, .L8004BCB0
    /* 3A4B0 8004BCA0 1800A427 */   addiu     $a0, $sp, 0x18
    /* 3A4B4 8004BCA4 0C80083C */  lui        $t0, %hi(D_800C6470)
    /* 3A4B8 8004BCA8 2E2F0108 */  j          .L8004BCB8
    /* 3A4BC 8004BCAC 70640525 */   addiu     $a1, $t0, %lo(D_800C6470)
  .L8004BCB0:
    /* 3A4C0 8004BCB0 0C80083C */  lui        $t0, %hi(D_800C647C)
    /* 3A4C4 8004BCB4 7C640525 */  addiu      $a1, $t0, %lo(D_800C647C)
  .L8004BCB8:
    /* 3A4C8 8004BCB8 96D9020C */  jal        func_800B6658
    /* 3A4CC 8004BCBC 00000000 */   nop
    /* 3A4D0 8004BCC0 2120A002 */  addu       $a0, $s5, $zero
  .L8004BCC4:
    /* 3A4D4 8004BCC4 1800A527 */  addiu      $a1, $sp, 0x18
  .L8004BCC8:
    /* 3A4D8 8004BCC8 46000624 */  addiu      $a2, $zero, 0x46
    /* 3A4DC 8004BCCC CC03020C */  jal        func_80080F30
    /* 3A4E0 8004BCD0 21380002 */   addu      $a3, $s0, $zero
    /* 3A4E4 8004BCD4 0A001026 */  addiu      $s0, $s0, 0xA
    /* 3A4E8 8004BCD8 0C009426 */  addiu      $s4, $s4, 0xC
    /* 3A4EC 8004BCDC 01005226 */  addiu      $s2, $s2, 0x1
    /* 3A4F0 8004BCE0 0500422A */  slti       $v0, $s2, 0x5
    /* 3A4F4 8004BCE4 AAFF4014 */  bnez       $v0, .L8004BB90
    /* 3A4F8 8004BCE8 0C007326 */   addiu     $s3, $s3, 0xC
    /* 3A4FC 8004BCEC 0D80033C */  lui        $v1, %hi(D_800D5F38)
    /* 3A500 8004BCF0 385F638C */  lw         $v1, %lo(D_800D5F38)($v1)
    /* 3A504 8004BCF4 0D000224 */  addiu      $v0, $zero, 0xD
    /* 3A508 8004BCF8 37006210 */  beq        $v1, $v0, .L8004BDD8
    /* 3A50C 8004BCFC 0B000224 */   addiu     $v0, $zero, 0xB
    /* 3A510 8004BD00 35006210 */  beq        $v1, $v0, .L8004BDD8
    /* 3A514 8004BD04 0C000224 */   addiu     $v0, $zero, 0xC
    /* 3A518 8004BD08 33006210 */  beq        $v1, $v0, .L8004BDD8
    /* 3A51C 8004BD0C FFFF0334 */   ori       $v1, $zero, 0xFFFF
    /* 3A520 8004BD10 0D80023C */  lui        $v0, %hi(D_800C89D8)
    /* 3A524 8004BD14 D889428C */  lw         $v0, %lo(D_800C89D8)($v0)
    /* 3A528 8004BD18 00000000 */  nop
    /* 3A52C 8004BD1C 06004310 */  beq        $v0, $v1, .L8004BD38
    /* 3A530 8004BD20 2120A002 */   addu      $a0, $s5, $zero
    /* 3A534 8004BD24 0D80013C */  lui        $at, %hi(D_800C89D8)
    /* 3A538 8004BD28 D88923AC */  sw         $v1, %lo(D_800C89D8)($at)
    /* 3A53C 8004BD2C E303020C */  jal        func_80080F8C
    /* 3A540 8004BD30 00000000 */   nop
    /* 3A544 8004BD34 2120A002 */  addu       $a0, $s5, $zero
  .L8004BD38:
    /* 3A548 8004BD38 4400C526 */  addiu      $a1, $s6, 0x44
    /* 3A54C 8004BD3C 1E000624 */  addiu      $a2, $zero, 0x1E
    /* 3A550 8004BD40 CC03020C */  jal        func_80080F30
    /* 3A554 8004BD44 AA000724 */   addiu     $a3, $zero, 0xAA
    /* 3A558 8004BD48 4000C48E */  lw         $a0, 0x40($s6)
    /* 3A55C 8004BD4C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3A560 8004BD50 0E008210 */  beq        $a0, $v0, .L8004BD8C
    /* 3A564 8004BD54 6000A627 */   addiu     $a2, $sp, 0x60
    /* 3A568 8004BD58 5C00A527 */  addiu      $a1, $sp, 0x5C
    /* 3A56C 8004BD5C 3497020C */  jal        func_800A5CD0
    /* 3A570 8004BD60 6400A727 */   addiu     $a3, $sp, 0x64
    /* 3A574 8004BD64 1800A427 */  addiu      $a0, $sp, 0x18
    /* 3A578 8004BD68 0C80053C */  lui        $a1, %hi(D_800C6454)
    /* 3A57C 8004BD6C 5C00A68F */  lw         $a2, 0x5C($sp)
    /* 3A580 8004BD70 6000A78F */  lw         $a3, 0x60($sp)
    /* 3A584 8004BD74 6400A38F */  lw         $v1, 0x64($sp)
    /* 3A588 8004BD78 5464A524 */  addiu      $a1, $a1, %lo(D_800C6454)
    /* 3A58C 8004BD7C 96D9020C */  jal        func_800B6658
    /* 3A590 8004BD80 1000A3AF */   sw        $v1, 0x10($sp)
    /* 3A594 8004BD84 682F0108 */  j          .L8004BDA0
    /* 3A598 8004BD88 FF00033C */   lui       $v1, (0xFFFFFF >> 16)
  .L8004BD8C:
    /* 3A59C 8004BD8C 1800A427 */  addiu      $a0, $sp, 0x18
    /* 3A5A0 8004BD90 0C80053C */  lui        $a1, %hi(D_800C6470)
    /* 3A5A4 8004BD94 96D9020C */  jal        func_800B6658
    /* 3A5A8 8004BD98 7064A524 */   addiu     $a1, $a1, %lo(D_800C6470)
    /* 3A5AC 8004BD9C FF00033C */  lui        $v1, (0xFFFFFF >> 16)
  .L8004BDA0:
    /* 3A5B0 8004BDA0 0D80023C */  lui        $v0, %hi(D_800C89D8)
    /* 3A5B4 8004BDA4 D889428C */  lw         $v0, %lo(D_800C89D8)($v0)
    /* 3A5B8 8004BDA8 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 3A5BC 8004BDAC 06004310 */  beq        $v0, $v1, .L8004BDC8
    /* 3A5C0 8004BDB0 2120A002 */   addu      $a0, $s5, $zero
    /* 3A5C4 8004BDB4 0D80013C */  lui        $at, %hi(D_800C89D8)
    /* 3A5C8 8004BDB8 D88923AC */  sw         $v1, %lo(D_800C89D8)($at)
    /* 3A5CC 8004BDBC E303020C */  jal        func_80080F8C
    /* 3A5D0 8004BDC0 00000000 */   nop
    /* 3A5D4 8004BDC4 2120A002 */  addu       $a0, $s5, $zero
  .L8004BDC8:
    /* 3A5D8 8004BDC8 1800A527 */  addiu      $a1, $sp, 0x18
    /* 3A5DC 8004BDCC 46000624 */  addiu      $a2, $zero, 0x46
    /* 3A5E0 8004BDD0 CC03020C */  jal        func_80080F30
    /* 3A5E4 8004BDD4 AA000724 */   addiu     $a3, $zero, 0xAA
  .L8004BDD8:
    /* 3A5E8 8004BDD8 6800238E */  lw         $v1, 0x68($s1)
    /* 3A5EC 8004BDDC 00000000 */  nop
    /* 3A5F0 8004BDE0 30006484 */  lh         $a0, 0x30($v1)
    /* 3A5F4 8004BDE4 3400628C */  lw         $v0, 0x34($v1)
    /* 3A5F8 8004BDE8 00000000 */  nop
    /* 3A5FC 8004BDEC 09F84000 */  jalr       $v0
    /* 3A600 8004BDF0 21202402 */   addu      $a0, $s1, $a0
    /* 3A604 8004BDF4 6800238E */  lw         $v1, 0x68($s1)
    /* 3A608 8004BDF8 00000000 */  nop
    /* 3A60C 8004BDFC 38006484 */  lh         $a0, 0x38($v1)
    /* 3A610 8004BE00 3C00628C */  lw         $v0, 0x3C($v1)
    /* 3A614 8004BE04 00000000 */  nop
    /* 3A618 8004BE08 09F84000 */  jalr       $v0
    /* 3A61C 8004BE0C 21202402 */   addu      $a0, $s1, $a0
    /* 3A620 8004BE10 6800238E */  lw         $v1, 0x68($s1)
    /* 3A624 8004BE14 00000000 */  nop
    /* 3A628 8004BE18 40006484 */  lh         $a0, 0x40($v1)
    /* 3A62C 8004BE1C 4400628C */  lw         $v0, 0x44($v1)
    /* 3A630 8004BE20 00000000 */  nop
    /* 3A634 8004BE24 09F84000 */  jalr       $v0
    /* 3A638 8004BE28 21202402 */   addu      $a0, $s1, $a0
    /* 3A63C 8004BE2C 6800238E */  lw         $v1, 0x68($s1)
    /* 3A640 8004BE30 00000000 */  nop
    /* 3A644 8004BE34 28006484 */  lh         $a0, 0x28($v1)
    /* 3A648 8004BE38 2C00628C */  lw         $v0, 0x2C($v1)
    /* 3A64C 8004BE3C 00000000 */  nop
    /* 3A650 8004BE40 09F84000 */  jalr       $v0
    /* 3A654 8004BE44 21202402 */   addu      $a0, $s1, $a0
    /* 3A658 8004BE48 6800238E */  lw         $v1, 0x68($s1)
    /* 3A65C 8004BE4C 00000000 */  nop
    /* 3A660 8004BE50 30006484 */  lh         $a0, 0x30($v1)
    /* 3A664 8004BE54 3400628C */  lw         $v0, 0x34($v1)
    /* 3A668 8004BE58 00000000 */  nop
    /* 3A66C 8004BE5C 09F84000 */  jalr       $v0
    /* 3A670 8004BE60 21202402 */   addu      $a0, $s1, $a0
    /* 3A674 8004BE64 6800238E */  lw         $v1, 0x68($s1)
    /* 3A678 8004BE68 00000000 */  nop
    /* 3A67C 8004BE6C 38006484 */  lh         $a0, 0x38($v1)
    /* 3A680 8004BE70 3C00628C */  lw         $v0, 0x3C($v1)
    /* 3A684 8004BE74 00000000 */  nop
    /* 3A688 8004BE78 09F84000 */  jalr       $v0
    /* 3A68C 8004BE7C 21202402 */   addu      $a0, $s1, $a0
    /* 3A690 8004BE80 6800238E */  lw         $v1, 0x68($s1)
    /* 3A694 8004BE84 00000000 */  nop
    /* 3A698 8004BE88 40006484 */  lh         $a0, 0x40($v1)
    /* 3A69C 8004BE8C 4400628C */  lw         $v0, 0x44($v1)
    /* 3A6A0 8004BE90 00000000 */  nop
    /* 3A6A4 8004BE94 09F84000 */  jalr       $v0
    /* 3A6A8 8004BE98 21202402 */   addu      $a0, $s1, $a0
    /* 3A6AC 8004BE9C AC2F0108 */  j          .L8004BEB0
    /* 3A6B0 8004BEA0 00000000 */   nop
  .L8004BEA4:
    /* 3A6B4 8004BEA4 01000424 */  addiu      $a0, $zero, 0x1
  .L8004BEA8:
    /* 3A6B8 8004BEA8 FB85020C */  jal        func_800A17EC
    /* 3A6BC 8004BEAC 21280000 */   addu      $a1, $zero, $zero
  .L8004BEB0:
    /* 3A6C0 8004BEB0 8C00BF8F */  lw         $ra, 0x8C($sp)
    /* 3A6C4 8004BEB4 8800BE8F */  lw         $fp, 0x88($sp)
    /* 3A6C8 8004BEB8 8400B78F */  lw         $s7, 0x84($sp)
    /* 3A6CC 8004BEBC 8000B68F */  lw         $s6, 0x80($sp)
    /* 3A6D0 8004BEC0 7C00B58F */  lw         $s5, 0x7C($sp)
    /* 3A6D4 8004BEC4 7800B48F */  lw         $s4, 0x78($sp)
    /* 3A6D8 8004BEC8 7400B38F */  lw         $s3, 0x74($sp)
    /* 3A6DC 8004BECC 7000B28F */  lw         $s2, 0x70($sp)
    /* 3A6E0 8004BED0 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 3A6E4 8004BED4 6800B08F */  lw         $s0, 0x68($sp)
    /* 3A6E8 8004BED8 0800E003 */  jr         $ra
    /* 3A6EC 8004BEDC 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_8004BA04
