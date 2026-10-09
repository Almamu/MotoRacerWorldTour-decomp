/* Handwritten function */
nonmatching func_8006BBC4, 0x1B4

glabel func_8006BBC4
    /* 5A3D4 8006BBC4 21488000 */  addu       $t1, $a0, $zero
    /* 5A3D8 8006BBC8 0000278D */  lw         $a3, 0x0($t1)
    /* 5A3DC 8006BBCC 0400248D */  lw         $a0, 0x4($t1)
    /* 5A3E0 8006BBD0 00000000 */  nop
    /* 5A3E4 8006BBD4 64008710 */  beq        $a0, $a3, .L8006BD68
    /* 5A3E8 8006BBD8 2130A000 */   addu      $a2, $a1, $zero
    /* 5A3EC 8006BBDC 6400C018 */  blez       $a2, .L8006BD70
    /* 5A3F0 8006BBE0 2110E000 */   addu      $v0, $a3, $zero
    /* 5A3F4 8006BBE4 1000228D */  lw         $v0, 0x10($t1)
    /* 5A3F8 8006BBE8 00000000 */  nop
    /* 5A3FC 8006BBEC 1A008210 */  beq        $a0, $v0, .L8006BC58
    /* 5A400 8006BBF0 23108700 */   subu      $v0, $a0, $a3
    /* 5A404 8006BBF4 0C00238D */  lw         $v1, 0xC($t1)
    /* 5A408 8006BBF8 00000000 */  nop
    /* 5A40C 8006BBFC 18004300 */  mult       $v0, $v1
    /* 5A410 8006BC00 140027AD */  sw         $a3, 0x14($t1)
    /* 5A414 8006BC04 180024AD */  sw         $a0, 0x18($t1)
    /* 5A418 8006BC08 12100000 */  mflo       $v0
    /* 5A41C 8006BC0C 02004104 */  bgez       $v0, .L8006BC18
    /* 5A420 8006BC10 100024AD */   sw        $a0, 0x10($t1)
    /* 5A424 8006BC14 FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .L8006BC18:
    /* 5A428 8006BC18 031B0200 */  sra        $v1, $v0, 12
    /* 5A42C 8006BC1C 04006018 */  blez       $v1, .L8006BC30
    /* 5A430 8006BC20 2310E300 */   subu      $v0, $a3, $v1
    /* 5A434 8006BC24 2A10E200 */  slt        $v0, $a3, $v0
    /* 5A438 8006BC28 06004010 */  beqz       $v0, .L8006BC44
    /* 5A43C 8006BC2C 00000000 */   nop
  .L8006BC30:
    /* 5A440 8006BC30 08006104 */  bgez       $v1, .L8006BC54
    /* 5A444 8006BC34 2310E300 */   subu      $v0, $a3, $v1
    /* 5A448 8006BC38 2A104700 */  slt        $v0, $v0, $a3
    /* 5A44C 8006BC3C 05004014 */  bnez       $v0, .L8006BC54
    /* 5A450 8006BC40 00000000 */   nop
  .L8006BC44:
    /* 5A454 8006BC44 0000228D */  lw         $v0, 0x0($t1)
    /* 5A458 8006BC48 00000000 */  nop
    /* 5A45C 8006BC4C 23104300 */  subu       $v0, $v0, $v1
    /* 5A460 8006BC50 140022AD */  sw         $v0, 0x14($t1)
  .L8006BC54:
    /* 5A464 8006BC54 0000278D */  lw         $a3, 0x0($t1)
  .L8006BC58:
    /* 5A468 8006BC58 1800288D */  lw         $t0, 0x18($t1)
    /* 5A46C 8006BC5C 1400258D */  lw         $a1, 0x14($t1)
    /* 5A470 8006BC60 00000000 */  nop
    /* 5A474 8006BC64 3700A810 */  beq        $a1, $t0, .L8006BD44
    /* 5A478 8006BC68 21500001 */   addu      $t2, $t0, $zero
    /* 5A47C 8006BC6C 0800248D */  lw         $a0, 0x8($t1)
    /* 5A480 8006BC70 23100701 */  subu       $v0, $t0, $a3
    /* 5A484 8006BC74 18008200 */  mult       $a0, $v0
    /* 5A488 8006BC78 12200000 */  mflo       $a0
    /* 5A48C 8006BC7C 2318A700 */  subu       $v1, $a1, $a3
    /* 5A490 8006BC80 00000000 */  nop
    /* 5A494 8006BC84 1800C300 */  mult       $a2, $v1
    /* 5A498 8006BC88 0C000C24 */  addiu      $t4, $zero, 0xC
    /* 5A49C 8006BC8C 12180000 */  mflo       $v1
    /* 5A4A0 8006BC90 00000000 */  nop
    /* 5A4A4 8006BC94 00000000 */  nop
    /* 5A4A8 8006BC98 18008300 */  mult       $a0, $v1
    /* 5A4AC 8006BC9C 20000634 */  ori        $a2, $zero, 0x20
    /* 5A4B0 8006BCA0 2230CC00 */  sub        $a2, $a2, $t4 /* handwritten instruction */
    /* 5A4B4 8006BCA4 10580000 */  mfhi       $t3
    /* 5A4B8 8006BCA8 0458CB00 */  sllv       $t3, $t3, $a2
    /* 5A4BC 8006BCAC 12300000 */  mflo       $a2
    /* 5A4C0 8006BCB0 06308601 */  srlv       $a2, $a2, $t4
    /* 5A4C4 8006BCB4 25586601 */  or         $t3, $t3, $a2
    /* 5A4C8 8006BCB8 21206001 */  addu       $a0, $t3, $zero
    /* 5A4CC 8006BCBC 2328A800 */  subu       $a1, $a1, $t0
    /* 5A4D0 8006BCC0 80100500 */  sll        $v0, $a1, 2
    /* 5A4D4 8006BCC4 21104500 */  addu       $v0, $v0, $a1
    /* 5A4D8 8006BCC8 80100200 */  sll        $v0, $v0, 2
    /* 5A4DC 8006BCCC 23104500 */  subu       $v0, $v0, $a1
    /* 5A4E0 8006BCD0 40100200 */  sll        $v0, $v0, 1
    /* 5A4E4 8006BCD4 1A008200 */  div        $zero, $a0, $v0
    /* 5A4E8 8006BCD8 12200000 */  mflo       $a0
    /* 5A4EC 8006BCDC 00000000 */  nop
    /* 5A4F0 8006BCE0 09008014 */  bnez       $a0, .L8006BD08
    /* 5A4F4 8006BCE4 2A10E800 */   slt       $v0, $a3, $t0
    /* 5A4F8 8006BCE8 03004010 */  beqz       $v0, .L8006BCF8
    /* 5A4FC 8006BCEC 2A100701 */   slt       $v0, $t0, $a3
    /* 5A500 8006BCF0 41AF0108 */  j          .L8006BD04
    /* 5A504 8006BCF4 01000424 */   addiu     $a0, $zero, 0x1
  .L8006BCF8:
    /* 5A508 8006BCF8 03004010 */  beqz       $v0, .L8006BD08
    /* 5A50C 8006BCFC 2A10E800 */   slt       $v0, $a3, $t0
    /* 5A510 8006BD00 FFFF0424 */  addiu      $a0, $zero, -0x1
  .L8006BD04:
    /* 5A514 8006BD04 2A10E800 */  slt        $v0, $a3, $t0
  .L8006BD08:
    /* 5A518 8006BD08 04004010 */  beqz       $v0, .L8006BD1C
    /* 5A51C 8006BD0C 2110E400 */   addu      $v0, $a3, $a0
    /* 5A520 8006BD10 2A104201 */  slt        $v0, $t2, $v0
    /* 5A524 8006BD14 07004014 */  bnez       $v0, .L8006BD34
    /* 5A528 8006BD18 00000000 */   nop
  .L8006BD1C:
    /* 5A52C 8006BD1C 2A104701 */  slt        $v0, $t2, $a3
    /* 5A530 8006BD20 05004010 */  beqz       $v0, .L8006BD38
    /* 5A534 8006BD24 2110E400 */   addu      $v0, $a3, $a0
    /* 5A538 8006BD28 2A104A00 */  slt        $v0, $v0, $t2
    /* 5A53C 8006BD2C 03004010 */  beqz       $v0, .L8006BD3C
    /* 5A540 8006BD30 2110E400 */   addu      $v0, $a3, $a0
  .L8006BD34:
    /* 5A544 8006BD34 23200701 */  subu       $a0, $t0, $a3
  .L8006BD38:
    /* 5A548 8006BD38 2110E400 */  addu       $v0, $a3, $a0
  .L8006BD3C:
    /* 5A54C 8006BD3C 000022AD */  sw         $v0, 0x0($t1)
    /* 5A550 8006BD40 21384000 */  addu       $a3, $v0, $zero
  .L8006BD44:
    /* 5A554 8006BD44 00F0E228 */  slti       $v0, $a3, -0x1000
    /* 5A558 8006BD48 05004014 */  bnez       $v0, .L8006BD60
    /* 5A55C 8006BD4C 00F00324 */   addiu     $v1, $zero, -0x1000
    /* 5A560 8006BD50 0110E228 */  slti       $v0, $a3, 0x1001
    /* 5A564 8006BD54 02004010 */  beqz       $v0, .L8006BD60
    /* 5A568 8006BD58 00100324 */   addiu     $v1, $zero, 0x1000
    /* 5A56C 8006BD5C 2118E000 */  addu       $v1, $a3, $zero
  .L8006BD60:
    /* 5A570 8006BD60 000023AD */  sw         $v1, 0x0($t1)
    /* 5A574 8006BD64 21386000 */  addu       $a3, $v1, $zero
  .L8006BD68:
    /* 5A578 8006BD68 0800E003 */  jr         $ra
    /* 5A57C 8006BD6C 2110E000 */   addu      $v0, $a3, $zero
  .L8006BD70:
    /* 5A580 8006BD70 0800E003 */  jr         $ra
    /* 5A584 8006BD74 00000000 */   nop
endlabel func_8006BBC4
