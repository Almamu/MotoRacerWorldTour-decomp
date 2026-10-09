/* Handwritten function */
nonmatching func_8001D23C, 0x524

glabel func_8001D23C
    /* BA4C 8001D23C 0C80023C */  lui        $v0, %hi(D_800C5E14)
    /* BA50 8001D240 145E428C */  lw         $v0, %lo(D_800C5E14)($v0)
    /* BA54 8001D244 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* BA58 8001D248 3800B2AF */  sw         $s2, 0x38($sp)
    /* BA5C 8001D24C 2190A000 */  addu       $s2, $a1, $zero
    /* BA60 8001D250 3000B0AF */  sw         $s0, 0x30($sp)
    /* BA64 8001D254 21804002 */  addu       $s0, $s2, $zero
    /* BA68 8001D258 3400B1AF */  sw         $s1, 0x34($sp)
    /* BA6C 8001D25C 21888000 */  addu       $s1, $a0, $zero
    /* BA70 8001D260 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* BA74 8001D264 2198C000 */  addu       $s3, $a2, $zero
    /* BA78 8001D268 4000B4AF */  sw         $s4, 0x40($sp)
    /* BA7C 8001D26C 21A0E000 */  addu       $s4, $a3, $zero
    /* BA80 8001D270 8A004010 */  beqz       $v0, .L8001D49C
    /* BA84 8001D274 4400BFAF */   sw        $ra, 0x44($sp)
    /* BA88 8001D278 4C03428C */  lw         $v0, 0x34C($v0)
    /* BA8C 8001D27C 00000000 */  nop
    /* BA90 8001D280 86004014 */  bnez       $v0, .L8001D49C
    /* BA94 8001D284 00000000 */   nop
    /* BA98 8001D288 0D80053C */  lui        $a1, %hi(D_800CB088)
    /* BA9C 8001D28C 88B0A594 */  lhu        $a1, %lo(D_800CB088)($a1)
    /* BAA0 8001D290 0D80033C */  lui        $v1, %hi(D_800CB014)
    /* BAA4 8001D294 14B06394 */  lhu        $v1, %lo(D_800CB014)($v1)
    /* BAA8 8001D298 00000000 */  nop
    /* BAAC 8001D29C 2B10A300 */  sltu       $v0, $a1, $v1
    /* BAB0 8001D2A0 02004010 */  beqz       $v0, .L8001D2AC
    /* BAB4 8001D2A4 19010224 */   addiu     $v0, $zero, 0x119
    /* BAB8 8001D2A8 21286000 */  addu       $a1, $v1, $zero
  .L8001D2AC:
    /* BABC 8001D2AC 0300A214 */  bne        $a1, $v0, .L8001D2BC
    /* BAC0 8001D2B0 00000000 */   nop
    /* BAC4 8001D2B4 BD740008 */  j          .L8001D2F4
    /* BAC8 8001D2B8 80000524 */   addiu     $a1, $zero, 0x80
  .L8001D2BC:
    /* BACC 8001D2BC 0C00A010 */  beqz       $a1, .L8001D2F0
    /* BAD0 8001D2C0 0100023C */   lui       $v0, (0x10000 >> 16)
    /* BAD4 8001D2C4 1A004500 */  div        $zero, $v0, $a1
    /* BAD8 8001D2C8 12300000 */  mflo       $a2
    /* BADC 8001D2CC 00000000 */  nop
    /* BAE0 8001D2D0 4000C328 */  slti       $v1, $a2, 0x40
    /* BAE4 8001D2D4 07006014 */  bnez       $v1, .L8001D2F4
    /* BAE8 8001D2D8 40000524 */   addiu     $a1, $zero, 0x40
    /* BAEC 8001D2DC 0102C228 */  slti       $v0, $a2, 0x201
    /* BAF0 8001D2E0 04004010 */  beqz       $v0, .L8001D2F4
    /* BAF4 8001D2E4 00020524 */   addiu     $a1, $zero, 0x200
    /* BAF8 8001D2E8 BD740008 */  j          .L8001D2F4
    /* BAFC 8001D2EC 2128C000 */   addu      $a1, $a2, $zero
  .L8001D2F0:
    /* BB00 8001D2F0 00010524 */  addiu      $a1, $zero, 0x100
  .L8001D2F4:
    /* BB04 8001D2F4 21204002 */  addu       $a0, $s2, $zero
    /* BB08 8001D2F8 E89B020C */  jal        func_800A6FA0
    /* BB0C 8001D2FC 00010624 */   addiu     $a2, $zero, 0x100
    /* BB10 8001D300 21104202 */  addu       $v0, $s2, $v0
    /* BB14 8001D304 C21F0200 */  srl        $v1, $v0, 31
    /* BB18 8001D308 21104300 */  addu       $v0, $v0, $v1
    /* BB1C 8001D30C 43800200 */  sra        $s0, $v0, 1
    /* BB20 8001D310 0100043C */  lui        $a0, (0x14000 >> 16)
    /* BB24 8001D314 00408434 */  ori        $a0, $a0, (0x14000 & 0xFFFF)
    /* BB28 8001D318 6401258E */  lw         $a1, 0x164($s1)
    /* BB2C 8001D31C 5801228E */  lw         $v0, 0x158($s1)
    /* BB30 8001D320 40180500 */  sll        $v1, $a1, 1
    /* BB34 8001D324 21186500 */  addu       $v1, $v1, $a1
    /* BB38 8001D328 21104300 */  addu       $v0, $v0, $v1
    /* BB3C 8001D32C 00130200 */  sll        $v0, $v0, 12
    /* BB40 8001D330 21104400 */  addu       $v0, $v0, $a0
    /* BB44 8001D334 2A180202 */  slt        $v1, $s0, $v0
    /* BB48 8001D338 04006010 */  beqz       $v1, .L8001D34C
    /* BB4C 8001D33C 21184000 */   addu      $v1, $v0, $zero
    /* BB50 8001D340 6801258E */  lw         $a1, 0x168($s1)
    /* BB54 8001D344 DE740008 */  j          .L8001D378
    /* BB58 8001D348 00000000 */   nop
  .L8001D34C:
    /* BB5C 8001D34C 6801258E */  lw         $a1, 0x168($s1)
    /* BB60 8001D350 00000000 */  nop
    /* BB64 8001D354 C2170500 */  srl        $v0, $a1, 31
    /* BB68 8001D358 2110A200 */  addu       $v0, $a1, $v0
    /* BB6C 8001D35C 43100200 */  sra        $v0, $v0, 1
    /* BB70 8001D360 2110A200 */  addu       $v0, $a1, $v0
    /* BB74 8001D364 21184000 */  addu       $v1, $v0, $zero
    /* BB78 8001D368 2A105000 */  slt        $v0, $v0, $s0
    /* BB7C 8001D36C 02004014 */  bnez       $v0, .L8001D378
    /* BB80 8001D370 00000000 */   nop
    /* BB84 8001D374 21180002 */  addu       $v1, $s0, $zero
  .L8001D378:
    /* BB88 8001D378 0C80043C */  lui        $a0, %hi(D_800C5E14)
    /* BB8C 8001D37C 145E848C */  lw         $a0, %lo(D_800C5E14)($a0)
    /* BB90 8001D380 00000000 */  nop
    /* BB94 8001D384 0403828C */  lw         $v0, 0x304($a0)
    /* BB98 8001D388 00000000 */  nop
    /* BB9C 8001D38C 0F004010 */  beqz       $v0, .L8001D3CC
    /* BBA0 8001D390 21806000 */   addu      $s0, $v1, $zero
    /* BBA4 8001D394 C2170500 */  srl        $v0, $a1, 31
    /* BBA8 8001D398 2110A200 */  addu       $v0, $a1, $v0
    /* BBAC 8001D39C 43100200 */  sra        $v0, $v0, 1
    /* BBB0 8001D3A0 2A180202 */  slt        $v1, $s0, $v0
    /* BBB4 8001D3A4 07006014 */  bnez       $v1, .L8001D3C4
    /* BBB8 8001D3A8 21184000 */   addu      $v1, $v0, $zero
    /* BBBC 8001D3AC 2110A200 */  addu       $v0, $a1, $v0
    /* BBC0 8001D3B0 21184000 */  addu       $v1, $v0, $zero
    /* BBC4 8001D3B4 2A105000 */  slt        $v0, $v0, $s0
    /* BBC8 8001D3B8 02004014 */  bnez       $v0, .L8001D3C4
    /* BBCC 8001D3BC 00000000 */   nop
    /* BBD0 8001D3C0 21180002 */  addu       $v1, $s0, $zero
  .L8001D3C4:
    /* BBD4 8001D3C4 27750008 */  j          .L8001D49C
    /* BBD8 8001D3C8 21806000 */   addu      $s0, $v1, $zero
  .L8001D3CC:
    /* BBDC 8001D3CC 7803828C */  lw         $v0, 0x378($a0)
    /* BBE0 8001D3D0 00000000 */  nop
    /* BBE4 8001D3D4 0000448C */  lw         $a0, 0x0($v0)
    /* BBE8 8001D3D8 80000324 */  addiu      $v1, $zero, 0x80
    /* BBEC 8001D3DC 22008314 */  bne        $a0, $v1, .L8001D468
    /* BBF0 8001D3E0 C2170500 */   srl       $v0, $a1, 31
    /* BBF4 8001D3E4 0D80023C */  lui        $v0, %hi(D_800D49A4)
    /* BBF8 8001D3E8 A449428C */  lw         $v0, %lo(D_800D49A4)($v0)
    /* BBFC 8001D3EC 00000000 */  nop
    /* BC00 8001D3F0 16004014 */  bnez       $v0, .L8001D44C
    /* BC04 8001D3F4 C2170500 */   srl       $v0, $a1, 31
    /* BC08 8001D3F8 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* BC0C 8001D3FC 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* BC10 8001D400 1800A200 */  mult       $a1, $v0
    /* BC14 8001D404 C31F0500 */  sra        $v1, $a1, 31
    /* BC18 8001D408 10100000 */  mfhi       $v0
    /* BC1C 8001D40C 23104300 */  subu       $v0, $v0, $v1
    /* BC20 8001D410 2A200202 */  slt        $a0, $s0, $v0
    /* BC24 8001D414 0B008014 */  bnez       $a0, .L8001D444
    /* BC28 8001D418 00000000 */   nop
    /* BC2C 8001D41C 40100500 */  sll        $v0, $a1, 1
    /* BC30 8001D420 21184500 */  addu       $v1, $v0, $a1
    /* BC34 8001D424 02006104 */  bgez       $v1, .L8001D430
    /* BC38 8001D428 21106000 */   addu      $v0, $v1, $zero
    /* BC3C 8001D42C 03006224 */  addiu      $v0, $v1, 0x3
  .L8001D430:
    /* BC40 8001D430 83200200 */  sra        $a0, $v0, 2
    /* BC44 8001D434 2A109000 */  slt        $v0, $a0, $s0
    /* BC48 8001D438 02004014 */  bnez       $v0, .L8001D444
    /* BC4C 8001D43C 21108000 */   addu      $v0, $a0, $zero
    /* BC50 8001D440 21100002 */  addu       $v0, $s0, $zero
  .L8001D444:
    /* BC54 8001D444 27750008 */  j          .L8001D49C
    /* BC58 8001D448 21804000 */   addu      $s0, $v0, $zero
  .L8001D44C:
    /* BC5C 8001D44C 2110A200 */  addu       $v0, $a1, $v0
    /* BC60 8001D450 43100200 */  sra        $v0, $v0, 1
    /* BC64 8001D454 2A180202 */  slt        $v1, $s0, $v0
    /* BC68 8001D458 0F006014 */  bnez       $v1, .L8001D498
    /* BC6C 8001D45C 21204000 */   addu      $a0, $v0, $zero
    /* BC70 8001D460 20750008 */  j          .L8001D480
    /* BC74 8001D464 21200002 */   addu      $a0, $s0, $zero
  .L8001D468:
    /* BC78 8001D468 2110A200 */  addu       $v0, $a1, $v0
    /* BC7C 8001D46C 43100200 */  sra        $v0, $v0, 1
    /* BC80 8001D470 2A180202 */  slt        $v1, $s0, $v0
    /* BC84 8001D474 08006014 */  bnez       $v1, .L8001D498
    /* BC88 8001D478 21204000 */   addu      $a0, $v0, $zero
    /* BC8C 8001D47C 21200002 */  addu       $a0, $s0, $zero
  .L8001D480:
    /* BC90 8001D480 40100500 */  sll        $v0, $a1, 1
    /* BC94 8001D484 43100200 */  sra        $v0, $v0, 1
    /* BC98 8001D488 2A185000 */  slt        $v1, $v0, $s0
    /* BC9C 8001D48C 03006010 */  beqz       $v1, .L8001D49C
    /* BCA0 8001D490 21808000 */   addu      $s0, $a0, $zero
    /* BCA4 8001D494 21204000 */  addu       $a0, $v0, $zero
  .L8001D498:
    /* BCA8 8001D498 21808000 */  addu       $s0, $a0, $zero
  .L8001D49C:
    /* BCAC 8001D49C 5001228E */  lw         $v0, 0x150($s1)
    /* BCB0 8001D4A0 00000000 */  nop
    /* BCB4 8001D4A4 05005314 */  bne        $v0, $s3, .L8001D4BC
    /* BCB8 8001D4A8 00000000 */   nop
    /* BCBC 8001D4AC 5C01228E */  lw         $v0, 0x15C($s1)
    /* BCC0 8001D4B0 00000000 */  nop
    /* BCC4 8001D4B4 A2000212 */  beq        $s0, $v0, .L8001D740
    /* BCC8 8001D4B8 00000000 */   nop
  .L8001D4BC:
    /* BCCC 8001D4BC 5C01228E */  lw         $v0, 0x15C($s1)
    /* BCD0 8001D4C0 00000000 */  nop
    /* BCD4 8001D4C4 0D005010 */  beq        $v0, $s0, .L8001D4FC
    /* BCD8 8001D4C8 500133AE */   sw        $s3, 0x150($s1)
    /* BCDC 8001D4CC 5C0130AE */  sw         $s0, 0x15C($s1)
    /* BCE0 8001D4D0 0C80043C */  lui        $a0, %hi(D_800C4938)
    /* BCE4 8001D4D4 3849848C */  lw         $a0, %lo(D_800C4938)($a0)
    /* BCE8 8001D4D8 00000000 */  nop
    /* BCEC 8001D4DC 07008010 */  beqz       $a0, .L8001D4FC
    /* BCF0 8001D4E0 03331000 */   sra       $a2, $s0, 12
    /* BCF4 8001D4E4 0D80053C */  lui        $a1, %hi(D_800C8C68)
    /* BCF8 8001D4E8 688CA58C */  lw         $a1, %lo(D_800C8C68)($a1)
    /* BCFC 8001D4EC 5800A28F */  lw         $v0, 0x58($sp)
    /* BD00 8001D4F0 21388002 */  addu       $a3, $s4, $zero
    /* BD04 8001D4F4 5D5D000C */  jal        func_80017574
    /* BD08 8001D4F8 1000A2AF */   sw        $v0, 0x10($sp)
  .L8001D4FC:
    /* BD0C 8001D4FC 5C01268E */  lw         $a2, 0x15C($s1)
    /* BD10 8001D500 7801228E */  lw         $v0, 0x178($s1)
    /* BD14 8001D504 00000000 */  nop
    /* BD18 8001D508 1800C200 */  mult       $a2, $v0
    /* BD1C 8001D50C 12100000 */  mflo       $v0
    /* BD20 8001D510 68012A8E */  lw         $t2, 0x168($s1)
    /* BD24 8001D514 00000000 */  nop
    /* BD28 8001D518 1A004A00 */  div        $zero, $v0, $t2
    /* BD2C 8001D51C 12100000 */  mflo       $v0
    /* BD30 8001D520 0C80093C */  lui        $t1, %hi(D_800BF3A0)
    /* BD34 8001D524 A0F32925 */  addiu      $t1, $t1, %lo(D_800BF3A0)
    /* BD38 8001D528 5001278E */  lw         $a3, 0x150($s1)
    /* BD3C 8001D52C 6401238E */  lw         $v1, 0x164($s1)
    /* BD40 8001D530 FF0FE730 */  andi       $a3, $a3, 0xFFF
    /* BD44 8001D534 80380700 */  sll        $a3, $a3, 2
    /* BD48 8001D538 2158E900 */  addu       $t3, $a3, $t1
    /* BD4C 8001D53C 23104300 */  subu       $v0, $v0, $v1
    /* BD50 8001D540 540122AE */  sw         $v0, 0x154($s1)
    /* BD54 8001D544 00006285 */  lh         $v0, 0x0($t3)
    /* BD58 8001D548 401B0300 */  sll        $v1, $v1, 13
    /* BD5C 8001D54C 1A006200 */  div        $zero, $v1, $v0
    /* BD60 8001D550 12180000 */  mflo       $v1
    /* BD64 8001D554 0C80083C */  lui        $t0, %hi(D_800BA884)
    /* BD68 8001D558 84A80825 */  addiu      $t0, $t0, %lo(D_800BA884)
    /* BD6C 8001D55C 0C000F24 */  addiu      $t7, $zero, 0xC
    /* BD70 8001D560 1800A427 */  addiu      $a0, $sp, 0x18
    /* BD74 8001D564 1800A0AF */  sw         $zero, 0x18($sp)
    /* BD78 8001D568 040080AC */  sw         $zero, 0x4($a0)
    /* BD7C 8001D56C FF0F6532 */  andi       $a1, $s3, 0xFFF
    /* BD80 8001D570 40280500 */  sll        $a1, $a1, 1
    /* BD84 8001D574 2128A800 */  addu       $a1, $a1, $t0
    /* BD88 8001D578 380123AE */  sw         $v1, 0x138($s1)
    /* BD8C 8001D57C 23180300 */  negu       $v1, $v1
    /* BD90 8001D580 001B0300 */  sll        $v1, $v1, 12
    /* BD94 8001D584 080083AC */  sw         $v1, 0x8($a0)
    /* BD98 8001D588 0000A284 */  lh         $v0, 0x0($a1)
    /* BD9C 8001D58C 5C012E8E */  lw         $t6, 0x15C($s1)
    /* BDA0 8001D590 00000000 */  nop
    /* BDA4 8001D594 1800C201 */  mult       $t6, $v0
    /* BDA8 8001D598 20000334 */  ori        $v1, $zero, 0x20
    /* BDAC 8001D59C 22186F00 */  sub        $v1, $v1, $t7 /* handwritten instruction */
    /* BDB0 8001D5A0 10680000 */  mfhi       $t5
    /* BDB4 8001D5A4 04686D00 */  sllv       $t5, $t5, $v1
    /* BDB8 8001D5A8 12180000 */  mflo       $v1
    /* BDBC 8001D5AC 0618E301 */  srlv       $v1, $v1, $t7
    /* BDC0 8001D5B0 2568A301 */  or         $t5, $t5, $v1
    /* BDC4 8001D5B4 C2270600 */  srl        $a0, $a2, 31
    /* BDC8 8001D5B8 2130C400 */  addu       $a2, $a2, $a0
    /* BDCC 8001D5BC 43300600 */  sra        $a2, $a2, 1
    /* BDD0 8001D5C0 0C000E24 */  addiu      $t6, $zero, 0xC
    /* BDD4 8001D5C4 44012DAE */  sw         $t5, 0x144($s1)
    /* BDD8 8001D5C8 0000A384 */  lh         $v1, 0x0($a1)
    /* BDDC 8001D5CC 00000000 */  nop
    /* BDE0 8001D5D0 1800C300 */  mult       $a2, $v1
    /* BDE4 8001D5D4 20000C34 */  ori        $t4, $zero, 0x20
    /* BDE8 8001D5D8 22608E01 */  sub        $t4, $t4, $t6 /* handwritten instruction */
    /* BDEC 8001D5DC 10680000 */  mfhi       $t5
    /* BDF0 8001D5E0 04688D01 */  sllv       $t5, $t5, $t4
    /* BDF4 8001D5E4 12600000 */  mflo       $t4
    /* BDF8 8001D5E8 0660CC01 */  srlv       $t4, $t4, $t6
    /* BDFC 8001D5EC 2568AC01 */  or         $t5, $t5, $t4
    /* BE00 8001D5F0 48012DAE */  sw         $t5, 0x148($s1)
    /* BE04 8001D5F4 0C000D24 */  addiu      $t5, $zero, 0xC
    /* BE08 8001D5F8 5801228E */  lw         $v0, 0x158($s1)
    /* BE0C 8001D5FC 0000A484 */  lh         $a0, 0x0($a1)
    /* BE10 8001D600 00130200 */  sll        $v0, $v0, 12
    /* BE14 8001D604 18004400 */  mult       $v0, $a0
    /* BE18 8001D608 20000634 */  ori        $a2, $zero, 0x20
    /* BE1C 8001D60C 2230CD00 */  sub        $a2, $a2, $t5 /* handwritten instruction */
    /* BE20 8001D610 10780000 */  mfhi       $t7
    /* BE24 8001D614 0478CF00 */  sllv       $t7, $t7, $a2
    /* BE28 8001D618 12300000 */  mflo       $a2
    /* BE2C 8001D61C 0630A601 */  srlv       $a2, $a2, $t5
    /* BE30 8001D620 2578E601 */  or         $t7, $t7, $a2
    /* BE34 8001D624 7401238E */  lw         $v1, 0x174($s1)
    /* BE38 8001D628 4C012FAE */  sw         $t7, 0x14C($s1)
    /* BE3C 8001D62C 0000A284 */  lh         $v0, 0x0($a1)
    /* BE40 8001D630 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* BE44 8001D634 40180300 */  sll        $v1, $v1, 1
    /* BE48 8001D638 21186800 */  addu       $v1, $v1, $t0
    /* BE4C 8001D63C 00006484 */  lh         $a0, 0x0($v1)
    /* BE50 8001D640 00120200 */  sll        $v0, $v0, 8
    /* BE54 8001D644 1A004400 */  div        $zero, $v0, $a0
    /* BE58 8001D648 12100000 */  mflo       $v0
    /* BE5C 8001D64C 00000000 */  nop
    /* BE60 8001D650 00000000 */  nop
    /* BE64 8001D654 18004A00 */  mult       $v0, $t2
    /* BE68 8001D658 12100000 */  mflo       $v0
    /* BE6C 8001D65C 00000000 */  nop
    /* BE70 8001D660 00000000 */  nop
    /* BE74 8001D664 1A005000 */  div        $zero, $v0, $s0
    /* BE78 8001D668 12100000 */  mflo       $v0
    /* BE7C 8001D66C 02002625 */  addiu      $a2, $t1, 0x2
    /* BE80 8001D670 2138E600 */  addu       $a3, $a3, $a2
    /* BE84 8001D674 34002526 */  addiu      $a1, $s1, 0x34
    /* BE88 8001D678 40002426 */  addiu      $a0, $s1, 0x40
    /* BE8C 8001D67C 700122AE */  sw         $v0, 0x170($s1)
    /* BE90 8001D680 0000E284 */  lh         $v0, 0x0($a3)
    /* BE94 8001D684 00006385 */  lh         $v1, 0x0($t3)
    /* BE98 8001D688 23100200 */  negu       $v0, $v0
    /* BE9C 8001D68C 80130200 */  sll        $v0, $v0, 14
    /* BEA0 8001D690 23180300 */  negu       $v1, $v1
    /* BEA4 8001D694 801B0300 */  sll        $v1, $v1, 14
    /* BEA8 8001D698 340022AE */  sw         $v0, 0x34($s1)
    /* BEAC 8001D69C 0800A3AC */  sw         $v1, 0x8($a1)
    /* BEB0 8001D6A0 00FC033C */  lui        $v1, (0xFC000000 >> 16)
    /* BEB4 8001D6A4 0400A0AC */  sw         $zero, 0x4($a1)
    /* BEB8 8001D6A8 400020AE */  sw         $zero, 0x40($s1)
    /* BEBC 8001D6AC 040080AC */  sw         $zero, 0x4($a0)
    /* BEC0 8001D6B0 080083AC */  sw         $v1, 0x8($a0)
    /* BEC4 8001D6B4 5001228E */  lw         $v0, 0x150($s1)
    /* BEC8 8001D6B8 00000000 */  nop
    /* BECC 8001D6BC FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* BED0 8001D6C0 80100200 */  sll        $v0, $v0, 2
    /* BED4 8001D6C4 21304600 */  addu       $a2, $v0, $a2
    /* BED8 8001D6C8 21104900 */  addu       $v0, $v0, $t1
    /* BEDC 8001D6CC 0000C384 */  lh         $v1, 0x0($a2)
    /* BEE0 8001D6D0 00004484 */  lh         $a0, 0x0($v0)
    /* BEE4 8001D6D4 4C002226 */  addiu      $v0, $s1, 0x4C
    /* BEE8 8001D6D8 801B0300 */  sll        $v1, $v1, 14
    /* BEEC 8001D6DC 23200400 */  negu       $a0, $a0
    /* BEF0 8001D6E0 80230400 */  sll        $a0, $a0, 14
    /* BEF4 8001D6E4 4C0023AE */  sw         $v1, 0x4C($s1)
    /* BEF8 8001D6E8 040040AC */  sw         $zero, 0x4($v0)
    /* BEFC 8001D6EC 080044AC */  sw         $a0, 0x8($v0)
    /* BF00 8001D6F0 8001238E */  lw         $v1, 0x180($s1)
    /* BF04 8001D6F4 00000000 */  nop
    /* BF08 8001D6F8 11006010 */  beqz       $v1, .L8001D740
    /* BF0C 8001D6FC 00000000 */   nop
    /* BF10 8001D700 0C80023C */  lui        $v0, %hi(D_800C5E14)
    /* BF14 8001D704 145E428C */  lw         $v0, %lo(D_800C5E14)($v0)
    /* BF18 8001D708 00000000 */  nop
    /* BF1C 8001D70C 07004010 */  beqz       $v0, .L8001D72C
    /* BF20 8001D710 00100224 */   addiu     $v0, $zero, 0x1000
    /* BF24 8001D714 0D80023C */  lui        $v0, %hi(D_800C9D74)
    /* BF28 8001D718 749D4280 */  lb         $v0, %lo(D_800C9D74)($v0)
    /* BF2C 8001D71C 00000000 */  nop
    /* BF30 8001D720 02004014 */  bnez       $v0, .L8001D72C
    /* BF34 8001D724 55150224 */   addiu     $v0, $zero, 0x1555
    /* BF38 8001D728 00100224 */  addiu      $v0, $zero, 0x1000
  .L8001D72C:
    /* BF3C 8001D72C 440062AC */  sw         $v0, 0x44($v1)
    /* BF40 8001D730 21202002 */  addu       $a0, $s1, $zero
    /* BF44 8001D734 8001858C */  lw         $a1, 0x180($a0)
    /* BF48 8001D738 7174000C */  jal        func_8001D1C4
    /* BF4C 8001D73C 00000000 */   nop
  .L8001D740:
    /* BF50 8001D740 4400BF8F */  lw         $ra, 0x44($sp)
    /* BF54 8001D744 4000B48F */  lw         $s4, 0x40($sp)
    /* BF58 8001D748 3C00B38F */  lw         $s3, 0x3C($sp)
    /* BF5C 8001D74C 3800B28F */  lw         $s2, 0x38($sp)
    /* BF60 8001D750 3400B18F */  lw         $s1, 0x34($sp)
    /* BF64 8001D754 3000B08F */  lw         $s0, 0x30($sp)
    /* BF68 8001D758 0800E003 */  jr         $ra
    /* BF6C 8001D75C 4800BD27 */   addiu     $sp, $sp, 0x48
endlabel func_8001D23C
