nonmatching func_8004E99C, 0x474

glabel func_8004E99C
    /* 3D1AC 8004E99C D0FEBD27 */  addiu      $sp, $sp, -0x130
    /* 3D1B0 8004E9A0 2401B7AF */  sw         $s7, 0x124($sp)
    /* 3D1B4 8004E9A4 21B8A000 */  addu       $s7, $a1, $zero
    /* 3D1B8 8004E9A8 3001A4AF */  sw         $a0, 0x130($sp)
    /* 3D1BC 8004E9AC 21109700 */  addu       $v0, $a0, $s7
    /* 3D1C0 8004E9B0 2C01BFAF */  sw         $ra, 0x12C($sp)
    /* 3D1C4 8004E9B4 2801BEAF */  sw         $fp, 0x128($sp)
    /* 3D1C8 8004E9B8 2001B6AF */  sw         $s6, 0x120($sp)
    /* 3D1CC 8004E9BC 1C01B5AF */  sw         $s5, 0x11C($sp)
    /* 3D1D0 8004E9C0 1801B4AF */  sw         $s4, 0x118($sp)
    /* 3D1D4 8004E9C4 1401B3AF */  sw         $s3, 0x114($sp)
    /* 3D1D8 8004E9C8 1001B2AF */  sw         $s2, 0x110($sp)
    /* 3D1DC 8004E9CC 0C01B1AF */  sw         $s1, 0x10C($sp)
    /* 3D1E0 8004E9D0 0801B0AF */  sw         $s0, 0x108($sp)
    /* 3D1E4 8004E9D4 70044380 */  lb         $v1, 0x470($v0)
    /* 3D1E8 8004E9D8 7803858C */  lw         $a1, 0x378($a0)
    /* 3D1EC 8004E9DC 21800000 */  addu       $s0, $zero, $zero
    /* 3D1F0 8004E9E0 2118A300 */  addu       $v1, $a1, $v1
    /* 3D1F4 8004E9E4 241E6380 */  lb         $v1, 0x1E24($v1)
    /* 3D1F8 8004E9E8 00000000 */  nop
    /* 3D1FC 8004E9EC 0C006004 */  bltz       $v1, .L8004EA20
    /* 3D200 8004E9F0 21200000 */   addu      $a0, $zero, $zero
    /* 3D204 8004E9F4 40100300 */  sll        $v0, $v1, 1
    /* 3D208 8004E9F8 21104300 */  addu       $v0, $v0, $v1
    /* 3D20C 8004E9FC 80100200 */  sll        $v0, $v0, 2
    /* 3D210 8004EA00 23104300 */  subu       $v0, $v0, $v1
    /* 3D214 8004EA04 80100200 */  sll        $v0, $v0, 2
    /* 3D218 8004EA08 23104300 */  subu       $v0, $v0, $v1
    /* 3D21C 8004EA0C 80100200 */  sll        $v0, $v0, 2
    /* 3D220 8004EA10 21104300 */  addu       $v0, $v0, $v1
    /* 3D224 8004EA14 C0100200 */  sll        $v0, $v0, 3
    /* 3D228 8004EA18 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 3D22C 8004EA1C 2120A200 */  addu       $a0, $a1, $v0
  .L8004EA20:
    /* 3D230 8004EA20 07008010 */  beqz       $a0, .L8004EA40
    /* 3D234 8004EA24 42000324 */   addiu     $v1, $zero, 0x42
    /* 3D238 8004EA28 0000828C */  lw         $v0, 0x0($a0)
    /* 3D23C 8004EA2C 00000000 */  nop
    /* 3D240 8004EA30 7E004230 */  andi       $v0, $v0, 0x7E
    /* 3D244 8004EA34 02004314 */  bne        $v0, $v1, .L8004EA40
    /* 3D248 8004EA38 00000000 */   nop
    /* 3D24C 8004EA3C 3000908C */  lw         $s0, 0x30($a0)
  .L8004EA40:
    /* 3D250 8004EA40 00000000 */  nop
    /* 3D254 8004EA44 E6000012 */  beqz       $s0, .L8004EDE0
    /* 3D258 8004EA48 3000B627 */   addiu     $s6, $sp, 0x30
    /* 3D25C 8004EA4C 80B81700 */  sll        $s7, $s7, 2
    /* 3D260 8004EA50 3001A88F */  lw         $t0, 0x130($sp)
    /* 3D264 8004EA54 3400058E */  lw         $a1, 0x34($s0)
    /* 3D268 8004EA58 21101701 */  addu       $v0, $t0, $s7
    /* 3D26C 8004EA5C 3C04518C */  lw         $s1, 0x43C($v0)
    /* 3D270 8004EA60 D560020C */  jal        func_80098354
    /* 3D274 8004EA64 2120C002 */   addu      $a0, $s6, $zero
    /* 3D278 8004EA68 A000A427 */  addiu      $a0, $sp, 0xA0
    /* 3D27C 8004EA6C C000A527 */  addiu      $a1, $sp, 0xC0
    /* 3D280 8004EA70 4000BE27 */  addiu      $fp, $sp, 0x40
    /* 3D284 8004EA74 3000A98F */  lw         $t1, 0x30($sp)
    /* 3D288 8004EA78 3400AA8F */  lw         $t2, 0x34($sp)
    /* 3D28C 8004EA7C 3800AB8F */  lw         $t3, 0x38($sp)
    /* 3D290 8004EA80 3C00A88F */  lw         $t0, 0x3C($sp)
    /* 3D294 8004EA84 1000A9AF */  sw         $t1, 0x10($sp)
    /* 3D298 8004EA88 1400AAAF */  sw         $t2, 0x14($sp)
    /* 3D29C 8004EA8C 1800ABAF */  sw         $t3, 0x18($sp)
    /* 3D2A0 8004EA90 1C00A8AF */  sw         $t0, 0x1C($sp)
    /* 3D2A4 8004EA94 4000A98F */  lw         $t1, 0x40($sp)
    /* 3D2A8 8004EA98 4400AA8F */  lw         $t2, 0x44($sp)
    /* 3D2AC 8004EA9C 4800AB8F */  lw         $t3, 0x48($sp)
    /* 3D2B0 8004EAA0 4C00A88F */  lw         $t0, 0x4C($sp)
    /* 3D2B4 8004EAA4 2000A9AF */  sw         $t1, 0x20($sp)
    /* 3D2B8 8004EAA8 2400AAAF */  sw         $t2, 0x24($sp)
    /* 3D2BC 8004EAAC 2800ABAF */  sw         $t3, 0x28($sp)
    /* 3D2C0 8004EAB0 2C00A8AF */  sw         $t0, 0x2C($sp)
    /* 3D2C4 8004EAB4 6400098E */  lw         $t1, 0x64($s0)
    /* 3D2C8 8004EAB8 68000A8E */  lw         $t2, 0x68($s0)
    /* 3D2CC 8004EABC 6C000B8E */  lw         $t3, 0x6C($s0)
    /* 3D2D0 8004EAC0 3000A9AF */  sw         $t1, 0x30($sp)
    /* 3D2D4 8004EAC4 3400AAAF */  sw         $t2, 0x34($sp)
    /* 3D2D8 8004EAC8 3800ABAF */  sw         $t3, 0x38($sp)
    /* 3D2DC 8004EACC F800298E */  lw         $t1, 0xF8($s1)
    /* 3D2E0 8004EAD0 FC002A8E */  lw         $t2, 0xFC($s1)
    /* 3D2E4 8004EAD4 00012B8E */  lw         $t3, 0x100($s1)
    /* 3D2E8 8004EAD8 4000A9AF */  sw         $t1, 0x40($sp)
    /* 3D2EC 8004EADC 4400AAAF */  sw         $t2, 0x44($sp)
    /* 3D2F0 8004EAE0 4800ABAF */  sw         $t3, 0x48($sp)
    /* 3D2F4 8004EAE4 4401228E */  lw         $v0, 0x144($s1)
    /* 3D2F8 8004EAE8 1000A927 */  addiu      $t1, $sp, 0x10
    /* 3D2FC 8004EAEC C000A0A7 */  sh         $zero, 0xC0($sp)
    /* 3D300 8004EAF0 C400A0A7 */  sh         $zero, 0xC4($sp)
    /* 3D304 8004EAF4 0001A9AF */  sw         $t1, 0x100($sp)
    /* 3D308 8004EAF8 963F010C */  jal        func_8004FE58
    /* 3D30C 8004EAFC C200A2A7 */   sh        $v0, 0xC2($sp)
    /* 3D310 8004EB00 A000A527 */  addiu      $a1, $sp, 0xA0
    /* 3D314 8004EB04 0001A48F */  lw         $a0, 0x100($sp)
    /* 3D318 8004EB08 8000A627 */  addiu      $a2, $sp, 0x80
    /* 3D31C 8004EB0C BC00A0AF */  sw         $zero, 0xBC($sp)
    /* 3D320 8004EB10 B800A0AF */  sw         $zero, 0xB8($sp)
    /* 3D324 8004EB14 9D61020C */  jal        func_80098674
    /* 3D328 8004EB18 B400A0AF */   sw        $zero, 0xB4($sp)
    /* 3D32C 8004EB1C B400A427 */  addiu      $a0, $sp, 0xB4
    /* 3D330 8004EB20 1F62020C */  jal        func_8009887C
    /* 3D334 8004EB24 9400A527 */   addiu     $a1, $sp, 0x94
    /* 3D338 8004EB28 9400B227 */  addiu      $s2, $sp, 0x94
    /* 3D33C 8004EB2C 21204002 */  addu       $a0, $s2, $zero
    /* 3D340 8004EB30 F465020C */  jal        func_800997D0
    /* 3D344 8004EB34 2400A527 */   addiu     $a1, $sp, 0x24
    /* 3D348 8004EB38 C800A427 */  addiu      $a0, $sp, 0xC8
    /* 3D34C 8004EB3C 4001228E */  lw         $v0, 0x140($s1)
    /* 3D350 8004EB40 E800A527 */  addiu      $a1, $sp, 0xE8
    /* 3D354 8004EB44 EA00A0A7 */  sh         $zero, 0xEA($sp)
    /* 3D358 8004EB48 EC00A0A7 */  sh         $zero, 0xEC($sp)
    /* 3D35C 8004EB4C 963F010C */  jal        func_8004FE58
    /* 3D360 8004EB50 E800A2A7 */   sh        $v0, 0xE8($sp)
    /* 3D364 8004EB54 8000A427 */  addiu      $a0, $sp, 0x80
    /* 3D368 8004EB58 C800A527 */  addiu      $a1, $sp, 0xC8
    /* 3D36C 8004EB5C 6000A627 */  addiu      $a2, $sp, 0x60
    /* 3D370 8004EB60 E400A0AF */  sw         $zero, 0xE4($sp)
    /* 3D374 8004EB64 E000A0AF */  sw         $zero, 0xE0($sp)
    /* 3D378 8004EB68 9D61020C */  jal        func_80098674
    /* 3D37C 8004EB6C DC00A0AF */   sw        $zero, 0xDC($sp)
    /* 3D380 8004EB70 DC00A427 */  addiu      $a0, $sp, 0xDC
    /* 3D384 8004EB74 1F62020C */  jal        func_8009887C
    /* 3D388 8004EB78 7400A527 */   addiu     $a1, $sp, 0x74
    /* 3D38C 8004EB7C 7400B027 */  addiu      $s0, $sp, 0x74
    /* 3D390 8004EB80 21200002 */  addu       $a0, $s0, $zero
    /* 3D394 8004EB84 F465020C */  jal        func_800997D0
    /* 3D398 8004EB88 21284002 */   addu      $a1, $s2, $zero
    /* 3D39C 8004EB8C 6000A427 */  addiu      $a0, $sp, 0x60
    /* 3D3A0 8004EB90 48012526 */  addiu      $a1, $s1, 0x148
    /* 3D3A4 8004EB94 A000A627 */  addiu      $a2, $sp, 0xA0
    /* 3D3A8 8004EB98 DA61020C */  jal        func_80098768
    /* 3D3AC 8004EB9C 9000B327 */   addiu     $s3, $sp, 0x90
    /* 3D3B0 8004EBA0 A000A427 */  addiu      $a0, $sp, 0xA0
    /* 3D3B4 8004EBA4 F465020C */  jal        func_800997D0
    /* 3D3B8 8004EBA8 21280002 */   addu      $a1, $s0, $zero
    /* 3D3BC 8004EBAC 21206002 */  addu       $a0, $s3, $zero
    /* 3D3C0 8004EBB0 A000B427 */  addiu      $s4, $sp, 0xA0
    /* 3D3C4 8004EBB4 21288002 */  addu       $a1, $s4, $zero
    /* 3D3C8 8004EBB8 2666020C */  jal        func_80099898
    /* 3D3CC 8004EBBC 2130C002 */   addu      $a2, $s6, $zero
    /* 3D3D0 8004EBC0 C000B527 */  addiu      $s5, $sp, 0xC0
    /* 3D3D4 8004EBC4 2120A002 */  addu       $a0, $s5, $zero
    /* 3D3D8 8004EBC8 F8003026 */  addiu      $s0, $s1, 0xF8
    /* 3D3DC 8004EBCC 21280002 */  addu       $a1, $s0, $zero
    /* 3D3E0 8004EBD0 2130C003 */  addu       $a2, $fp, $zero
    /* 3D3E4 8004EBD4 9000A28F */  lw         $v0, 0x90($sp)
    /* 3D3E8 8004EBD8 9400A38F */  lw         $v1, 0x94($sp)
    /* 3D3EC 8004EBDC 9800A78F */  lw         $a3, 0x98($sp)
    /* 3D3F0 8004EBE0 B000B227 */  addiu      $s2, $sp, 0xB0
    /* 3D3F4 8004EBE4 F80022AE */  sw         $v0, 0xF8($s1)
    /* 3D3F8 8004EBE8 040003AE */  sw         $v1, 0x4($s0)
    /* 3D3FC 8004EBEC 3466020C */  jal        func_800998D0
    /* 3D400 8004EBF0 080007AE */   sw        $a3, 0x8($s0)
    /* 3D404 8004EBF4 21204002 */  addu       $a0, $s2, $zero
    /* 3D408 8004EBF8 8801268E */  lw         $a2, 0x188($s1)
    /* 3D40C 8004EBFC D765020C */  jal        func_8009975C
    /* 3D410 8004EC00 2128A002 */   addu      $a1, $s5, $zero
    /* 3D414 8004EC04 21208002 */  addu       $a0, $s4, $zero
    /* 3D418 8004EC08 8C01258E */  lw         $a1, 0x18C($s1)
    /* 3D41C 8004EC0C B565020C */  jal        func_800996D4
    /* 3D420 8004EC10 21304002 */   addu      $a2, $s2, $zero
    /* 3D424 8004EC14 21206002 */  addu       $a0, $s3, $zero
    /* 3D428 8004EC18 2128C003 */  addu       $a1, $fp, $zero
    /* 3D42C 8004EC1C 2666020C */  jal        func_80099898
    /* 3D430 8004EC20 21308002 */   addu      $a2, $s4, $zero
    /* 3D434 8004EC24 21206002 */  addu       $a0, $s3, $zero
    /* 3D438 8004EC28 21280002 */  addu       $a1, $s0, $zero
    /* 3D43C 8004EC2C 9000A28F */  lw         $v0, 0x90($sp)
    /* 3D440 8004EC30 9400A38F */  lw         $v1, 0x94($sp)
    /* 3D444 8004EC34 9800A78F */  lw         $a3, 0x98($sp)
    /* 3D448 8004EC38 2130C002 */  addu       $a2, $s6, $zero
    /* 3D44C 8004EC3C F80022AE */  sw         $v0, 0xF8($s1)
    /* 3D450 8004EC40 040003AE */  sw         $v1, 0x4($s0)
    /* 3D454 8004EC44 3466020C */  jal        func_800998D0
    /* 3D458 8004EC48 080007AE */   sw        $a3, 0x8($s0)
    /* 3D45C 8004EC4C A763020C */  jal        func_80098E9C
    /* 3D460 8004EC50 21206002 */   addu      $a0, $s3, $zero
    /* 3D464 8004EC54 5001258E */  lw         $a1, 0x150($s1)
    /* 3D468 8004EC58 21206002 */  addu       $a0, $s3, $zero
    /* 3D46C 8004EC5C 9365020C */  jal        func_8009964C
    /* 3D470 8004EC60 23280500 */   negu      $a1, $a1
    /* 3D474 8004EC64 21206002 */  addu       $a0, $s3, $zero
    /* 3D478 8004EC68 5267020C */  jal        func_80099D48
    /* 3D47C 8004EC6C 0C000524 */   addiu     $a1, $zero, 0xC
    /* 3D480 8004EC70 3000A38F */  lw         $v1, 0x30($sp)
    /* 3D484 8004EC74 9000A58F */  lw         $a1, 0x90($sp)
    /* 3D488 8004EC78 21208002 */  addu       $a0, $s4, $zero
    /* 3D48C 8004EC7C 21186500 */  addu       $v1, $v1, $a1
    /* 3D490 8004EC80 F80023AE */  sw         $v1, 0xF8($s1)
    /* 3D494 8004EC84 3800A28F */  lw         $v0, 0x38($sp)
    /* 3D498 8004EC88 9800A68F */  lw         $a2, 0x98($sp)
    /* 3D49C 8004EC8C 0001A58F */  lw         $a1, 0x100($sp)
    /* 3D4A0 8004EC90 21104600 */  addu       $v0, $v0, $a2
    /* 3D4A4 8004EC94 D560020C */  jal        func_80098354
    /* 3D4A8 8004EC98 000122AE */   sw        $v0, 0x100($s1)
    /* 3D4AC 8004EC9C 21208002 */  addu       $a0, $s4, $zero
    /* 3D4B0 8004ECA0 D000B327 */  addiu      $s3, $sp, 0xD0
    /* 3D4B4 8004ECA4 21286002 */  addu       $a1, $s3, $zero
    /* 3D4B8 8004ECA8 2130A002 */  addu       $a2, $s5, $zero
    /* 3D4BC 8004ECAC 00200324 */  addiu      $v1, $zero, 0x2000
    /* 3D4C0 8004ECB0 D000A0AF */  sw         $zero, 0xD0($sp)
    /* 3D4C4 8004ECB4 D400A0AF */  sw         $zero, 0xD4($sp)
    /* 3D4C8 8004ECB8 DA61020C */  jal        func_80098768
    /* 3D4CC 8004ECBC 080063AE */   sw        $v1, 0x8($s3)
    /* 3D4D0 8004ECC0 2120A002 */  addu       $a0, $s5, $zero
    /* 3D4D4 8004ECC4 F465020C */  jal        func_800997D0
    /* 3D4D8 8004ECC8 B400A527 */   addiu     $a1, $sp, 0xB4
    /* 3D4DC 8004ECCC 21206002 */  addu       $a0, $s3, $zero
    /* 3D4E0 8004ECD0 2128C002 */  addu       $a1, $s6, $zero
    /* 3D4E4 8004ECD4 C000A28F */  lw         $v0, 0xC0($sp)
    /* 3D4E8 8004ECD8 C400A38F */  lw         $v1, 0xC4($sp)
    /* 3D4EC 8004ECDC C800A68F */  lw         $a2, 0xC8($sp)
    /* 3D4F0 8004ECE0 E000B227 */  addiu      $s2, $sp, 0xE0
    /* 3D4F4 8004ECE4 8000A2AF */  sw         $v0, 0x80($sp)
    /* 3D4F8 8004ECE8 8400A3AF */  sw         $v1, 0x84($sp)
    /* 3D4FC 8004ECEC 8800A6AF */  sw         $a2, 0x88($sp)
    /* 3D500 8004ECF0 9001228E */  lw         $v0, 0x190($s1)
    /* 3D504 8004ECF4 21304002 */  addu       $a2, $s2, $zero
    /* 3D508 8004ECF8 E000A0AF */  sw         $zero, 0xE0($sp)
    /* 3D50C 8004ECFC E800A0AF */  sw         $zero, 0xE8($sp)
    /* 3D510 8004ED00 2666020C */  jal        func_80099898
    /* 3D514 8004ED04 E400A2AF */   sw        $v0, 0xE4($sp)
    /* 3D518 8004ED08 2120A002 */  addu       $a0, $s5, $zero
    /* 3D51C 8004ED0C 21286002 */  addu       $a1, $s3, $zero
    /* 3D520 8004ED10 2666020C */  jal        func_80099898
    /* 3D524 8004ED14 8000A627 */   addiu     $a2, $sp, 0x80
    /* 3D528 8004ED18 F000B427 */  addiu      $s4, $sp, 0xF0
    /* 3D52C 8004ED1C 21208002 */  addu       $a0, $s4, $zero
    /* 3D530 8004ED20 5000B627 */  addiu      $s6, $sp, 0x50
    /* 3D534 8004ED24 2128C002 */  addu       $a1, $s6, $zero
    /* 3D538 8004ED28 1C013026 */  addiu      $s0, $s1, 0x11C
    /* 3D53C 8004ED2C C000A28F */  lw         $v0, 0xC0($sp)
    /* 3D540 8004ED30 C400A38F */  lw         $v1, 0xC4($sp)
    /* 3D544 8004ED34 C800A78F */  lw         $a3, 0xC8($sp)
    /* 3D548 8004ED38 21300002 */  addu       $a2, $s0, $zero
    /* 3D54C 8004ED3C 5000A2AF */  sw         $v0, 0x50($sp)
    /* 3D550 8004ED40 5400A3AF */  sw         $v1, 0x54($sp)
    /* 3D554 8004ED44 3466020C */  jal        func_800998D0
    /* 3D558 8004ED48 5800A7AF */   sw        $a3, 0x58($sp)
    /* 3D55C 8004ED4C 21204002 */  addu       $a0, $s2, $zero
    /* 3D560 8004ED50 02000524 */  addiu      $a1, $zero, 0x2
    /* 3D564 8004ED54 B565020C */  jal        func_800996D4
    /* 3D568 8004ED58 21308002 */   addu      $a2, $s4, $zero
    /* 3D56C 8004ED5C 21206002 */  addu       $a0, $s3, $zero
    /* 3D570 8004ED60 21284002 */  addu       $a1, $s2, $zero
    /* 3D574 8004ED64 D765020C */  jal        func_8009975C
    /* 3D578 8004ED68 03000624 */   addiu     $a2, $zero, 0x3
    /* 3D57C 8004ED6C 2120A002 */  addu       $a0, $s5, $zero
    /* 3D580 8004ED70 21280002 */  addu       $a1, $s0, $zero
    /* 3D584 8004ED74 2666020C */  jal        func_80099898
    /* 3D588 8004ED78 21306002 */   addu      $a2, $s3, $zero
    /* 3D58C 8004ED7C 21202002 */  addu       $a0, $s1, $zero
    /* 3D590 8004ED80 C000A28F */  lw         $v0, 0xC0($sp)
    /* 3D594 8004ED84 C400A38F */  lw         $v1, 0xC4($sp)
    /* 3D598 8004ED88 C800A68F */  lw         $a2, 0xC8($sp)
    /* 3D59C 8004ED8C 2128C002 */  addu       $a1, $s6, $zero
    /* 3D5A0 8004ED90 5000A2AF */  sw         $v0, 0x50($sp)
    /* 3D5A4 8004ED94 5400A3AF */  sw         $v1, 0x54($sp)
    /* 3D5A8 8004ED98 5800A6AF */  sw         $a2, 0x58($sp)
    /* 3D5AC 8004ED9C 1C0122AE */  sw         $v0, 0x11C($s1)
    /* 3D5B0 8004EDA0 040003AE */  sw         $v1, 0x4($s0)
    /* 3D5B4 8004EDA4 16E1010C */  jal        func_80078458
    /* 3D5B8 8004EDA8 080006AE */   sw        $a2, 0x8($s0)
    /* 3D5BC 8004EDAC 3001AA8F */  lw         $t2, 0x130($sp)
    /* 3D5C0 8004EDB0 00000000 */  nop
    /* 3D5C4 8004EDB4 21105701 */  addu       $v0, $t2, $s7
    /* 3D5C8 8004EDB8 0004438C */  lw         $v1, 0x400($v0)
    /* 3D5CC 8004EDBC 21204000 */  addu       $a0, $v0, $zero
    /* 3D5D0 8004EDC0 400123AE */  sw         $v1, 0x140($s1)
    /* 3D5D4 8004EDC4 0804858C */  lw         $a1, 0x408($a0)
    /* 3D5D8 8004EDC8 21B84000 */  addu       $s7, $v0, $zero
    /* 3D5DC 8004EDCC 440125AE */  sw         $a1, 0x144($s1)
    /* 3D5E0 8004EDD0 F803E28E */  lw         $v0, 0x3F8($s7)
    /* 3D5E4 8004EDD4 00000000 */  nop
    /* 3D5E8 8004EDD8 23100200 */  negu       $v0, $v0
    /* 3D5EC 8004EDDC 500122AE */  sw         $v0, 0x150($s1)
  .L8004EDE0:
    /* 3D5F0 8004EDE0 2C01BF8F */  lw         $ra, 0x12C($sp)
    /* 3D5F4 8004EDE4 2801BE8F */  lw         $fp, 0x128($sp)
    /* 3D5F8 8004EDE8 2401B78F */  lw         $s7, 0x124($sp)
    /* 3D5FC 8004EDEC 2001B68F */  lw         $s6, 0x120($sp)
    /* 3D600 8004EDF0 1C01B58F */  lw         $s5, 0x11C($sp)
    /* 3D604 8004EDF4 1801B48F */  lw         $s4, 0x118($sp)
    /* 3D608 8004EDF8 1401B38F */  lw         $s3, 0x114($sp)
    /* 3D60C 8004EDFC 1001B28F */  lw         $s2, 0x110($sp)
    /* 3D610 8004EE00 0C01B18F */  lw         $s1, 0x10C($sp)
    /* 3D614 8004EE04 0801B08F */  lw         $s0, 0x108($sp)
    /* 3D618 8004EE08 0800E003 */  jr         $ra
    /* 3D61C 8004EE0C 3001BD27 */   addiu     $sp, $sp, 0x130
endlabel func_8004E99C
