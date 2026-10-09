nonmatching func_8008BA50, 0x260

glabel func_8008BA50
    /* 7A260 8008BA50 DA768297 */  lhu        $v0, %gp_rel(D_800CBDCA)($gp)
    /* 7A264 8008BA54 58FFBD27 */  addiu      $sp, $sp, -0xA8
    /* 7A268 8008BA58 A000BEAF */  sw         $fp, 0xA0($sp)
    /* 7A26C 8008BA5C 21F08000 */  addu       $fp, $a0, $zero
    /* 7A270 8008BA60 A400BFAF */  sw         $ra, 0xA4($sp)
    /* 7A274 8008BA64 9C00B7AF */  sw         $s7, 0x9C($sp)
    /* 7A278 8008BA68 9800B6AF */  sw         $s6, 0x98($sp)
    /* 7A27C 8008BA6C 9400B5AF */  sw         $s5, 0x94($sp)
    /* 7A280 8008BA70 9000B4AF */  sw         $s4, 0x90($sp)
    /* 7A284 8008BA74 8C00B3AF */  sw         $s3, 0x8C($sp)
    /* 7A288 8008BA78 8800B2AF */  sw         $s2, 0x88($sp)
    /* 7A28C 8008BA7C 8400B1AF */  sw         $s1, 0x84($sp)
    /* 7A290 8008BA80 8000B0AF */  sw         $s0, 0x80($sp)
    /* 7A294 8008BA84 E07680AF */  sw         $zero, %gp_rel(D_800CBDD0)($gp)
    /* 7A298 8008BA88 D87682A7 */  sh         $v0, %gp_rel(D_800CBDC8)($gp)
    /* 7A29C 8008BA8C 5800C38F */  lw         $v1, 0x58($fp)
    /* 7A2A0 8008BA90 00000000 */  nop
    /* 7A2A4 8008BA94 01006230 */  andi       $v0, $v1, 0x1
    /* 7A2A8 8008BA98 64004010 */  beqz       $v0, .L8008BC2C
    /* 7A2AC 8008BA9C 3000B427 */   addiu     $s4, $sp, 0x30
    /* 7A2B0 8008BAA0 6200D187 */  lh         $s1, 0x62($fp)
    /* 7A2B4 8008BAA4 00000000 */  nop
    /* 7A2B8 8008BAA8 18003102 */  mult       $s1, $s1
    /* 7A2BC 8008BAAC 12B80000 */  mflo       $s7
    /* 7A2C0 8008BAB0 00000000 */  nop
    /* 7A2C4 8008BAB4 00000000 */  nop
    /* 7A2C8 8008BAB8 1800F102 */  mult       $s7, $s1
    /* 7A2CC 8008BABC 21208002 */  addu       $a0, $s4, $zero
    /* 7A2D0 8008BAC0 0D80053C */  lui        $a1, %hi(D_800CBDF8)
    /* 7A2D4 8008BAC4 F8BDA524 */  addiu      $a1, $a1, %lo(D_800CBDF8)
    /* 7A2D8 8008BAC8 20006234 */  ori        $v0, $v1, 0x20
    /* 7A2DC 8008BACC 2000B527 */  addiu      $s5, $sp, 0x20
    /* 7A2E0 8008BAD0 21302002 */  addu       $a2, $s1, $zero
    /* 7A2E4 8008BAD4 12880000 */  mflo       $s1
    /* 7A2E8 8008BAD8 C665020C */  jal        func_80099718
    /* 7A2EC 8008BADC 5800C2AF */   sw        $v0, 0x58($fp)
    /* 7A2F0 8008BAE0 4000B327 */  addiu      $s3, $sp, 0x40
    /* 7A2F4 8008BAE4 21206002 */  addu       $a0, $s3, $zero
    /* 7A2F8 8008BAE8 0D80053C */  lui        $a1, %hi(D_800CBE48)
    /* 7A2FC 8008BAEC 48BEA524 */  addiu      $a1, $a1, %lo(D_800CBE48)
    /* 7A300 8008BAF0 6867020C */  jal        func_80099DA0
    /* 7A304 8008BAF4 01000624 */   addiu     $a2, $zero, 0x1
    /* 7A308 8008BAF8 2120A002 */  addu       $a0, $s5, $zero
    /* 7A30C 8008BAFC 21288002 */  addu       $a1, $s4, $zero
    /* 7A310 8008BB00 2666020C */  jal        func_80099898
    /* 7A314 8008BB04 21306002 */   addu      $a2, $s3, $zero
    /* 7A318 8008BB08 5000B027 */  addiu      $s0, $sp, 0x50
    /* 7A31C 8008BB0C 21200002 */  addu       $a0, $s0, $zero
    /* 7A320 8008BB10 0C00D627 */  addiu      $s6, $fp, 0xC
    /* 7A324 8008BB14 2128C002 */  addu       $a1, $s6, $zero
    /* 7A328 8008BB18 6867020C */  jal        func_80099DA0
    /* 7A32C 8008BB1C 01000624 */   addiu     $a2, $zero, 0x1
    /* 7A330 8008BB20 1000A427 */  addiu      $a0, $sp, 0x10
    /* 7A334 8008BB24 2128A002 */  addu       $a1, $s5, $zero
    /* 7A338 8008BB28 3466020C */  jal        func_800998D0
    /* 7A33C 8008BB2C 21300002 */   addu      $a2, $s0, $zero
    /* 7A340 8008BB30 1000B227 */  addiu      $s2, $sp, 0x10
    /* 7A344 8008BB34 0D80043C */  lui        $a0, %hi(D_800CBE08)
    /* 7A348 8008BB38 08BE8424 */  addiu      $a0, $a0, %lo(D_800CBE08)
    /* 7A34C 8008BB3C 1000A28F */  lw         $v0, 0x10($sp)
    /* 7A350 8008BB40 0400438E */  lw         $v1, 0x4($s2)
    /* 7A354 8008BB44 0800468E */  lw         $a2, 0x8($s2)
    /* 7A358 8008BB48 187782AF */  sw         $v0, %gp_rel(D_800CBE08)($gp)
    /* 7A35C 8008BB4C 1C7783AF */  sw         $v1, %gp_rel(D_800CBE0C)($gp)
    /* 7A360 8008BB50 207786AF */  sw         $a2, %gp_rel(D_800CBE10)($gp)
    /* 7A364 8008BB54 A465020C */  jal        func_80099690
    /* 7A368 8008BB58 032A1100 */   sra       $a1, $s1, 8
    /* 7A36C 8008BB5C 21208002 */  addu       $a0, $s4, $zero
    /* 7A370 8008BB60 2128C002 */  addu       $a1, $s6, $zero
    /* 7A374 8008BB64 C665020C */  jal        func_80099718
    /* 7A378 8008BB68 03000624 */   addiu     $a2, $zero, 0x3
    /* 7A37C 8008BB6C 6000B027 */  addiu      $s0, $sp, 0x60
    /* 7A380 8008BB70 6200C687 */  lh         $a2, 0x62($fp)
    /* 7A384 8008BB74 0D80053C */  lui        $a1, %hi(D_800CBDF8)
    /* 7A388 8008BB78 F8BDA524 */  addiu      $a1, $a1, %lo(D_800CBDF8)
    /* 7A38C 8008BB7C C665020C */  jal        func_80099718
    /* 7A390 8008BB80 21200002 */   addu      $a0, $s0, $zero
    /* 7A394 8008BB84 21206002 */  addu       $a0, $s3, $zero
    /* 7A398 8008BB88 21280002 */  addu       $a1, $s0, $zero
    /* 7A39C 8008BB8C 6867020C */  jal        func_80099DA0
    /* 7A3A0 8008BB90 01000624 */   addiu     $a2, $zero, 0x1
    /* 7A3A4 8008BB94 2120A002 */  addu       $a0, $s5, $zero
    /* 7A3A8 8008BB98 21288002 */  addu       $a1, $s4, $zero
    /* 7A3AC 8008BB9C 3466020C */  jal        func_800998D0
    /* 7A3B0 8008BBA0 21306002 */   addu      $a2, $s3, $zero
    /* 7A3B4 8008BBA4 7000B027 */  addiu      $s0, $sp, 0x70
    /* 7A3B8 8008BBA8 21200002 */  addu       $a0, $s0, $zero
    /* 7A3BC 8008BBAC 0D80053C */  lui        $a1, %hi(D_800CBE48)
    /* 7A3C0 8008BBB0 48BEA524 */  addiu      $a1, $a1, %lo(D_800CBE48)
    /* 7A3C4 8008BBB4 C665020C */  jal        func_80099718
    /* 7A3C8 8008BBB8 03000624 */   addiu     $a2, $zero, 0x3
    /* 7A3CC 8008BBBC 21204002 */  addu       $a0, $s2, $zero
    /* 7A3D0 8008BBC0 2128A002 */  addu       $a1, $s5, $zero
    /* 7A3D4 8008BBC4 3466020C */  jal        func_800998D0
    /* 7A3D8 8008BBC8 21300002 */   addu      $a2, $s0, $zero
    /* 7A3DC 8008BBCC 0D80043C */  lui        $a0, %hi(D_800CBE18)
    /* 7A3E0 8008BBD0 18BE8424 */  addiu      $a0, $a0, %lo(D_800CBE18)
    /* 7A3E4 8008BBD4 1000A28F */  lw         $v0, 0x10($sp)
    /* 7A3E8 8008BBD8 0400438E */  lw         $v1, 0x4($s2)
    /* 7A3EC 8008BBDC 0800468E */  lw         $a2, 0x8($s2)
    /* 7A3F0 8008BBE0 287782AF */  sw         $v0, %gp_rel(D_800CBE18)($gp)
    /* 7A3F4 8008BBE4 2C7783AF */  sw         $v1, %gp_rel(D_800CBE1C)($gp)
    /* 7A3F8 8008BBE8 307786AF */  sw         $a2, %gp_rel(D_800CBE20)($gp)
    /* 7A3FC 8008BBEC A465020C */  jal        func_80099690
    /* 7A400 8008BBF0 2128E002 */   addu      $a1, $s7, $zero
    /* 7A404 8008BBF4 0877838F */  lw         $v1, %gp_rel(D_800CBDF8)($gp)
    /* 7A408 8008BBF8 0C77828F */  lw         $v0, %gp_rel(D_800CBDFC)($gp)
    /* 7A40C 8008BBFC 1077848F */  lw         $a0, %gp_rel(D_800CBE00)($gp)
    /* 7A410 8008BC00 5877858F */  lw         $a1, %gp_rel(D_800CBE48)($gp)
    /* 7A414 8008BC04 5C77868F */  lw         $a2, %gp_rel(D_800CBE4C)($gp)
    /* 7A418 8008BC08 6077878F */  lw         $a3, %gp_rel(D_800CBE50)($gp)
    /* 7A41C 8008BC0C 387783AF */  sw         $v1, %gp_rel(D_800CBE28)($gp)
    /* 7A420 8008BC10 3C7782AF */  sw         $v0, %gp_rel(D_800CBE2C)($gp)
    /* 7A424 8008BC14 407784AF */  sw         $a0, %gp_rel(D_800CBE30)($gp)
    /* 7A428 8008BC18 487785AF */  sw         $a1, %gp_rel(D_800CBE38)($gp)
    /* 7A42C 8008BC1C 4C7786AF */  sw         $a2, %gp_rel(D_800CBE3C)($gp)
    /* 7A430 8008BC20 507787AF */  sw         $a3, %gp_rel(D_800CBE40)($gp)
    /* 7A434 8008BC24 202F0208 */  j          .L8008BC80
    /* 7A438 8008BC28 00000000 */   nop
  .L8008BC2C:
    /* 7A43C 8008BC2C 1000A227 */  addiu      $v0, $sp, 0x10
    /* 7A440 8008BC30 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7A444 8008BC34 6E00C497 */  lhu        $a0, 0x6E($fp)
    /* 7A448 8008BC38 DFFF0324 */  addiu      $v1, $zero, -0x21
    /* 7A44C 8008BC3C 040040AC */  sw         $zero, 0x4($v0)
    /* 7A450 8008BC40 080040AC */  sw         $zero, 0x8($v0)
    /* 7A454 8008BC44 DA7684A7 */  sh         $a0, %gp_rel(D_800CBDCA)($gp)
    /* 7A458 8008BC48 5800C28F */  lw         $v0, 0x58($fp)
    /* 7A45C 8008BC4C 1000A48F */  lw         $a0, 0x10($sp)
    /* 7A460 8008BC50 24104300 */  and        $v0, $v0, $v1
    /* 7A464 8008BC54 5800C2AF */  sw         $v0, 0x58($fp)
    /* 7A468 8008BC58 0C00C227 */  addiu      $v0, $fp, 0xC
    /* 7A46C 8008BC5C 087784AF */  sw         $a0, %gp_rel(D_800CBDF8)($gp)
    /* 7A470 8008BC60 0C7780AF */  sw         $zero, %gp_rel(D_800CBDFC)($gp)
    /* 7A474 8008BC64 107780AF */  sw         $zero, %gp_rel(D_800CBE00)($gp)
    /* 7A478 8008BC68 0C00C38F */  lw         $v1, 0xC($fp)
    /* 7A47C 8008BC6C 0400448C */  lw         $a0, 0x4($v0)
    /* 7A480 8008BC70 0800458C */  lw         $a1, 0x8($v0)
    /* 7A484 8008BC74 587783AF */  sw         $v1, %gp_rel(D_800CBE48)($gp)
    /* 7A488 8008BC78 5C7784AF */  sw         $a0, %gp_rel(D_800CBE4C)($gp)
    /* 7A48C 8008BC7C 607785AF */  sw         $a1, %gp_rel(D_800CBE50)($gp)
  .L8008BC80:
    /* 7A490 8008BC80 A400BF8F */  lw         $ra, 0xA4($sp)
    /* 7A494 8008BC84 A000BE8F */  lw         $fp, 0xA0($sp)
    /* 7A498 8008BC88 9C00B78F */  lw         $s7, 0x9C($sp)
    /* 7A49C 8008BC8C 9800B68F */  lw         $s6, 0x98($sp)
    /* 7A4A0 8008BC90 9400B58F */  lw         $s5, 0x94($sp)
    /* 7A4A4 8008BC94 9000B48F */  lw         $s4, 0x90($sp)
    /* 7A4A8 8008BC98 8C00B38F */  lw         $s3, 0x8C($sp)
    /* 7A4AC 8008BC9C 8800B28F */  lw         $s2, 0x88($sp)
    /* 7A4B0 8008BCA0 8400B18F */  lw         $s1, 0x84($sp)
    /* 7A4B4 8008BCA4 8000B08F */  lw         $s0, 0x80($sp)
    /* 7A4B8 8008BCA8 0800E003 */  jr         $ra
    /* 7A4BC 8008BCAC A800BD27 */   addiu     $sp, $sp, 0xA8
endlabel func_8008BA50
