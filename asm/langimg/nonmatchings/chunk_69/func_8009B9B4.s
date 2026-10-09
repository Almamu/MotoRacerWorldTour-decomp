nonmatching func_8009B9B4, 0x404

glabel func_8009B9B4
    /* 8A1C4 8009B9B4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8A1C8 8009B9B8 0D80053C */  lui        $a1, %hi(D_800C92CC)
    /* 8A1CC 8009B9BC 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 8A1D0 8009B9C0 2800B4AF */  sw         $s4, 0x28($sp)
    /* 8A1D4 8009B9C4 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8A1D8 8009B9C8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8A1DC 8009B9CC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8A1E0 8009B9D0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8A1E4 8009B9D4 800A838C */  lw         $v1, 0xA80($a0)
    /* 8A1E8 8009B9D8 00000000 */  nop
    /* 8A1EC 8009B9DC 0000648C */  lw         $a0, 0x0($v1)
    /* 8A1F0 8009B9E0 6000708C */  lw         $s0, 0x60($v1)
    /* 8A1F4 8009B9E4 2B98020C */  jal        func_800A60AC
    /* 8A1F8 8009B9E8 CC92A524 */   addiu     $a1, $a1, %lo(D_800C92CC)
    /* 8A1FC 8009B9EC EA004014 */  bnez       $v0, .L8009BD98
    /* 8A200 8009B9F0 00000000 */   nop
    /* 8A204 8009B9F4 1000A627 */  addiu      $a2, $sp, 0x10
    /* 8A208 8009B9F8 0D80043C */  lui        $a0, %hi(D_800C8864)
    /* 8A20C 8009B9FC 6488848C */  lw         $a0, %lo(D_800C8864)($a0)
    /* 8A210 8009BA00 9C00058E */  lw         $a1, 0x9C($s0)
    /* 8A214 8009BA04 5562000C */  jal        func_80018954
    /* 8A218 8009BA08 60008424 */   addiu     $a0, $a0, 0x60
    /* 8A21C 8009BA0C 1400A627 */  addiu      $a2, $sp, 0x14
    /* 8A220 8009BA10 0D80043C */  lui        $a0, %hi(D_800C8864)
    /* 8A224 8009BA14 6488848C */  lw         $a0, %lo(D_800C8864)($a0)
    /* 8A228 8009BA18 A000058E */  lw         $a1, 0xA0($s0)
    /* 8A22C 8009BA1C 5562000C */  jal        func_80018954
    /* 8A230 8009BA20 60008424 */   addiu     $a0, $a0, 0x60
    /* 8A234 8009BA24 1000AD87 */  lh         $t5, 0x10($sp)
    /* 8A238 8009BA28 1200AB87 */  lh         $t3, 0x12($sp)
    /* 8A23C 8009BA2C 1400AC87 */  lh         $t4, 0x14($sp)
    /* 8A240 8009BA30 1600A787 */  lh         $a3, 0x16($sp)
    /* 8A244 8009BA34 2190A001 */  addu       $s2, $t5, $zero
    /* 8A248 8009BA38 21C86001 */  addu       $t9, $t3, $zero
    /* 8A24C 8009BA3C 23C08D01 */  subu       $t8, $t4, $t5
    /* 8A250 8009BA40 D5000013 */  beqz       $t8, .L8009BD98
    /* 8A254 8009BA44 23506701 */   subu      $t2, $t3, $a3
    /* 8A258 8009BA48 D3004011 */  beqz       $t2, .L8009BD98
    /* 8A25C 8009BA4C 5555053C */   lui       $a1, (0x55555555 >> 16)
    /* 8A260 8009BA50 5555A534 */  ori        $a1, $a1, (0x55555555 & 0xFFFF)
    /* 8A264 8009BA54 0048043C */  lui        $a0, (0x4800FF00 >> 16)
    /* 8A268 8009BA58 00FF8434 */  ori        $a0, $a0, (0x4800FF00 & 0xFFFF)
    /* 8A26C 8009BA5C 0005023C */  lui        $v0, (0x5000000 >> 16)
    /* 8A270 8009BA60 0D80063C */  lui        $a2, %hi(D_800C8C70)
    /* 8A274 8009BA64 708CC68C */  lw         $a2, %lo(D_800C8C70)($a2)
    /* 8A278 8009BA68 FFFF4332 */  andi       $v1, $s2, 0xFFFF
    /* 8A27C 8009BA6C 0000C2AC */  sw         $v0, 0x0($a2)
    /* 8A280 8009BA70 00140700 */  sll        $v0, $a3, 16
    /* 8A284 8009BA74 25106200 */  or         $v0, $v1, $v0
    /* 8A288 8009BA78 0400C4AC */  sw         $a0, 0x4($a2)
    /* 8A28C 8009BA7C 00241900 */  sll        $a0, $t9, 16
    /* 8A290 8009BA80 25186400 */  or         $v1, $v1, $a0
    /* 8A294 8009BA84 0800C2AC */  sw         $v0, 0x8($a2)
    /* 8A298 8009BA88 FFFF8231 */  andi       $v0, $t4, 0xFFFF
    /* 8A29C 8009BA8C 25104400 */  or         $v0, $v0, $a0
    /* 8A2A0 8009BA90 01000424 */  addiu      $a0, $zero, 0x1
    /* 8A2A4 8009BA94 1400C5AC */  sw         $a1, 0x14($a2)
    /* 8A2A8 8009BA98 0C00C3AC */  sw         $v1, 0xC($a2)
    /* 8A2AC 8009BA9C 1000C2AC */  sw         $v0, 0x10($a2)
    /* 8A2B0 8009BAA0 0D80033C */  lui        $v1, %hi(D_800CBDC0)
    /* 8A2B4 8009BAA4 C0BD638C */  lw         $v1, %lo(D_800CBDC0)($v1)
    /* 8A2B8 8009BAA8 0D80143C */  lui        $s4, %hi(D_800C8C70)
    /* 8A2BC 8009BAAC 708C948E */  lw         $s4, %lo(D_800C8C70)($s4)
    /* 8A2C0 8009BAB0 04006324 */  addiu      $v1, $v1, 0x4
    /* 8A2C4 8009BAB4 02006688 */  lwl        $a2, 0x2($v1)
    /* 8A2C8 8009BAB8 002A1400 */  sll        $a1, $s4, 8
    /* 8A2CC 8009BABC 020086AA */  swl        $a2, 0x2($s4)
    /* 8A2D0 8009BAC0 020065A8 */  swl        $a1, 0x2($v1)
    /* 8A2D4 8009BAC4 21108002 */  addu       $v0, $s4, $zero
    /* 8A2D8 8009BAC8 18004224 */  addiu      $v0, $v0, 0x18
    /* 8A2DC 8009BACC 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8A2E0 8009BAD0 708C22AC */  sw         $v0, %lo(D_800C8C70)($at)
    /* 8A2E4 8009BAD4 1400038E */  lw         $v1, 0x14($s0)
    /* 8A2E8 8009BAD8 00000000 */  nop
    /* 8A2EC 8009BADC 0D006410 */  beq        $v1, $a0, .L8009BB14
    /* 8A2F0 8009BAE0 02006228 */   slti      $v0, $v1, 0x2
    /* 8A2F4 8009BAE4 05004010 */  beqz       $v0, .L8009BAFC
    /* 8A2F8 8009BAE8 02000224 */   addiu     $v0, $zero, 0x2
    /* 8A2FC 8009BAEC 07006010 */  beqz       $v1, .L8009BB0C
    /* 8A300 8009BAF0 2140E000 */   addu      $t0, $a3, $zero
    /* 8A304 8009BAF4 CA6E0208 */  j          .L8009BB28
    /* 8A308 8009BAF8 2A100B01 */   slt       $v0, $t0, $t3
  .L8009BAFC:
    /* 8A30C 8009BAFC 07006210 */  beq        $v1, $v0, .L8009BB1C
    /* 8A310 8009BB00 2140E000 */   addu      $t0, $a3, $zero
    /* 8A314 8009BB04 CA6E0208 */  j          .L8009BB28
    /* 8A318 8009BB08 2A100B01 */   slt       $v0, $t0, $t3
  .L8009BB0C:
    /* 8A31C 8009BB0C C86E0208 */  j          .L8009BB20
    /* 8A320 8009BB10 04001124 */   addiu     $s1, $zero, 0x4
  .L8009BB14:
    /* 8A324 8009BB14 C86E0208 */  j          .L8009BB20
    /* 8A328 8009BB18 03001124 */   addiu     $s1, $zero, 0x3
  .L8009BB1C:
    /* 8A32C 8009BB1C 02001124 */  addiu      $s1, $zero, 0x2
  .L8009BB20:
    /* 8A330 8009BB20 2140E000 */  addu       $t0, $a3, $zero
    /* 8A334 8009BB24 2A100B01 */  slt        $v0, $t0, $t3
  .L8009BB28:
    /* 8A338 8009BB28 23004010 */  beqz       $v0, .L8009BBB8
    /* 8A33C 8009BB2C FEFFA225 */   addiu     $v0, $t5, -0x2
    /* 8A340 8009BB30 0003133C */  lui        $s3, (0x3000000 >> 16)
    /* 8A344 8009BB34 0040093C */  lui        $t1, (0x4000FF00 >> 16)
    /* 8A348 8009BB38 00FF2935 */  ori        $t1, $t1, (0x4000FF00 & 0xFFFF)
    /* 8A34C 8009BB3C FFFF4F30 */  andi       $t7, $v0, 0xFFFF
    /* 8A350 8009BB40 0200A325 */  addiu      $v1, $t5, 0x2
    /* 8A354 8009BB44 FFFF6E30 */  andi       $t6, $v1, 0xFFFF
    /* 8A358 8009BB48 001C0800 */  sll        $v1, $t0, 16
  .L8009BB4C:
    /* 8A35C 8009BB4C 2510E301 */  or         $v0, $t7, $v1
    /* 8A360 8009BB50 0D80043C */  lui        $a0, %hi(D_800C8C70)
    /* 8A364 8009BB54 708C848C */  lw         $a0, %lo(D_800C8C70)($a0)
    /* 8A368 8009BB58 2518C301 */  or         $v1, $t6, $v1
    /* 8A36C 8009BB5C 000093AC */  sw         $s3, 0x0($a0)
    /* 8A370 8009BB60 040089AC */  sw         $t1, 0x4($a0)
    /* 8A374 8009BB64 080082AC */  sw         $v0, 0x8($a0)
    /* 8A378 8009BB68 0C0083AC */  sw         $v1, 0xC($a0)
    /* 8A37C 8009BB6C 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 8A380 8009BB70 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 8A384 8009BB74 0D80143C */  lui        $s4, %hi(D_800C8C70)
    /* 8A388 8009BB78 708C948E */  lw         $s4, %lo(D_800C8C70)($s4)
    /* 8A38C 8009BB7C 04004224 */  addiu      $v0, $v0, 0x4
    /* 8A390 8009BB80 02004588 */  lwl        $a1, 0x2($v0)
    /* 8A394 8009BB84 00221400 */  sll        $a0, $s4, 8
    /* 8A398 8009BB88 020085AA */  swl        $a1, 0x2($s4)
    /* 8A39C 8009BB8C 020044A8 */  swl        $a0, 0x2($v0)
    /* 8A3A0 8009BB90 1A005101 */  div        $zero, $t2, $s1
    /* 8A3A4 8009BB94 12380000 */  mflo       $a3
    /* 8A3A8 8009BB98 21188002 */  addu       $v1, $s4, $zero
    /* 8A3AC 8009BB9C 10006324 */  addiu      $v1, $v1, 0x10
    /* 8A3B0 8009BBA0 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8A3B4 8009BBA4 708C23AC */  sw         $v1, %lo(D_800C8C70)($at)
    /* 8A3B8 8009BBA8 21400701 */  addu       $t0, $t0, $a3
    /* 8A3BC 8009BBAC 2A100B01 */  slt        $v0, $t0, $t3
    /* 8A3C0 8009BBB0 E6FF4014 */  bnez       $v0, .L8009BB4C
    /* 8A3C4 8009BBB4 001C0800 */   sll       $v1, $t0, 16
  .L8009BBB8:
    /* 8A3C8 8009BBB8 2140A001 */  addu       $t0, $t5, $zero
    /* 8A3CC 8009BBBC 2A100C01 */  slt        $v0, $t0, $t4
    /* 8A3D0 8009BBC0 28004010 */  beqz       $v0, .L8009BC64
    /* 8A3D4 8009BBC4 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 8A3D8 8009BBC8 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 8A3DC 8009BBCC 18000203 */  mult       $t8, $v0
    /* 8A3E0 8009BBD0 00030F3C */  lui        $t7, (0x3000000 >> 16)
    /* 8A3E4 8009BBD4 0040063C */  lui        $a2, (0x4000FF00 >> 16)
    /* 8A3E8 8009BBD8 00FFC634 */  ori        $a2, $a2, (0x4000FF00 & 0xFFFF)
    /* 8A3EC 8009BBDC FEFF6325 */  addiu      $v1, $t3, -0x2
    /* 8A3F0 8009BBE0 00740300 */  sll        $t6, $v1, 16
    /* 8A3F4 8009BBE4 02006425 */  addiu      $a0, $t3, 0x2
    /* 8A3F8 8009BBE8 004C0400 */  sll        $t1, $a0, 16
    /* 8A3FC 8009BBEC C31F1800 */  sra        $v1, $t8, 31
    /* 8A400 8009BBF0 10100000 */  mfhi       $v0
    /* 8A404 8009BBF4 43100200 */  sra        $v0, $v0, 1
    /* 8A408 8009BBF8 23384300 */  subu       $a3, $v0, $v1
    /* 8A40C 8009BBFC FFFF0331 */  andi       $v1, $t0, 0xFFFF
  .L8009BC00:
    /* 8A410 8009BC00 25106E00 */  or         $v0, $v1, $t6
    /* 8A414 8009BC04 0D80043C */  lui        $a0, %hi(D_800C8C70)
    /* 8A418 8009BC08 708C848C */  lw         $a0, %lo(D_800C8C70)($a0)
    /* 8A41C 8009BC0C 25186900 */  or         $v1, $v1, $t1
    /* 8A420 8009BC10 00008FAC */  sw         $t7, 0x0($a0)
    /* 8A424 8009BC14 040086AC */  sw         $a2, 0x4($a0)
    /* 8A428 8009BC18 080082AC */  sw         $v0, 0x8($a0)
    /* 8A42C 8009BC1C 0C0083AC */  sw         $v1, 0xC($a0)
    /* 8A430 8009BC20 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 8A434 8009BC24 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 8A438 8009BC28 0D80143C */  lui        $s4, %hi(D_800C8C70)
    /* 8A43C 8009BC2C 708C948E */  lw         $s4, %lo(D_800C8C70)($s4)
    /* 8A440 8009BC30 04004224 */  addiu      $v0, $v0, 0x4
    /* 8A444 8009BC34 02004588 */  lwl        $a1, 0x2($v0)
    /* 8A448 8009BC38 00221400 */  sll        $a0, $s4, 8
    /* 8A44C 8009BC3C 020085AA */  swl        $a1, 0x2($s4)
    /* 8A450 8009BC40 020044A8 */  swl        $a0, 0x2($v0)
    /* 8A454 8009BC44 21188002 */  addu       $v1, $s4, $zero
    /* 8A458 8009BC48 21400701 */  addu       $t0, $t0, $a3
    /* 8A45C 8009BC4C 10006324 */  addiu      $v1, $v1, 0x10
    /* 8A460 8009BC50 2A100C01 */  slt        $v0, $t0, $t4
    /* 8A464 8009BC54 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8A468 8009BC58 708C23AC */  sw         $v1, %lo(D_800C8C70)($at)
    /* 8A46C 8009BC5C E8FF4014 */  bnez       $v0, .L8009BC00
    /* 8A470 8009BC60 FFFF0331 */   andi      $v1, $t0, 0xFFFF
  .L8009BC64:
    /* 8A474 8009BC64 7D00023C */  lui        $v0, (0x7D0000 >> 16)
    /* 8A478 8009BC68 1A005800 */  div        $zero, $v0, $t8
    /* 8A47C 8009BC6C 12780000 */  mflo       $t7
    /* 8A480 8009BC70 2140A001 */  addu       $t0, $t5, $zero
    /* 8A484 8009BC74 7C21048E */  lw         $a0, 0x217C($s0)
    /* 8A488 8009BC78 7821038E */  lw         $v1, 0x2178($s0)
    /* 8A48C 8009BC7C 2A100C01 */  slt        $v0, $t0, $t4
    /* 8A490 8009BC80 23186400 */  subu       $v1, $v1, $a0
    /* 8A494 8009BC84 1A006A00 */  div        $zero, $v1, $t2
    /* 8A498 8009BC88 12380000 */  mflo       $a3
    /* 8A49C 8009BC8C 42004010 */  beqz       $v0, .L8009BD98
    /* 8A4A0 8009BC90 0003133C */   lui       $s3, (0x3000000 >> 16)
    /* 8A4A4 8009BC94 B8000E26 */  addiu      $t6, $s0, 0xB8
    /* 8A4A8 8009BC98 00420A3C */  lui        $t2, (0x4200FFFF >> 16)
    /* 8A4AC 8009BC9C FFFF4A35 */  ori        $t2, $t2, (0x4200FFFF & 0xFFFF)
    /* 8A4B0 8009BCA0 0001113C */  lui        $s1, (0x1000000 >> 16)
    /* 8A4B4 8009BCA4 00E1093C */  lui        $t1, (0xE1000220 >> 16)
    /* 8A4B8 8009BCA8 20022935 */  ori        $t1, $t1, (0xE1000220 & 0xFFFF)
  .L8009BCAC:
    /* 8A4BC 8009BCAC 23100D01 */  subu       $v0, $t0, $t5
    /* 8A4C0 8009BCB0 18004F00 */  mult       $v0, $t7
    /* 8A4C4 8009BCB4 7C21048E */  lw         $a0, 0x217C($s0)
    /* 8A4C8 8009BCB8 12100000 */  mflo       $v0
    /* 8A4CC 8009BCBC 02004104 */  bgez       $v0, .L8009BCC8
    /* 8A4D0 8009BCC0 00000000 */   nop
    /* 8A4D4 8009BCC4 FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .L8009BCC8:
    /* 8A4D8 8009BCC8 03130200 */  sra        $v0, $v0, 12
    /* 8A4DC 8009BCCC 80100200 */  sll        $v0, $v0, 2
    /* 8A4E0 8009BCD0 2110C201 */  addu       $v0, $t6, $v0
    /* 8A4E4 8009BCD4 0000468C */  lw         $a2, 0x0($v0)
    /* 8A4E8 8009BCD8 00000000 */  nop
    /* 8A4EC 8009BCDC 2330C400 */  subu       $a2, $a2, $a0
    /* 8A4F0 8009BCE0 1A00C700 */  div        $zero, $a2, $a3
    /* 8A4F4 8009BCE4 12300000 */  mflo       $a2
    /* 8A4F8 8009BCE8 FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* 8A4FC 8009BCEC 0D80053C */  lui        $a1, %hi(D_800C8C70)
    /* 8A500 8009BCF0 708CA58C */  lw         $a1, %lo(D_800C8C70)($a1)
    /* 8A504 8009BCF4 001C1900 */  sll        $v1, $t9, 16
    /* 8A508 8009BCF8 25104300 */  or         $v0, $v0, $v1
    /* 8A50C 8009BCFC FFFF0331 */  andi       $v1, $t0, 0xFFFF
    /* 8A510 8009BD00 0000B3AC */  sw         $s3, 0x0($a1)
    /* 8A514 8009BD04 0400AAAC */  sw         $t2, 0x4($a1)
    /* 8A518 8009BD08 0800A2AC */  sw         $v0, 0x8($a1)
    /* 8A51C 8009BD0C 23306601 */  subu       $a2, $t3, $a2
    /* 8A520 8009BD10 00240600 */  sll        $a0, $a2, 16
    /* 8A524 8009BD14 25186400 */  or         $v1, $v1, $a0
    /* 8A528 8009BD18 0C00A3AC */  sw         $v1, 0xC($a1)
    /* 8A52C 8009BD1C 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 8A530 8009BD20 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 8A534 8009BD24 0D80143C */  lui        $s4, %hi(D_800C8C70)
    /* 8A538 8009BD28 708C948E */  lw         $s4, %lo(D_800C8C70)($s4)
    /* 8A53C 8009BD2C 04004224 */  addiu      $v0, $v0, 0x4
    /* 8A540 8009BD30 02004588 */  lwl        $a1, 0x2($v0)
    /* 8A544 8009BD34 00221400 */  sll        $a0, $s4, 8
    /* 8A548 8009BD38 020085AA */  swl        $a1, 0x2($s4)
    /* 8A54C 8009BD3C 020044A8 */  swl        $a0, 0x2($v0)
    /* 8A550 8009BD40 21188002 */  addu       $v1, $s4, $zero
    /* 8A554 8009BD44 100071AC */  sw         $s1, 0x10($v1)
    /* 8A558 8009BD48 10006324 */  addiu      $v1, $v1, 0x10
    /* 8A55C 8009BD4C 040069AC */  sw         $t1, 0x4($v1)
    /* 8A560 8009BD50 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 8A564 8009BD54 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 8A568 8009BD58 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8A56C 8009BD5C 708C23AC */  sw         $v1, %lo(D_800C8C70)($at)
    /* 8A570 8009BD60 04004224 */  addiu      $v0, $v0, 0x4
    /* 8A574 8009BD64 02004588 */  lwl        $a1, 0x2($v0)
    /* 8A578 8009BD68 00220300 */  sll        $a0, $v1, 8
    /* 8A57C 8009BD6C 020065A8 */  swl        $a1, 0x2($v1)
    /* 8A580 8009BD70 020044A8 */  swl        $a0, 0x2($v0)
    /* 8A584 8009BD74 21900001 */  addu       $s2, $t0, $zero
    /* 8A588 8009BD78 21106000 */  addu       $v0, $v1, $zero
    /* 8A58C 8009BD7C 10000825 */  addiu      $t0, $t0, 0x10
    /* 8A590 8009BD80 08004224 */  addiu      $v0, $v0, 0x8
    /* 8A594 8009BD84 2A180C01 */  slt        $v1, $t0, $t4
    /* 8A598 8009BD88 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 8A59C 8009BD8C 708C22AC */  sw         $v0, %lo(D_800C8C70)($at)
    /* 8A5A0 8009BD90 C6FF6014 */  bnez       $v1, .L8009BCAC
    /* 8A5A4 8009BD94 21C8C000 */   addu      $t9, $a2, $zero
  .L8009BD98:
    /* 8A5A8 8009BD98 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 8A5AC 8009BD9C 2800B48F */  lw         $s4, 0x28($sp)
    /* 8A5B0 8009BDA0 2400B38F */  lw         $s3, 0x24($sp)
    /* 8A5B4 8009BDA4 2000B28F */  lw         $s2, 0x20($sp)
    /* 8A5B8 8009BDA8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8A5BC 8009BDAC 1800B08F */  lw         $s0, 0x18($sp)
    /* 8A5C0 8009BDB0 0800E003 */  jr         $ra
    /* 8A5C4 8009BDB4 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8009B9B4
