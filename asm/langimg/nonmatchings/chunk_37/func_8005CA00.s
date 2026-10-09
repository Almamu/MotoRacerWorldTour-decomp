nonmatching func_8005CA00, 0x39C

glabel func_8005CA00
    /* 4B210 8005CA00 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4B214 8005CA04 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4B218 8005CA08 21888000 */  addu       $s1, $a0, $zero
    /* 4B21C 8005CA0C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 4B220 8005CA10 2000B4AF */  sw         $s4, 0x20($sp)
    /* 4B224 8005CA14 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4B228 8005CA18 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4B22C 8005CA1C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4B230 8005CA20 1800258E */  lw         $a1, 0x18($s1)
    /* 4B234 8005CA24 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 4B238 8005CA28 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 4B23C 8005CA2C F1E3010C */  jal        func_80078FC4
    /* 4B240 8005CA30 00000000 */   nop
    /* 4B244 8005CA34 C400258E */  lw         $a1, 0xC4($s1)
    /* 4B248 8005CA38 7A24020C */  jal        func_800891E8
    /* 4B24C 8005CA3C 30004424 */   addiu     $a0, $v0, 0x30
    /* 4B250 8005CA40 0D80033C */  lui        $v1, %hi(D_800CC088)
    /* 4B254 8005CA44 8000043C */  lui        $a0, (0x800000 >> 16)
    /* 4B258 8005CA48 88C0688C */  lw         $t0, %lo(D_800CC088)($v1)
    /* 4B25C 8005CA4C 21384000 */  addu       $a3, $v0, $zero
    /* 4B260 8005CA50 B00324AE */  sw         $a0, 0x3B0($s1)
    /* 4B264 8005CA54 0D80033C */  lui        $v1, %hi(D_800D5F40)
    /* 4B268 8005CA58 405F638C */  lw         $v1, %lo(D_800D5F40)($v1)
    /* 4B26C 8005CA5C 04000224 */  addiu      $v0, $zero, 0x4
    /* 4B270 8005CA60 05006210 */  beq        $v1, $v0, .L8005CA78
    /* 4B274 8005CA64 02000224 */   addiu     $v0, $zero, 0x2
    /* 4B278 8005CA68 04006210 */  beq        $v1, $v0, .L8005CA7C
    /* 4B27C 8005CA6C 30000224 */   addiu     $v0, $zero, 0x30
    /* 4B280 8005CA70 02006014 */  bnez       $v1, .L8005CA7C
    /* 4B284 8005CA74 20000224 */   addiu     $v0, $zero, 0x20
  .L8005CA78:
    /* 4B288 8005CA78 30000224 */  addiu      $v0, $zero, 0x30
  .L8005CA7C:
    /* 4B28C 8005CA7C B40322AE */  sw         $v0, 0x3B4($s1)
    /* 4B290 8005CA80 02001224 */  addiu      $s2, $zero, 0x2
    /* 4B294 8005CA84 0D80063C */  lui        $a2, %hi(D_800CB408)
    /* 4B298 8005CA88 08B4C624 */  addiu      $a2, $a2, %lo(D_800CB408)
    /* 4B29C 8005CA8C B8000524 */  addiu      $a1, $zero, 0xB8
  .L8005CA90:
    /* 4B2A0 8005CA90 B803228E */  lw         $v0, 0x3B8($s1)
    /* 4B2A4 8005CA94 00000000 */  nop
    /* 4B2A8 8005CA98 2110A200 */  addu       $v0, $a1, $v0
    /* 4B2AC 8005CA9C 08004484 */  lh         $a0, 0x8($v0)
    /* 4B2B0 8005CAA0 0A004384 */  lh         $v1, 0xA($v0)
    /* 4B2B4 8005CAA4 00230400 */  sll        $a0, $a0, 12
    /* 4B2B8 8005CAA8 23180300 */  negu       $v1, $v1
    /* 4B2BC 8005CAAC 1A008300 */  div        $zero, $a0, $v1
    /* 4B2C0 8005CAB0 12200000 */  mflo       $a0
    /* 4B2C4 8005CAB4 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* 4B2C8 8005CAB8 A4FFA524 */  addiu      $a1, $a1, -0x5C
    /* 4B2CC 8005CABC 0000C4AC */  sw         $a0, 0x0($a2)
    /* 4B2D0 8005CAC0 F3FF4106 */  bgez       $s2, .L8005CA90
    /* 4B2D4 8005CAC4 FCFFC624 */   addiu     $a2, $a2, -0x4
    /* 4B2D8 8005CAC8 7803228E */  lw         $v0, 0x378($s1)
    /* 4B2DC 8005CACC 00000000 */  nop
    /* 4B2E0 8005CAD0 0000428C */  lw         $v0, 0x0($v0)
    /* 4B2E4 8005CAD4 02000524 */  addiu      $a1, $zero, 0x2
    /* 4B2E8 8005CAD8 1A004514 */  bne        $v0, $a1, .L8005CB44
    /* 4B2EC 8005CADC A8004230 */   andi      $v0, $v0, 0xA8
    /* 4B2F0 8005CAE0 5555053C */  lui        $a1, (0x55555556 >> 16)
    /* 4B2F4 8005CAE4 3400E38C */  lw         $v1, 0x34($a3)
    /* 4B2F8 8005CAE8 5655A534 */  ori        $a1, $a1, (0x55555556 & 0xFFFF)
    /* 4B2FC 8005CAEC 43180300 */  sra        $v1, $v1, 1
    /* 4B300 8005CAF0 CA0323A6 */  sh         $v1, 0x3CA($s1)
    /* 4B304 8005CAF4 001C0300 */  sll        $v1, $v1, 16
    /* 4B308 8005CAF8 C3180300 */  sra        $v1, $v1, 3
    /* 4B30C 8005CAFC 18006500 */  mult       $v1, $a1
    /* 4B310 8005CB00 3400E28C */  lw         $v0, 0x34($a3)
    /* 4B314 8005CB04 04000424 */  addiu      $a0, $zero, 0x4
    /* 4B318 8005CB08 C20324A6 */  sh         $a0, 0x3C2($s1)
    /* 4B31C 8005CB0C 83100200 */  sra        $v0, $v0, 2
    /* 4B320 8005CB10 C60322A6 */  sh         $v0, 0x3C6($s1)
    /* 4B324 8005CB14 3400E48C */  lw         $a0, 0x34($a3)
    /* 4B328 8005CB18 C31F0300 */  sra        $v1, $v1, 31
    /* 4B32C 8005CB1C C40320A6 */  sh         $zero, 0x3C4($s1)
    /* 4B330 8005CB20 C00320A6 */  sh         $zero, 0x3C0($s1)
    /* 4B334 8005CB24 BC0320A6 */  sh         $zero, 0x3BC($s1)
    /* 4B338 8005CB28 43200400 */  sra        $a0, $a0, 1
    /* 4B33C 8005CB2C BE0324A6 */  sh         $a0, 0x3BE($s1)
    /* 4B340 8005CB30 10280000 */  mfhi       $a1
    /* 4B344 8005CB34 2328A300 */  subu       $a1, $a1, $v1
    /* 4B348 8005CB38 032B0500 */  sra        $a1, $a1, 12
    /* 4B34C 8005CB3C 11730108 */  j          .L8005CC44
    /* 4B350 8005CB40 C80325A6 */   sh        $a1, 0x3C8($s1)
  .L8005CB44:
    /* 4B354 8005CB44 2E004010 */  beqz       $v0, .L8005CC00
    /* 4B358 8005CB48 01000224 */   addiu     $v0, $zero, 0x1
    /* 4B35C 8005CB4C 0D80033C */  lui        $v1, %hi(D_800D49A4)
    /* 4B360 8005CB50 A449638C */  lw         $v1, %lo(D_800D49A4)($v1)
    /* 4B364 8005CB54 00000000 */  nop
    /* 4B368 8005CB58 12006214 */  bne        $v1, $v0, .L8005CBA4
    /* 4B36C 8005CB5C 54000224 */   addiu     $v0, $zero, 0x54
    /* 4B370 8005CB60 0D80023C */  lui        $v0, %hi(D_800D5F40)
    /* 4B374 8005CB64 405F428C */  lw         $v0, %lo(D_800D5F40)($v0)
    /* 4B378 8005CB68 00000000 */  nop
    /* 4B37C 8005CB6C 02004014 */  bnez       $v0, .L8005CB78
    /* 4B380 8005CB70 54000224 */   addiu     $v0, $zero, 0x54
    /* 4B384 8005CB74 64000224 */  addiu      $v0, $zero, 0x64
  .L8005CB78:
    /* 4B388 8005CB78 AC0322AE */  sw         $v0, 0x3AC($s1)
    /* 4B38C 8005CB7C 3400E28C */  lw         $v0, 0x34($a3)
    /* 4B390 8005CB80 00000000 */  nop
    /* 4B394 8005CB84 43100200 */  sra        $v0, $v0, 1
    /* 4B398 8005CB88 CA0322A6 */  sh         $v0, 0x3CA($s1)
    /* 4B39C 8005CB8C 3400E38C */  lw         $v1, 0x34($a3)
    /* 4B3A0 8005CB90 04000424 */  addiu      $a0, $zero, 0x4
    /* 4B3A4 8005CB94 C20324A6 */  sh         $a0, 0x3C2($s1)
    /* 4B3A8 8005CB98 83180300 */  sra        $v1, $v1, 2
    /* 4B3AC 8005CB9C 08730108 */  j          .L8005CC20
    /* 4B3B0 8005CBA0 C60323A6 */   sh        $v1, 0x3C6($s1)
  .L8005CBA4:
    /* 4B3B4 8005CBA4 AC0322AE */  sw         $v0, 0x3AC($s1)
    /* 4B3B8 8005CBA8 3400E48C */  lw         $a0, 0x34($a3)
    /* 4B3BC 8005CBAC 08000324 */  addiu      $v1, $zero, 0x8
    /* 4B3C0 8005CBB0 C60323A6 */  sh         $v1, 0x3C6($s1)
    /* 4B3C4 8005CBB4 C20325A6 */  sh         $a1, 0x3C2($s1)
    /* 4B3C8 8005CBB8 40100400 */  sll        $v0, $a0, 1
    /* 4B3CC 8005CBBC 21104400 */  addu       $v0, $v0, $a0
    /* 4B3D0 8005CBC0 00130200 */  sll        $v0, $v0, 12
    /* 4B3D4 8005CBC4 83130200 */  sra        $v0, $v0, 14
    /* 4B3D8 8005CBC8 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 4B3DC 8005CBCC CA0322A6 */  sh         $v0, 0x3CA($s1)
    /* 4B3E0 8005CBD0 3400E38C */  lw         $v1, 0x34($a3)
    /* 4B3E4 8005CBD4 8000043C */  lui        $a0, (0x800000 >> 16)
    /* 4B3E8 8005CBD8 B40324AE */  sw         $a0, 0x3B4($s1)
    /* 4B3EC 8005CBDC 43180300 */  sra        $v1, $v1, 1
    /* 4B3F0 8005CBE0 BE0323A6 */  sh         $v1, 0x3BE($s1)
    /* 4B3F4 8005CBE4 04000291 */  lbu        $v0, 0x4($t0)
    /* 4B3F8 8005CBE8 00000491 */  lbu        $a0, 0x0($t0)
    /* 4B3FC 8005CBEC 00000000 */  nop
    /* 4B400 8005CBF0 23104400 */  subu       $v0, $v0, $a0
    /* 4B404 8005CBF4 43100200 */  sra        $v0, $v0, 1
    /* 4B408 8005CBF8 0C730108 */  j          .L8005CC30
    /* 4B40C 8005CBFC B00322AE */   sw        $v0, 0x3B0($s1)
  .L8005CC00:
    /* 4B410 8005CC00 49000224 */  addiu      $v0, $zero, 0x49
    /* 4B414 8005CC04 AC0322AE */  sw         $v0, 0x3AC($s1)
    /* 4B418 8005CC08 3400E38C */  lw         $v1, 0x34($a3)
    /* 4B41C 8005CC0C 04000224 */  addiu      $v0, $zero, 0x4
    /* 4B420 8005CC10 C60320A6 */  sh         $zero, 0x3C6($s1)
    /* 4B424 8005CC14 C20322A6 */  sh         $v0, 0x3C2($s1)
    /* 4B428 8005CC18 43180300 */  sra        $v1, $v1, 1
    /* 4B42C 8005CC1C CA0323A6 */  sh         $v1, 0x3CA($s1)
  .L8005CC20:
    /* 4B430 8005CC20 3400E28C */  lw         $v0, 0x34($a3)
    /* 4B434 8005CC24 00000000 */  nop
    /* 4B438 8005CC28 43100200 */  sra        $v0, $v0, 1
    /* 4B43C 8005CC2C BE0322A6 */  sh         $v0, 0x3BE($s1)
  .L8005CC30:
    /* 4B440 8005CC30 C00320A6 */  sh         $zero, 0x3C0($s1)
    /* 4B444 8005CC34 3000E28C */  lw         $v0, 0x30($a3)
    /* 4B448 8005CC38 00000000 */  nop
    /* 4B44C 8005CC3C 43100200 */  sra        $v0, $v0, 1
    /* 4B450 8005CC40 BC0322A6 */  sh         $v0, 0x3BC($s1)
  .L8005CC44:
    /* 4B454 8005CC44 21202002 */  addu       $a0, $s1, $zero
    /* 4B458 8005CC48 37000524 */  addiu      $a1, $zero, 0x37
    /* 4B45C 8005CC4C 02000324 */  addiu      $v1, $zero, 0x2
    /* 4B460 8005CC50 DC0323A6 */  sh         $v1, 0x3DC($s1)
    /* 4B464 8005CC54 0971010C */  jal        func_8005C424
    /* 4B468 8005CC58 DE0323A6 */   sh        $v1, 0x3DE($s1)
    /* 4B46C 8005CC5C 21984000 */  addu       $s3, $v0, $zero
    /* 4B470 8005CC60 21286002 */  addu       $a1, $s3, $zero
    /* 4B474 8005CC64 DC032386 */  lh         $v1, 0x3DC($s1)
    /* 4B478 8005CC68 0D80103C */  lui        $s0, %hi(D_800CBD58)
    /* 4B47C 8005CC6C 58BD1026 */  addiu      $s0, $s0, %lo(D_800CBD58)
    /* 4B480 8005CC70 80180300 */  sll        $v1, $v1, 2
    /* 4B484 8005CC74 21187000 */  addu       $v1, $v1, $s0
    /* 4B488 8005CC78 0000648C */  lw         $a0, 0x0($v1)
    /* 4B48C 8005CC7C F100020C */  jal        func_800803C4
    /* 4B490 8005CC80 02001224 */   addiu     $s2, $zero, 0x2
    /* 4B494 8005CC84 C6032696 */  lhu        $a2, 0x3C6($s1)
    /* 4B498 8005CC88 CA032396 */  lhu        $v1, 0x3CA($s1)
    /* 4B49C 8005CC8C DE032486 */  lh         $a0, 0x3DE($s1)
    /* 4B4A0 8005CC90 23100200 */  negu       $v0, $v0
    /* 4B4A4 8005CC94 CC0322A6 */  sh         $v0, 0x3CC($s1)
    /* 4B4A8 8005CC98 2118C300 */  addu       $v1, $a2, $v1
    /* 4B4AC 8005CC9C 02006324 */  addiu      $v1, $v1, 0x2
    /* 4B4B0 8005CCA0 80200400 */  sll        $a0, $a0, 2
    /* 4B4B4 8005CCA4 21209000 */  addu       $a0, $a0, $s0
    /* 4B4B8 8005CCA8 D60323A6 */  sh         $v1, 0x3D6($s1)
    /* 4B4BC 8005CCAC CE0323A6 */  sh         $v1, 0x3CE($s1)
    /* 4B4C0 8005CCB0 DA0326A6 */  sh         $a2, 0x3DA($s1)
    /* 4B4C4 8005CCB4 0000838C */  lw         $v1, 0x0($a0)
    /* 4B4C8 8005CCB8 21A00002 */  addu       $s4, $s0, $zero
    /* 4B4CC 8005CCBC 00006290 */  lbu        $v0, 0x0($v1)
    /* 4B4D0 8005CCC0 B8001024 */  addiu      $s0, $zero, 0xB8
    /* 4B4D4 8005CCC4 40100200 */  sll        $v0, $v0, 1
    /* 4B4D8 8005CCC8 23100200 */  negu       $v0, $v0
    /* 4B4DC 8005CCCC D20322A6 */  sh         $v0, 0x3D2($s1)
  .L8005CCD0:
    /* 4B4E0 8005CCD0 DC032286 */  lh         $v0, 0x3DC($s1)
    /* 4B4E4 8005CCD4 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4B4E8 8005CCD8 80100200 */  sll        $v0, $v0, 2
    /* 4B4EC 8005CCDC 21105400 */  addu       $v0, $v0, $s4
    /* 4B4F0 8005CCE0 0000448C */  lw         $a0, 0x0($v0)
    /* 4B4F4 8005CCE4 21180302 */  addu       $v1, $s0, $v1
    /* 4B4F8 8005CCE8 380064AC */  sw         $a0, 0x38($v1)
    /* 4B4FC 8005CCEC DE032286 */  lh         $v0, 0x3DE($s1)
    /* 4B500 8005CCF0 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4B504 8005CCF4 80100200 */  sll        $v0, $v0, 2
    /* 4B508 8005CCF8 21105400 */  addu       $v0, $v0, $s4
    /* 4B50C 8005CCFC 0000448C */  lw         $a0, 0x0($v0)
    /* 4B510 8005CD00 21180302 */  addu       $v1, $s0, $v1
    /* 4B514 8005CD04 3C0064AC */  sw         $a0, 0x3C($v1)
    /* 4B518 8005CD08 B803228E */  lw         $v0, 0x3B8($s1)
    /* 4B51C 8005CD0C 00000000 */  nop
    /* 4B520 8005CD10 21100202 */  addu       $v0, $s0, $v0
    /* 4B524 8005CD14 300053AC */  sw         $s3, 0x30($v0)
    /* 4B528 8005CD18 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4B52C 8005CD1C 0300422A */  slti       $v0, $s2, 0x3
    /* 4B530 8005CD20 21180302 */  addu       $v1, $s0, $v1
    /* 4B534 8005CD24 04004014 */  bnez       $v0, .L8005CD38
    /* 4B538 8005CD28 2C0060AC */   sw        $zero, 0x2C($v1)
    /* 4B53C 8005CD2C 21202002 */  addu       $a0, $s1, $zero
    /* 4B540 8005CD30 57730108 */  j          .L8005CD5C
    /* 4B544 8005CD34 36000524 */   addiu     $a1, $zero, 0x36
  .L8005CD38:
    /* 4B548 8005CD38 0200422A */  slti       $v0, $s2, 0x2
    /* 4B54C 8005CD3C 03004014 */  bnez       $v0, .L8005CD4C
    /* 4B550 8005CD40 21202002 */   addu      $a0, $s1, $zero
    /* 4B554 8005CD44 57730108 */  j          .L8005CD5C
    /* 4B558 8005CD48 35000524 */   addiu     $a1, $zero, 0x35
  .L8005CD4C:
    /* 4B55C 8005CD4C 0300401E */  bgtz       $s2, .L8005CD5C
    /* 4B560 8005CD50 34000524 */   addiu     $a1, $zero, 0x34
    /* 4B564 8005CD54 21202002 */  addu       $a0, $s1, $zero
    /* 4B568 8005CD58 33000524 */  addiu      $a1, $zero, 0x33
  .L8005CD5C:
    /* 4B56C 8005CD5C 0971010C */  jal        func_8005C424
    /* 4B570 8005CD60 FFFF5226 */   addiu     $s2, $s2, -0x1
    /* 4B574 8005CD64 B803238E */  lw         $v1, 0x3B8($s1)
    /* 4B578 8005CD68 00000000 */  nop
    /* 4B57C 8005CD6C 21180302 */  addu       $v1, $s0, $v1
    /* 4B580 8005CD70 340062AC */  sw         $v0, 0x34($v1)
    /* 4B584 8005CD74 D6FF4106 */  bgez       $s2, .L8005CCD0
    /* 4B588 8005CD78 A4FF1026 */   addiu     $s0, $s0, -0x5C
    /* 4B58C 8005CD7C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 4B590 8005CD80 2000B48F */  lw         $s4, 0x20($sp)
    /* 4B594 8005CD84 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4B598 8005CD88 1800B28F */  lw         $s2, 0x18($sp)
    /* 4B59C 8005CD8C 1400B18F */  lw         $s1, 0x14($sp)
    /* 4B5A0 8005CD90 1000B08F */  lw         $s0, 0x10($sp)
    /* 4B5A4 8005CD94 0800E003 */  jr         $ra
    /* 4B5A8 8005CD98 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8005CA00
