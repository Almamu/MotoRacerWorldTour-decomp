nonmatching func_8004D300, 0x260

glabel func_8004D300
    /* 3BB10 8004D300 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 3BB14 8004D304 21308000 */  addu       $a2, $a0, $zero
    /* 3BB18 8004D308 2138A000 */  addu       $a3, $a1, $zero
    /* 3BB1C 8004D30C 2110C700 */  addu       $v0, $a2, $a3
    /* 3BB20 8004D310 8C00BFAF */  sw         $ra, 0x8C($sp)
    /* 3BB24 8004D314 8800B4AF */  sw         $s4, 0x88($sp)
    /* 3BB28 8004D318 8400B3AF */  sw         $s3, 0x84($sp)
    /* 3BB2C 8004D31C 8000B2AF */  sw         $s2, 0x80($sp)
    /* 3BB30 8004D320 7C00B1AF */  sw         $s1, 0x7C($sp)
    /* 3BB34 8004D324 7800B0AF */  sw         $s0, 0x78($sp)
    /* 3BB38 8004D328 70044380 */  lb         $v1, 0x470($v0)
    /* 3BB3C 8004D32C 7803C58C */  lw         $a1, 0x378($a2)
    /* 3BB40 8004D330 21A00000 */  addu       $s4, $zero, $zero
    /* 3BB44 8004D334 2118A300 */  addu       $v1, $a1, $v1
    /* 3BB48 8004D338 241E6380 */  lb         $v1, 0x1E24($v1)
    /* 3BB4C 8004D33C 00000000 */  nop
    /* 3BB50 8004D340 0C006004 */  bltz       $v1, .L8004D374
    /* 3BB54 8004D344 21200000 */   addu      $a0, $zero, $zero
    /* 3BB58 8004D348 40100300 */  sll        $v0, $v1, 1
    /* 3BB5C 8004D34C 21104300 */  addu       $v0, $v0, $v1
    /* 3BB60 8004D350 80100200 */  sll        $v0, $v0, 2
    /* 3BB64 8004D354 23104300 */  subu       $v0, $v0, $v1
    /* 3BB68 8004D358 80100200 */  sll        $v0, $v0, 2
    /* 3BB6C 8004D35C 23104300 */  subu       $v0, $v0, $v1
    /* 3BB70 8004D360 80100200 */  sll        $v0, $v0, 2
    /* 3BB74 8004D364 21104300 */  addu       $v0, $v0, $v1
    /* 3BB78 8004D368 C0100200 */  sll        $v0, $v0, 3
    /* 3BB7C 8004D36C E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 3BB80 8004D370 2120A200 */  addu       $a0, $a1, $v0
  .L8004D374:
    /* 3BB84 8004D374 07008010 */  beqz       $a0, .L8004D394
    /* 3BB88 8004D378 42000324 */   addiu     $v1, $zero, 0x42
    /* 3BB8C 8004D37C 0000828C */  lw         $v0, 0x0($a0)
    /* 3BB90 8004D380 00000000 */  nop
    /* 3BB94 8004D384 7E004230 */  andi       $v0, $v0, 0x7E
    /* 3BB98 8004D388 02004314 */  bne        $v0, $v1, .L8004D394
    /* 3BB9C 8004D38C 00000000 */   nop
    /* 3BBA0 8004D390 3000948C */  lw         $s4, 0x30($a0)
  .L8004D394:
    /* 3BBA4 8004D394 00000000 */  nop
    /* 3BBA8 8004D398 69008012 */  beqz       $s4, .L8004D540
    /* 3BBAC 8004D39C 80180700 */   sll       $v1, $a3, 2
    /* 3BBB0 8004D3A0 3400828E */  lw         $v0, 0x34($s4)
    /* 3BBB4 8004D3A4 00000000 */  nop
    /* 3BBB8 8004D3A8 04005184 */  lh         $s1, 0x4($v0)
    /* 3BBBC 8004D3AC 00000000 */  nop
    /* 3BBC0 8004D3B0 18003102 */  mult       $s1, $s1
    /* 3BBC4 8004D3B4 12280000 */  mflo       $a1
    /* 3BBC8 8004D3B8 10005084 */  lh         $s0, 0x10($v0)
    /* 3BBCC 8004D3BC 00000000 */  nop
    /* 3BBD0 8004D3C0 18001002 */  mult       $s0, $s0
    /* 3BBD4 8004D3C4 2118C300 */  addu       $v1, $a2, $v1
    /* 3BBD8 8004D3C8 3C04738C */  lw         $s3, 0x43C($v1)
    /* 3BBDC 8004D3CC 12200000 */  mflo       $a0
    /* 3BBE0 8004D3D0 B25E020C */  jal        func_80097AC8
    /* 3BBE4 8004D3D4 2120A400 */   addu      $a0, $a1, $a0
    /* 3BBE8 8004D3D8 21204000 */  addu       $a0, $v0, $zero
    /* 3BBEC 8004D3DC 03008010 */  beqz       $a0, .L8004D3EC
    /* 3BBF0 8004D3E0 0001023C */   lui       $v0, (0x1000000 >> 16)
    /* 3BBF4 8004D3E4 1A004400 */  div        $zero, $v0, $a0
    /* 3BBF8 8004D3E8 12200000 */  mflo       $a0
  .L8004D3EC:
    /* 3BBFC 8004D3EC 00000000 */  nop
    /* 3BC00 8004D3F0 00000000 */  nop
    /* 3BC04 8004D3F4 18002402 */  mult       $s1, $a0
    /* 3BC08 8004D3F8 12180000 */  mflo       $v1
    /* 3BC0C 8004D3FC 7000A527 */  addiu      $a1, $sp, 0x70
    /* 3BC10 8004D400 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3BC14 8004D404 18000402 */  mult       $s0, $a0
    /* 3BC18 8004D408 060060A6 */  sh         $zero, 0x6($s3)
    /* 3BC1C 8004D40C 020060A6 */  sh         $zero, 0x2($s3)
    /* 3BC20 8004D410 080062A6 */  sh         $v0, 0x8($s3)
    /* 3BC24 8004D414 0E0060A6 */  sh         $zero, 0xE($s3)
    /* 3BC28 8004D418 0A0060A6 */  sh         $zero, 0xA($s3)
    /* 3BC2C 8004D41C 5000A427 */  addiu      $a0, $sp, 0x50
    /* 3BC30 8004D420 038B0300 */  sra        $s1, $v1, 12
    /* 3BC34 8004D424 23101100 */  negu       $v0, $s1
    /* 3BC38 8004D428 0C0062A6 */  sh         $v0, 0xC($s3)
    /* 3BC3C 8004D42C 00080224 */  addiu      $v0, $zero, 0x800
    /* 3BC40 8004D430 040071A6 */  sh         $s1, 0x4($s3)
    /* 3BC44 8004D434 12300000 */  mflo       $a2
    /* 3BC48 8004D438 03830600 */  sra        $s0, $a2, 12
    /* 3BC4C 8004D43C 000070A6 */  sh         $s0, 0x0($s3)
    /* 3BC50 8004D440 100070A6 */  sh         $s0, 0x10($s3)
    /* 3BC54 8004D444 7000A0A7 */  sh         $zero, 0x70($sp)
    /* 3BC58 8004D448 7200A2A7 */  sh         $v0, 0x72($sp)
    /* 3BC5C 8004D44C 963F010C */  jal        func_8004FE58
    /* 3BC60 8004D450 7400A0A7 */   sh        $zero, 0x74($sp)
    /* 3BC64 8004D454 21206002 */  addu       $a0, $s3, $zero
    /* 3BC68 8004D458 5000A527 */  addiu      $a1, $sp, 0x50
    /* 3BC6C 8004D45C 3000A627 */  addiu      $a2, $sp, 0x30
    /* 3BC70 8004D460 6C00A0AF */  sw         $zero, 0x6C($sp)
    /* 3BC74 8004D464 6800A0AF */  sw         $zero, 0x68($sp)
    /* 3BC78 8004D468 9D61020C */  jal        func_80098674
    /* 3BC7C 8004D46C 6400A0AF */   sw        $zero, 0x64($sp)
    /* 3BC80 8004D470 6400A427 */  addiu      $a0, $sp, 0x64
    /* 3BC84 8004D474 1F62020C */  jal        func_8009887C
    /* 3BC88 8004D478 4400A527 */   addiu     $a1, $sp, 0x44
    /* 3BC8C 8004D47C 4400A427 */  addiu      $a0, $sp, 0x44
    /* 3BC90 8004D480 14007226 */  addiu      $s2, $s3, 0x14
    /* 3BC94 8004D484 F465020C */  jal        func_800997D0
    /* 3BC98 8004D488 21284002 */   addu      $a1, $s2, $zero
    /* 3BC9C 8004D48C 21206002 */  addu       $a0, $s3, $zero
    /* 3BCA0 8004D490 4000A927 */  addiu      $t1, $sp, 0x40
    /* 3BCA4 8004D494 21282001 */  addu       $a1, $t1, $zero
    /* 3BCA8 8004D498 3000B127 */  addiu      $s1, $sp, 0x30
    /* 3BCAC 8004D49C 64008226 */  addiu      $v0, $s4, 0x64
    /* 3BCB0 8004D4A0 21302002 */  addu       $a2, $s1, $zero
    /* 3BCB4 8004D4A4 F8007026 */  addiu      $s0, $s3, 0xF8
    /* 3BCB8 8004D4A8 3000AA8F */  lw         $t2, 0x30($sp)
    /* 3BCBC 8004D4AC 3400AB8F */  lw         $t3, 0x34($sp)
    /* 3BCC0 8004D4B0 3800AC8F */  lw         $t4, 0x38($sp)
    /* 3BCC4 8004D4B4 3C00AD8F */  lw         $t5, 0x3C($sp)
    /* 3BCC8 8004D4B8 00006AAE */  sw         $t2, 0x0($s3)
    /* 3BCCC 8004D4BC 04006BAE */  sw         $t3, 0x4($s3)
    /* 3BCD0 8004D4C0 08006CAE */  sw         $t4, 0x8($s3)
    /* 3BCD4 8004D4C4 0C006DAE */  sw         $t5, 0xC($s3)
    /* 3BCD8 8004D4C8 4000AA8F */  lw         $t2, 0x40($sp)
    /* 3BCDC 8004D4CC 4400AB8F */  lw         $t3, 0x44($sp)
    /* 3BCE0 8004D4D0 4800AC8F */  lw         $t4, 0x48($sp)
    /* 3BCE4 8004D4D4 4C00AD8F */  lw         $t5, 0x4C($sp)
    /* 3BCE8 8004D4D8 10006AAE */  sw         $t2, 0x10($s3)
    /* 3BCEC 8004D4DC 14006BAE */  sw         $t3, 0x14($s3)
    /* 3BCF0 8004D4E0 18006CAE */  sw         $t4, 0x18($s3)
    /* 3BCF4 8004D4E4 1C006DAE */  sw         $t5, 0x1C($s3)
    /* 3BCF8 8004D4E8 6400838E */  lw         $v1, 0x64($s4)
    /* 3BCFC 8004D4EC 0400478C */  lw         $a3, 0x4($v0)
    /* 3BD00 8004D4F0 0800488C */  lw         $t0, 0x8($v0)
    /* 3BD04 8004D4F4 00200224 */  addiu      $v0, $zero, 0x2000
    /* 3BD08 8004D4F8 F80063AE */  sw         $v1, 0xF8($s3)
    /* 3BD0C 8004D4FC 040007AE */  sw         $a3, 0x4($s0)
    /* 3BD10 8004D500 080008AE */  sw         $t0, 0x8($s0)
    /* 3BD14 8004D504 1C0060AE */  sw         $zero, 0x1C($s3)
    /* 3BD18 8004D508 180060AE */  sw         $zero, 0x18($s3)
    /* 3BD1C 8004D50C 140060AE */  sw         $zero, 0x14($s3)
    /* 3BD20 8004D510 4000A0AF */  sw         $zero, 0x40($sp)
    /* 3BD24 8004D514 040022AD */  sw         $v0, 0x4($t1)
    /* 3BD28 8004D518 DA61020C */  jal        func_80098768
    /* 3BD2C 8004D51C 4800A0AF */   sw        $zero, 0x48($sp)
    /* 3BD30 8004D520 21202002 */  addu       $a0, $s1, $zero
    /* 3BD34 8004D524 F465020C */  jal        func_800997D0
    /* 3BD38 8004D528 21284002 */   addu      $a1, $s2, $zero
    /* 3BD3C 8004D52C 21200002 */  addu       $a0, $s0, $zero
    /* 3BD40 8004D530 F465020C */  jal        func_800997D0
    /* 3BD44 8004D534 21282002 */   addu      $a1, $s1, $zero
    /* 3BD48 8004D538 3D60020C */  jal        func_800980F4
    /* 3BD4C 8004D53C 21206002 */   addu      $a0, $s3, $zero
  .L8004D540:
    /* 3BD50 8004D540 8C00BF8F */  lw         $ra, 0x8C($sp)
    /* 3BD54 8004D544 8800B48F */  lw         $s4, 0x88($sp)
    /* 3BD58 8004D548 8400B38F */  lw         $s3, 0x84($sp)
    /* 3BD5C 8004D54C 8000B28F */  lw         $s2, 0x80($sp)
    /* 3BD60 8004D550 7C00B18F */  lw         $s1, 0x7C($sp)
    /* 3BD64 8004D554 7800B08F */  lw         $s0, 0x78($sp)
    /* 3BD68 8004D558 0800E003 */  jr         $ra
    /* 3BD6C 8004D55C 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_8004D300
