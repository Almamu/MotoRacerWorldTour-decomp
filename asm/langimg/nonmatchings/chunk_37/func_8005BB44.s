nonmatching func_8005BB44, 0x150

glabel func_8005BB44
    /* 4A354 8005BB44 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4A358 8005BB48 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4A35C 8005BB4C 21988000 */  addu       $s3, $a0, $zero
    /* 4A360 8005BB50 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4A364 8005BB54 2800BFAF */  sw         $ra, 0x28($sp)
    /* 4A368 8005BB58 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4A36C 8005BB5C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4A370 8005BB60 0000A28C */  lw         $v0, 0x0($a1)
    /* 4A374 8005BB64 3000B18C */  lw         $s1, 0x30($a1)
    /* 4A378 8005BB68 01004230 */  andi       $v0, $v0, 0x1
    /* 4A37C 8005BB6C 23004010 */  beqz       $v0, .L8005BBFC
    /* 4A380 8005BB70 2190E000 */   addu      $s2, $a3, $zero
    /* 4A384 8005BB74 1000A527 */  addiu      $a1, $sp, 0x10
    /* 4A388 8005BB78 07000624 */  addiu      $a2, $zero, 0x7
    /* 4A38C 8005BB7C 0C80023C */  lui        $v0, %hi(D_800C6AB0)
    /* 4A390 8005BB80 7400648E */  lw         $a0, 0x74($s3)
    /* 4A394 8005BB84 30004326 */  addiu      $v1, $s2, 0x30
    /* 4A398 8005BB88 1000A0A3 */  sb         $zero, 0x10($sp)
    /* 4A39C 8005BB8C B06A4D24 */  addiu      $t5, $v0, %lo(D_800C6AB0)
    /* 4A3A0 8005BB90 0000AA8D */  lw         $t2, 0x0($t5)
    /* 4A3A4 8005BB94 0400AB8D */  lw         $t3, 0x4($t5)
    /* 4A3A8 8005BB98 1000AAAF */  sw         $t2, 0x10($sp)
    /* 4A3AC 8005BB9C 1400ABAF */  sw         $t3, 0x14($sp)
    /* 4A3B0 8005BBA0 1600A3A3 */  sb         $v1, 0x16($sp)
    /* 4A3B4 8005BBA4 845F000C */  jal        func_80017E10
    /* 4A3B8 8005BBA8 1700A0A3 */   sb        $zero, 0x17($sp)
    /* 4A3BC 8005BBAC 14004010 */  beqz       $v0, .L8005BC00
    /* 4A3C0 8005BBB0 21202002 */   addu      $a0, $s1, $zero
    /* 4A3C4 8005BBB4 3400428C */  lw         $v0, 0x34($v0)
    /* 4A3C8 8005BBB8 3400238E */  lw         $v1, 0x34($s1)
    /* 4A3CC 8005BBBC 0000448C */  lw         $a0, 0x0($v0)
    /* 4A3D0 8005BBC0 0400458C */  lw         $a1, 0x4($v0)
    /* 4A3D4 8005BBC4 0800468C */  lw         $a2, 0x8($v0)
    /* 4A3D8 8005BBC8 000064AC */  sw         $a0, 0x0($v1)
    /* 4A3DC 8005BBCC 040065AC */  sw         $a1, 0x4($v1)
    /* 4A3E0 8005BBD0 080066AC */  sw         $a2, 0x8($v1)
    /* 4A3E4 8005BBD4 0C00448C */  lw         $a0, 0xC($v0)
    /* 4A3E8 8005BBD8 1000458C */  lw         $a1, 0x10($v0)
    /* 4A3EC 8005BBDC 0C0064AC */  sw         $a0, 0xC($v1)
    /* 4A3F0 8005BBE0 100065AC */  sw         $a1, 0x10($v1)
    /* 4A3F4 8005BBE4 1400468C */  lw         $a2, 0x14($v0)
    /* 4A3F8 8005BBE8 1800448C */  lw         $a0, 0x18($v0)
    /* 4A3FC 8005BBEC 1C00458C */  lw         $a1, 0x1C($v0)
    /* 4A400 8005BBF0 140066AC */  sw         $a2, 0x14($v1)
    /* 4A404 8005BBF4 180064AC */  sw         $a0, 0x18($v1)
    /* 4A408 8005BBF8 1C0065AC */  sw         $a1, 0x1C($v1)
  .L8005BBFC:
    /* 4A40C 8005BBFC 21202002 */  addu       $a0, $s1, $zero
  .L8005BC00:
    /* 4A410 8005BC00 70002526 */  addiu      $a1, $s1, 0x70
    /* 4A414 8005BC04 3400228E */  lw         $v0, 0x34($s1)
    /* 4A418 8005BC08 64003026 */  addiu      $s0, $s1, 0x64
    /* 4A41C 8005BC0C 14004324 */  addiu      $v1, $v0, 0x14
    /* 4A420 8005BC10 1400478C */  lw         $a3, 0x14($v0)
    /* 4A424 8005BC14 0400688C */  lw         $t0, 0x4($v1)
    /* 4A428 8005BC18 0800698C */  lw         $t1, 0x8($v1)
    /* 4A42C 8005BC1C 640027AE */  sw         $a3, 0x64($s1)
    /* 4A430 8005BC20 040008AE */  sw         $t0, 0x4($s0)
    /* 4A434 8005BC24 080009AE */  sw         $t1, 0x8($s0)
    /* 4A438 8005BC28 9803638E */  lw         $v1, 0x398($s3)
    /* 4A43C 8005BC2C C0101200 */  sll        $v0, $s2, 3
    /* 4A440 8005BC30 21104300 */  addu       $v0, $v0, $v1
    /* 4A444 8005BC34 03004A88 */  lwl        $t2, 0x3($v0)
    /* 4A448 8005BC38 00004A98 */  lwr        $t2, 0x0($v0)
    /* 4A44C 8005BC3C 07004B88 */  lwl        $t3, 0x7($v0)
    /* 4A450 8005BC40 04004B98 */  lwr        $t3, 0x4($v0)
    /* 4A454 8005BC44 73002AAA */  swl        $t2, 0x73($s1)
    /* 4A458 8005BC48 70002ABA */  swr        $t2, 0x70($s1)
    /* 4A45C 8005BC4C 77002BAA */  swl        $t3, 0x77($s1)
    /* 4A460 8005BC50 74002BBA */  swr        $t3, 0x74($s1)
    /* 4A464 8005BC54 8059000C */  jal        func_80016600
    /* 4A468 8005BC58 21300002 */   addu      $a2, $s0, $zero
    /* 4A46C 8005BC5C 6400238E */  lw         $v1, 0x64($s1)
    /* 4A470 8005BC60 0400048E */  lw         $a0, 0x4($s0)
    /* 4A474 8005BC64 0800058E */  lw         $a1, 0x8($s0)
    /* 4A478 8005BC68 2800BF8F */  lw         $ra, 0x28($sp)
    /* 4A47C 8005BC6C 2400B38F */  lw         $s3, 0x24($sp)
    /* 4A480 8005BC70 2000B28F */  lw         $s2, 0x20($sp)
    /* 4A484 8005BC74 1800B08F */  lw         $s0, 0x18($sp)
    /* 4A488 8005BC78 78002226 */  addiu      $v0, $s1, 0x78
    /* 4A48C 8005BC7C 780023AE */  sw         $v1, 0x78($s1)
    /* 4A490 8005BC80 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4A494 8005BC84 040044AC */  sw         $a0, 0x4($v0)
    /* 4A498 8005BC88 080045AC */  sw         $a1, 0x8($v0)
    /* 4A49C 8005BC8C 0800E003 */  jr         $ra
    /* 4A4A0 8005BC90 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_8005BB44
