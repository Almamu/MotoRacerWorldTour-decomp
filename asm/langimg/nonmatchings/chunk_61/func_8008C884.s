nonmatching func_8008C884, 0x5B0

glabel func_8008C884
    /* 7B094 8008C884 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 7B098 8008C888 2800B0AF */  sw         $s0, 0x28($sp)
    /* 7B09C 8008C88C 21808000 */  addu       $s0, $a0, $zero
    /* 7B0A0 8008C890 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 7B0A4 8008C894 4800BEAF */  sw         $fp, 0x48($sp)
    /* 7B0A8 8008C898 4400B7AF */  sw         $s7, 0x44($sp)
    /* 7B0AC 8008C89C 4000B6AF */  sw         $s6, 0x40($sp)
    /* 7B0B0 8008C8A0 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 7B0B4 8008C8A4 3800B4AF */  sw         $s4, 0x38($sp)
    /* 7B0B8 8008C8A8 3400B3AF */  sw         $s3, 0x34($sp)
    /* 7B0BC 8008C8AC 3000B2AF */  sw         $s2, 0x30($sp)
    /* 7B0C0 8008C8B0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 7B0C4 8008C8B4 0000028E */  lw         $v0, 0x0($s0)
    /* 7B0C8 8008C8B8 00000000 */  nop
    /* 7B0CC 8008C8BC 51014010 */  beqz       $v0, .L8008CE04
    /* 7B0D0 8008C8C0 00000000 */   nop
    /* 7B0D4 8008C8C4 0D80063C */  lui        $a2, %hi(D_800C886C)
    /* 7B0D8 8008C8C8 6C88C68C */  lw         $a2, %lo(D_800C886C)($a2)
    /* 7B0DC 8008C8CC 00000000 */  nop
    /* 7B0E0 8008C8D0 6800C38C */  lw         $v1, 0x68($a2)
    /* 7B0E4 8008C8D4 0400058E */  lw         $a1, 0x4($s0)
    /* 7B0E8 8008C8D8 70006484 */  lh         $a0, 0x70($v1)
    /* 7B0EC 8008C8DC 7400628C */  lw         $v0, 0x74($v1)
    /* 7B0F0 8008C8E0 00000000 */  nop
    /* 7B0F4 8008C8E4 09F84000 */  jalr       $v0
    /* 7B0F8 8008C8E8 2120C400 */   addu      $a0, $a2, $a0
    /* 7B0FC 8008C8EC 0000038E */  lw         $v1, 0x0($s0)
    /* 7B100 8008C8F0 01000224 */  addiu      $v0, $zero, 0x1
    /* 7B104 8008C8F4 05006210 */  beq        $v1, $v0, .L8008C90C
    /* 7B108 8008C8F8 02000224 */   addiu     $v0, $zero, 0x2
    /* 7B10C 8008C8FC A5006210 */  beq        $v1, $v0, .L8008CB94
    /* 7B110 8008C900 00020324 */   addiu     $v1, $zero, 0x200
    /* 7B114 8008C904 81330208 */  j          .L8008CE04
    /* 7B118 8008C908 00000000 */   nop
  .L8008C90C:
    /* 7B11C 8008C90C 6000028E */  lw         $v0, 0x60($s0)
    /* 7B120 8008C910 00000000 */  nop
    /* 7B124 8008C914 3B014010 */  beqz       $v0, .L8008CE04
    /* 7B128 8008C918 00000000 */   nop
    /* 7B12C 8008C91C 6400028E */  lw         $v0, 0x64($s0)
    /* 7B130 8008C920 00000000 */  nop
    /* 7B134 8008C924 37014010 */  beqz       $v0, .L8008CE04
    /* 7B138 8008C928 00000000 */   nop
    /* 7B13C 8008C92C 6800028E */  lw         $v0, 0x68($s0)
    /* 7B140 8008C930 00000000 */  nop
    /* 7B144 8008C934 33014010 */  beqz       $v0, .L8008CE04
    /* 7B148 8008C938 00000000 */   nop
    /* 7B14C 8008C93C 6C00028E */  lw         $v0, 0x6C($s0)
    /* 7B150 8008C940 00000000 */  nop
    /* 7B154 8008C944 2F014010 */  beqz       $v0, .L8008CE04
    /* 7B158 8008C948 21580000 */   addu      $t3, $zero, $zero
    /* 7B15C 8008C94C 0004173C */  lui        $s7, (0x4000000 >> 16)
    /* 7B160 8008C950 0066163C */  lui        $s6, (0x66000000 >> 16)
    /* 7B164 8008C954 0064153C */  lui        $s5, (0x64000000 >> 16)
    /* 7B168 8008C958 00011E3C */  lui        $fp, (0x1000000 >> 16)
    /* 7B16C 8008C95C 00E1133C */  lui        $s3, (0xE1000200 >> 16)
    /* 7B170 8008C960 00027336 */  ori        $s3, $s3, (0xE1000200 & 0xFFFF)
    /* 7B174 8008C964 60001226 */  addiu      $s2, $s0, 0x60
  .L8008C968:
    /* 7B178 8008C968 21C80000 */  addu       $t9, $zero, $zero
    /* 7B17C 8008C96C C21F0B00 */  srl        $v1, $t3, 31
    /* 7B180 8008C970 21186301 */  addu       $v1, $t3, $v1
    /* 7B184 8008C974 43180300 */  sra        $v1, $v1, 1
    /* 7B188 8008C978 40100300 */  sll        $v0, $v1, 1
    /* 7B18C 8008C97C 23106201 */  subu       $v0, $t3, $v0
    /* 7B190 8008C980 80890200 */  sll        $s1, $v0, 6
    /* 7B194 8008C984 0000478E */  lw         $a3, 0x0($s2)
    /* 7B198 8008C988 80710300 */  sll        $t6, $v1, 6
    /* 7B19C 8008C98C 0400E490 */  lbu        $a0, 0x4($a3)
    /* 7B1A0 8008C990 0000E290 */  lbu        $v0, 0x0($a3)
    /* 7B1A4 8008C994 80FF0A24 */  addiu      $t2, $zero, -0x80
    /* 7B1A8 8008C998 23208200 */  subu       $a0, $a0, $v0
    /* 7B1AC 8008C99C 01008424 */  addiu      $a0, $a0, 0x1
    /* 7B1B0 8008C9A0 FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* 7B1B4 8008C9A4 2000A4AF */  sw         $a0, 0x20($sp)
    /* 7B1B8 8008C9A8 00140400 */  sll        $v0, $a0, 16
    /* 7B1BC 8008C9AC 25686200 */  or         $t5, $v1, $v0
  .L8008C9B0:
    /* 7B1C0 8008C9B0 21C00000 */  addu       $t8, $zero, $zero
    /* 7B1C4 8008C9B4 21604001 */  addu       $t4, $t2, $zero
    /* 7B1C8 8008C9B8 80FF0924 */  addiu      $t1, $zero, -0x80
  .L8008C9BC:
    /* 7B1CC 8008C9BC 1000028E */  lw         $v0, 0x10($s0)
    /* 7B1D0 8008C9C0 1400038E */  lw         $v1, 0x14($s0)
    /* 7B1D4 8008C9C4 0D80063C */  lui        $a2, %hi(D_800C8C70)
    /* 7B1D8 8008C9C8 708CC68C */  lw         $a2, %lo(D_800C8C70)($a2)
    /* 7B1DC 8008C9CC 21104900 */  addu       $v0, $v0, $t1
    /* 7B1E0 8008C9D0 21405100 */  addu       $t0, $v0, $s1
    /* 7B1E4 8008C9D4 21186C00 */  addu       $v1, $v1, $t4
    /* 7B1E8 8008C9D8 0000D7AC */  sw         $s7, 0x0($a2)
    /* 7B1EC 8008C9DC 5C00028E */  lw         $v0, 0x5C($s0)
    /* 7B1F0 8008C9E0 00000000 */  nop
    /* 7B1F4 8008C9E4 04004230 */  andi       $v0, $v0, 0x4
    /* 7B1F8 8008C9E8 08004010 */  beqz       $v0, .L8008CA0C
    /* 7B1FC 8008C9EC 21786E00 */   addu      $t7, $v1, $t6
    /* 7B200 8008C9F0 22000292 */  lbu        $v0, 0x22($s0)
    /* 7B204 8008C9F4 21000392 */  lbu        $v1, 0x21($s0)
    /* 7B208 8008C9F8 20000492 */  lbu        $a0, 0x20($s0)
    /* 7B20C 8008C9FC 00140200 */  sll        $v0, $v0, 16
    /* 7B210 8008CA00 001A0300 */  sll        $v1, $v1, 8
    /* 7B214 8008CA04 89320208 */  j          .L8008CA24
    /* 7B218 8008CA08 25187600 */   or        $v1, $v1, $s6
  .L8008CA0C:
    /* 7B21C 8008CA0C 22000292 */  lbu        $v0, 0x22($s0)
    /* 7B220 8008CA10 21000392 */  lbu        $v1, 0x21($s0)
    /* 7B224 8008CA14 20000492 */  lbu        $a0, 0x20($s0)
    /* 7B228 8008CA18 00140200 */  sll        $v0, $v0, 16
    /* 7B22C 8008CA1C 001A0300 */  sll        $v1, $v1, 8
    /* 7B230 8008CA20 25187500 */  or         $v1, $v1, $s5
  .L8008CA24:
    /* 7B234 8008CA24 25104300 */  or         $v0, $v0, $v1
    /* 7B238 8008CA28 25104400 */  or         $v0, $v0, $a0
    /* 7B23C 8008CA2C 0400C2AC */  sw         $v0, 0x4($a2)
    /* 7B240 8008CA30 FFFF0331 */  andi       $v1, $t0, 0xFFFF
    /* 7B244 8008CA34 00140F00 */  sll        $v0, $t7, 16
    /* 7B248 8008CA38 0000E594 */  lhu        $a1, 0x0($a3)
    /* 7B24C 8008CA3C 0200E494 */  lhu        $a0, 0x2($a3)
    /* 7B250 8008CA40 25186200 */  or         $v1, $v1, $v0
    /* 7B254 8008CA44 1000CDAC */  sw         $t5, 0x10($a2)
    /* 7B258 8008CA48 0800C3AC */  sw         $v1, 0x8($a2)
    /* 7B25C 8008CA4C 00240400 */  sll        $a0, $a0, 16
    /* 7B260 8008CA50 2528A400 */  or         $a1, $a1, $a0
    /* 7B264 8008CA54 0C00C5AC */  sw         $a1, 0xC($a2)
    /* 7B268 8008CA58 0D80023C */  lui        $v0, %hi(D_800CBDC4)
    /* 7B26C 8008CA5C C4BD428C */  lw         $v0, %lo(D_800CBDC4)($v0)
    /* 7B270 8008CA60 00000000 */  nop
    /* 7B274 8008CA64 0400428C */  lw         $v0, 0x4($v0)
    /* 7B278 8008CA68 01000424 */  addiu      $a0, $zero, 0x1
    /* 7B27C 8008CA6C 2A188200 */  slt        $v1, $a0, $v0
    /* 7B280 8008CA70 03006014 */  bnez       $v1, .L8008CA80
    /* 7B284 8008CA74 80180400 */   sll       $v1, $a0, 2
    /* 7B288 8008CA78 FFFF4424 */  addiu      $a0, $v0, -0x1
    /* 7B28C 8008CA7C 80180400 */  sll        $v1, $a0, 2
  .L8008CA80:
    /* 7B290 8008CA80 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 7B294 8008CA84 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 7B298 8008CA88 0D80143C */  lui        $s4, %hi(D_800C8C70)
    /* 7B29C 8008CA8C 708C948E */  lw         $s4, %lo(D_800C8C70)($s4)
    /* 7B2A0 8008CA90 21104300 */  addu       $v0, $v0, $v1
    /* 7B2A4 8008CA94 02004588 */  lwl        $a1, 0x2($v0)
    /* 7B2A8 8008CA98 00221400 */  sll        $a0, $s4, 8
    /* 7B2AC 8008CA9C 020085AA */  swl        $a1, 0x2($s4)
    /* 7B2B0 8008CAA0 020044A8 */  swl        $a0, 0x2($v0)
    /* 7B2B4 8008CAA4 21188002 */  addu       $v1, $s4, $zero
    /* 7B2B8 8008CAA8 02001827 */  addiu      $t8, $t8, 0x2
    /* 7B2BC 8008CAAC 14006324 */  addiu      $v1, $v1, 0x14
    /* 7B2C0 8008CAB0 0A00022B */  slti       $v0, $t8, 0xA
    /* 7B2C4 8008CAB4 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7B2C8 8008CAB8 708C23AC */  sw         $v1, %lo(D_800C8C70)($at)
    /* 7B2CC 8008CABC BFFF4014 */  bnez       $v0, .L8008C9BC
    /* 7B2D0 8008CAC0 80002925 */   addiu     $t1, $t1, 0x80
    /* 7B2D4 8008CAC4 02003927 */  addiu      $t9, $t9, 0x2
    /* 7B2D8 8008CAC8 0600222B */  slti       $v0, $t9, 0x6
    /* 7B2DC 8008CACC B8FF4014 */  bnez       $v0, .L8008C9B0
    /* 7B2E0 8008CAD0 80004A25 */   addiu     $t2, $t2, 0x80
    /* 7B2E4 8008CAD4 0600E394 */  lhu        $v1, 0x6($a3)
    /* 7B2E8 8008CAD8 00000000 */  nop
    /* 7B2EC 8008CADC 9FFF6330 */  andi       $v1, $v1, 0xFF9F
    /* 7B2F0 8008CAE0 0600E3A4 */  sh         $v1, 0x6($a3)
    /* 7B2F4 8008CAE4 5C000296 */  lhu        $v0, 0x5C($s0)
    /* 7B2F8 8008CAE8 00000000 */  nop
    /* 7B2FC 8008CAEC 03004230 */  andi       $v0, $v0, 0x3
    /* 7B300 8008CAF0 40110200 */  sll        $v0, $v0, 5
    /* 7B304 8008CAF4 25186200 */  or         $v1, $v1, $v0
    /* 7B308 8008CAF8 0600E3A4 */  sh         $v1, 0x6($a3)
    /* 7B30C 8008CAFC 0D80043C */  lui        $a0, %hi(D_800C8C70)
    /* 7B310 8008CB00 708C848C */  lw         $a0, %lo(D_800C8C70)($a0)
    /* 7B314 8008CB04 00000000 */  nop
    /* 7B318 8008CB08 00009EAC */  sw         $fp, 0x0($a0)
    /* 7B31C 8008CB0C 0600E294 */  lhu        $v0, 0x6($a3)
    /* 7B320 8008CB10 00000000 */  nop
    /* 7B324 8008CB14 FF014230 */  andi       $v0, $v0, 0x1FF
    /* 7B328 8008CB18 25105300 */  or         $v0, $v0, $s3
    /* 7B32C 8008CB1C 040082AC */  sw         $v0, 0x4($a0)
    /* 7B330 8008CB20 0D80033C */  lui        $v1, %hi(D_800CBDC4)
    /* 7B334 8008CB24 C4BD638C */  lw         $v1, %lo(D_800CBDC4)($v1)
    /* 7B338 8008CB28 00000000 */  nop
    /* 7B33C 8008CB2C 0400648C */  lw         $a0, 0x4($v1)
    /* 7B340 8008CB30 01000324 */  addiu      $v1, $zero, 0x1
    /* 7B344 8008CB34 2A106400 */  slt        $v0, $v1, $a0
    /* 7B348 8008CB38 03004014 */  bnez       $v0, .L8008CB48
    /* 7B34C 8008CB3C 80180300 */   sll       $v1, $v1, 2
    /* 7B350 8008CB40 FFFF8324 */  addiu      $v1, $a0, -0x1
    /* 7B354 8008CB44 80180300 */  sll        $v1, $v1, 2
  .L8008CB48:
    /* 7B358 8008CB48 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 7B35C 8008CB4C C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 7B360 8008CB50 0D80143C */  lui        $s4, %hi(D_800C8C70)
    /* 7B364 8008CB54 708C948E */  lw         $s4, %lo(D_800C8C70)($s4)
    /* 7B368 8008CB58 21104300 */  addu       $v0, $v0, $v1
    /* 7B36C 8008CB5C 02004588 */  lwl        $a1, 0x2($v0)
    /* 7B370 8008CB60 00221400 */  sll        $a0, $s4, 8
    /* 7B374 8008CB64 020085AA */  swl        $a1, 0x2($s4)
    /* 7B378 8008CB68 020044A8 */  swl        $a0, 0x2($v0)
    /* 7B37C 8008CB6C 21188002 */  addu       $v1, $s4, $zero
    /* 7B380 8008CB70 01006B25 */  addiu      $t3, $t3, 0x1
    /* 7B384 8008CB74 08006324 */  addiu      $v1, $v1, 0x8
    /* 7B388 8008CB78 04006229 */  slti       $v0, $t3, 0x4
    /* 7B38C 8008CB7C 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7B390 8008CB80 708C23AC */  sw         $v1, %lo(D_800C8C70)($at)
    /* 7B394 8008CB84 78FF4014 */  bnez       $v0, .L8008C968
    /* 7B398 8008CB88 04005226 */   addiu     $s2, $s2, 0x4
    /* 7B39C 8008CB8C 81330208 */  j          .L8008CE04
    /* 7B3A0 8008CB90 00000000 */   nop
  .L8008CB94:
    /* 7B3A4 8008CB94 1800148E */  lw         $s4, 0x18($s0)
    /* 7B3A8 8008CB98 00000000 */  nop
    /* 7B3AC 8008CB9C 40981400 */  sll        $s3, $s4, 1
    /* 7B3B0 8008CBA0 1A007300 */  div        $zero, $v1, $s3
    /* 7B3B4 8008CBA4 12180000 */  mflo       $v1
    /* 7B3B8 8008CBA8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 7B3BC 8008CBAC 1C00048E */  lw         $a0, 0x1C($s0)
    /* 7B3C0 8008CBB0 00000000 */  nop
    /* 7B3C4 8008CBB4 80100400 */  sll        $v0, $a0, 2
    /* 7B3C8 8008CBB8 21104400 */  addu       $v0, $v0, $a0
    /* 7B3CC 8008CBBC 80200200 */  sll        $a0, $v0, 2
    /* 7B3D0 8008CBC0 40100200 */  sll        $v0, $v0, 1
    /* 7B3D4 8008CBC4 03110200 */  sra        $v0, $v0, 4
    /* 7B3D8 8008CBC8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7B3DC 8008CBCC 02008104 */  bgez       $a0, .L8008CBD8
    /* 7B3E0 8008CBD0 01007E24 */   addiu     $fp, $v1, 0x1
    /* 7B3E4 8008CBD4 0F008424 */  addiu      $a0, $a0, 0xF
  .L8008CBD8:
    /* 7B3E8 8008CBD8 03910400 */  sra        $s2, $a0, 4
    /* 7B3EC 8008CBDC 00010224 */  addiu      $v0, $zero, 0x100
    /* 7B3F0 8008CBE0 1A005200 */  div        $zero, $v0, $s2
    /* 7B3F4 8008CBE4 12100000 */  mflo       $v0
    /* 7B3F8 8008CBE8 21C80000 */  addu       $t9, $zero, $zero
    /* 7B3FC 8008CBEC 02004224 */  addiu      $v0, $v0, 0x2
    /* 7B400 8008CBF0 84004018 */  blez       $v0, .L8008CE04
    /* 7B404 8008CBF4 1400A2AF */   sw        $v0, 0x14($sp)
    /* 7B408 8008CBF8 21B80000 */  addu       $s7, $zero, $zero
  .L8008CBFC:
    /* 7B40C 8008CBFC 7C00C01B */  blez       $fp, .L8008CDF0
    /* 7B410 8008CC00 21C00000 */   addu      $t8, $zero, $zero
    /* 7B414 8008CC04 1800B7AF */  sw         $s7, 0x18($sp)
    /* 7B418 8008CC08 0005163C */  lui        $s6, (0x5000000 >> 16)
    /* 7B41C 8008CC0C 0028153C */  lui        $s5, (0x28000000 >> 16)
    /* 7B420 8008CC10 21880000 */  addu       $s1, $zero, $zero
  .L8008CC14:
    /* 7B424 8008CC14 1000028E */  lw         $v0, 0x10($s0)
    /* 7B428 8008CC18 1400038E */  lw         $v1, 0x14($s0)
    /* 7B42C 8008CC1C 0D80043C */  lui        $a0, %hi(D_800C8C70)
    /* 7B430 8008CC20 708C848C */  lw         $a0, %lo(D_800C8C70)($a0)
    /* 7B434 8008CC24 1800B48F */  lw         $s4, 0x18($sp)
    /* 7B438 8008CC28 23105300 */  subu       $v0, $v0, $s3
    /* 7B43C 8008CC2C 21405100 */  addu       $t0, $v0, $s1
    /* 7B440 8008CC30 23187200 */  subu       $v1, $v1, $s2
    /* 7B444 8008CC34 21787400 */  addu       $t7, $v1, $s4
    /* 7B448 8008CC38 FFFF0B31 */  andi       $t3, $t0, 0xFFFF
    /* 7B44C 8008CC3C 003C0F00 */  sll        $a3, $t7, 16
    /* 7B450 8008CC40 000096AC */  sw         $s6, 0x0($a0)
    /* 7B454 8008CC44 2400038E */  lw         $v1, 0x24($s0)
    /* 7B458 8008CC48 25106701 */  or         $v0, $t3, $a3
    /* 7B45C 8008CC4C 080082AC */  sw         $v0, 0x8($a0)
    /* 7B460 8008CC50 2000B48F */  lw         $s4, 0x20($sp)
    /* 7B464 8008CC54 00000000 */  nop
    /* 7B468 8008CC58 21501401 */  addu       $t2, $t0, $s4
    /* 7B46C 8008CC5C FFFF4A31 */  andi       $t2, $t2, 0xFFFF
    /* 7B470 8008CC60 25604701 */  or         $t4, $t2, $a3
    /* 7B474 8008CC64 0C008CAC */  sw         $t4, 0xC($a0)
    /* 7B478 8008CC68 1000B48F */  lw         $s4, 0x10($sp)
    /* 7B47C 8008CC6C 25187500 */  or         $v1, $v1, $s5
    /* 7B480 8008CC70 040083AC */  sw         $v1, 0x4($a0)
    /* 7B484 8008CC74 2148F401 */  addu       $t1, $t7, $s4
    /* 7B488 8008CC78 004C0900 */  sll        $t1, $t1, 16
    /* 7B48C 8008CC7C 25706901 */  or         $t6, $t3, $t1
    /* 7B490 8008CC80 25684901 */  or         $t5, $t2, $t1
    /* 7B494 8008CC84 10008EAC */  sw         $t6, 0x10($a0)
    /* 7B498 8008CC88 14008DAC */  sw         $t5, 0x14($a0)
    /* 7B49C 8008CC8C 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 7B4A0 8008CC90 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 7B4A4 8008CC94 0D80143C */  lui        $s4, %hi(D_800C8C70)
    /* 7B4A8 8008CC98 708C948E */  lw         $s4, %lo(D_800C8C70)($s4)
    /* 7B4AC 8008CC9C 04004224 */  addiu      $v0, $v0, 0x4
    /* 7B4B0 8008CCA0 02004688 */  lwl        $a2, 0x2($v0)
    /* 7B4B4 8008CCA4 002A1400 */  sll        $a1, $s4, 8
    /* 7B4B8 8008CCA8 020086AA */  swl        $a2, 0x2($s4)
    /* 7B4BC 8008CCAC 020045A8 */  swl        $a1, 0x2($v0)
    /* 7B4C0 8008CCB0 21188002 */  addu       $v1, $s4, $zero
    /* 7B4C4 8008CCB4 18006424 */  addiu      $a0, $v1, 0x18
    /* 7B4C8 8008CCB8 21401301 */  addu       $t0, $t0, $s3
    /* 7B4CC 8008CCBC FFFF0831 */  andi       $t0, $t0, 0xFFFF
    /* 7B4D0 8008CCC0 25380701 */  or         $a3, $t0, $a3
    /* 7B4D4 8008CCC4 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7B4D8 8008CCC8 708C24AC */  sw         $a0, %lo(D_800C8C70)($at)
    /* 7B4DC 8008CCCC 180076AC */  sw         $s6, 0x18($v1)
    /* 7B4E0 8008CCD0 2800058E */  lw         $a1, 0x28($s0)
    /* 7B4E4 8008CCD4 25480901 */  or         $t1, $t0, $t1
    /* 7B4E8 8008CCD8 08008CAC */  sw         $t4, 0x8($a0)
    /* 7B4EC 8008CCDC 0C0087AC */  sw         $a3, 0xC($a0)
    /* 7B4F0 8008CCE0 10008DAC */  sw         $t5, 0x10($a0)
    /* 7B4F4 8008CCE4 140089AC */  sw         $t1, 0x14($a0)
    /* 7B4F8 8008CCE8 2528B500 */  or         $a1, $a1, $s5
    /* 7B4FC 8008CCEC 040085AC */  sw         $a1, 0x4($a0)
    /* 7B500 8008CCF0 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 7B504 8008CCF4 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 7B508 8008CCF8 0D80143C */  lui        $s4, %hi(D_800C8C70)
    /* 7B50C 8008CCFC 708C948E */  lw         $s4, %lo(D_800C8C70)($s4)
    /* 7B510 8008CD00 04004224 */  addiu      $v0, $v0, 0x4
    /* 7B514 8008CD04 02004688 */  lwl        $a2, 0x2($v0)
    /* 7B518 8008CD08 002A1400 */  sll        $a1, $s4, 8
    /* 7B51C 8008CD0C 020086AA */  swl        $a2, 0x2($s4)
    /* 7B520 8008CD10 020045A8 */  swl        $a1, 0x2($v0)
    /* 7B524 8008CD14 21188002 */  addu       $v1, $s4, $zero
    /* 7B528 8008CD18 18006424 */  addiu      $a0, $v1, 0x18
    /* 7B52C 8008CD1C 2138F201 */  addu       $a3, $t7, $s2
    /* 7B530 8008CD20 003C0700 */  sll        $a3, $a3, 16
    /* 7B534 8008CD24 25586701 */  or         $t3, $t3, $a3
    /* 7B538 8008CD28 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7B53C 8008CD2C 708C24AC */  sw         $a0, %lo(D_800C8C70)($at)
    /* 7B540 8008CD30 180076AC */  sw         $s6, 0x18($v1)
    /* 7B544 8008CD34 2C00058E */  lw         $a1, 0x2C($s0)
    /* 7B548 8008CD38 25504701 */  or         $t2, $t2, $a3
    /* 7B54C 8008CD3C 08008EAC */  sw         $t6, 0x8($a0)
    /* 7B550 8008CD40 0C008DAC */  sw         $t5, 0xC($a0)
    /* 7B554 8008CD44 10008BAC */  sw         $t3, 0x10($a0)
    /* 7B558 8008CD48 14008AAC */  sw         $t2, 0x14($a0)
    /* 7B55C 8008CD4C 2528B500 */  or         $a1, $a1, $s5
    /* 7B560 8008CD50 040085AC */  sw         $a1, 0x4($a0)
    /* 7B564 8008CD54 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 7B568 8008CD58 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 7B56C 8008CD5C 0D80143C */  lui        $s4, %hi(D_800C8C70)
    /* 7B570 8008CD60 708C948E */  lw         $s4, %lo(D_800C8C70)($s4)
    /* 7B574 8008CD64 04004224 */  addiu      $v0, $v0, 0x4
    /* 7B578 8008CD68 02004688 */  lwl        $a2, 0x2($v0)
    /* 7B57C 8008CD6C 002A1400 */  sll        $a1, $s4, 8
    /* 7B580 8008CD70 020086AA */  swl        $a2, 0x2($s4)
    /* 7B584 8008CD74 020045A8 */  swl        $a1, 0x2($v0)
    /* 7B588 8008CD78 21188002 */  addu       $v1, $s4, $zero
    /* 7B58C 8008CD7C 18006424 */  addiu      $a0, $v1, 0x18
    /* 7B590 8008CD80 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7B594 8008CD84 708C24AC */  sw         $a0, %lo(D_800C8C70)($at)
    /* 7B598 8008CD88 180076AC */  sw         $s6, 0x18($v1)
    /* 7B59C 8008CD8C 3000058E */  lw         $a1, 0x30($s0)
    /* 7B5A0 8008CD90 25400701 */  or         $t0, $t0, $a3
    /* 7B5A4 8008CD94 08008DAC */  sw         $t5, 0x8($a0)
    /* 7B5A8 8008CD98 0C0089AC */  sw         $t1, 0xC($a0)
    /* 7B5AC 8008CD9C 10008AAC */  sw         $t2, 0x10($a0)
    /* 7B5B0 8008CDA0 140088AC */  sw         $t0, 0x14($a0)
    /* 7B5B4 8008CDA4 2528B500 */  or         $a1, $a1, $s5
    /* 7B5B8 8008CDA8 040085AC */  sw         $a1, 0x4($a0)
    /* 7B5BC 8008CDAC 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 7B5C0 8008CDB0 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 7B5C4 8008CDB4 0D80143C */  lui        $s4, %hi(D_800C8C70)
    /* 7B5C8 8008CDB8 708C948E */  lw         $s4, %lo(D_800C8C70)($s4)
    /* 7B5CC 8008CDBC 04004224 */  addiu      $v0, $v0, 0x4
    /* 7B5D0 8008CDC0 02004588 */  lwl        $a1, 0x2($v0)
    /* 7B5D4 8008CDC4 00221400 */  sll        $a0, $s4, 8
    /* 7B5D8 8008CDC8 020085AA */  swl        $a1, 0x2($s4)
    /* 7B5DC 8008CDCC 020044A8 */  swl        $a0, 0x2($v0)
    /* 7B5E0 8008CDD0 21188002 */  addu       $v1, $s4, $zero
    /* 7B5E4 8008CDD4 01001827 */  addiu      $t8, $t8, 0x1
    /* 7B5E8 8008CDD8 18006324 */  addiu      $v1, $v1, 0x18
    /* 7B5EC 8008CDDC 2A101E03 */  slt        $v0, $t8, $fp
    /* 7B5F0 8008CDE0 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 7B5F4 8008CDE4 708C23AC */  sw         $v1, %lo(D_800C8C70)($at)
    /* 7B5F8 8008CDE8 8AFF4014 */  bnez       $v0, .L8008CC14
    /* 7B5FC 8008CDEC 21883302 */   addu      $s1, $s1, $s3
  .L8008CDF0:
    /* 7B600 8008CDF0 1400B48F */  lw         $s4, 0x14($sp)
    /* 7B604 8008CDF4 01003927 */  addiu      $t9, $t9, 0x1
    /* 7B608 8008CDF8 2A103403 */  slt        $v0, $t9, $s4
    /* 7B60C 8008CDFC 7FFF4014 */  bnez       $v0, .L8008CBFC
    /* 7B610 8008CE00 21B8F202 */   addu      $s7, $s7, $s2
  .L8008CE04:
    /* 7B614 8008CE04 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 7B618 8008CE08 4800BE8F */  lw         $fp, 0x48($sp)
    /* 7B61C 8008CE0C 4400B78F */  lw         $s7, 0x44($sp)
    /* 7B620 8008CE10 4000B68F */  lw         $s6, 0x40($sp)
    /* 7B624 8008CE14 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 7B628 8008CE18 3800B48F */  lw         $s4, 0x38($sp)
    /* 7B62C 8008CE1C 3400B38F */  lw         $s3, 0x34($sp)
    /* 7B630 8008CE20 3000B28F */  lw         $s2, 0x30($sp)
    /* 7B634 8008CE24 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 7B638 8008CE28 2800B08F */  lw         $s0, 0x28($sp)
    /* 7B63C 8008CE2C 0800E003 */  jr         $ra
    /* 7B640 8008CE30 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_8008C884
