/* Handwritten function */
nonmatching func_8007BB24, 0x1F8

glabel func_8007BB24
    /* 6A334 8007BB24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6A338 8007BB28 21388000 */  addu       $a3, $a0, $zero
    /* 6A33C 8007BB2C 21C0A000 */  addu       $t8, $a1, $zero
    /* 6A340 8007BB30 C0180600 */  sll        $v1, $a2, 3
    /* 6A344 8007BB34 0D80083C */  lui        $t0, %hi(D_800C8C70)
    /* 6A348 8007BB38 708C088D */  lw         $t0, %lo(D_800C8C70)($t0)
    /* 6A34C 8007BB3C 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6A350 8007BB40 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6A354 8007BB44 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6A358 8007BB48 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6A35C 8007BB4C 23186600 */  subu       $v1, $v1, $a2
    /* 6A360 8007BB50 1000B4AF */  sw         $s4, 0x10($sp)
    /* 6A364 8007BB54 0C00B3AF */  sw         $s3, 0xC($sp)
    /* 6A368 8007BB58 0800B2AF */  sw         $s2, 0x8($sp)
    /* 6A36C 8007BB5C 0400B1AF */  sw         $s1, 0x4($sp)
    /* 6A370 8007BB60 23100201 */  subu       $v0, $t0, $v0
    /* 6A374 8007BB64 04004224 */  addiu      $v0, $v0, 0x4
    /* 6A378 8007BB68 21104300 */  addu       $v0, $v0, $v1
    /* 6A37C 8007BB6C 2A104400 */  slt        $v0, $v0, $a0
    /* 6A380 8007BB70 63004010 */  beqz       $v0, .L8007BD00
    /* 6A384 8007BB74 0000B0AF */   sw        $s0, 0x0($sp)
    /* 6A388 8007BB78 C77F193C */  lui        $t9, (0x7FC7E000 >> 16)
    /* 6A38C 8007BB7C 2158E000 */  addu       $t3, $a3, $zero
    /* 6A390 8007BB80 00E03937 */  ori        $t9, $t9, (0x7FC7E000 & 0xFFFF)
    /* 6A394 8007BB84 0000638D */  lw         $v1, 0x0($t3)
    /* 6A398 8007BB88 0D80043C */  lui        $a0, %hi(D_800CBDC4)
    /* 6A39C 8007BB8C C4BD848C */  lw         $a0, %lo(D_800CBDC4)($a0)
    /* 6A3A0 8007BB90 0D80123C */  lui        $s2, %hi(D_800CBDC0)
    /* 6A3A4 8007BB94 C0BD528E */  lw         $s2, %lo(D_800CBDC0)($s2)
    /* 6A3A8 8007BB98 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6A3AC 8007BB9C C0100200 */  sll        $v0, $v0, 3
    /* 6A3B0 8007BBA0 21780203 */  addu       $t7, $t8, $v0
    /* 6A3B4 8007BBA4 021C0300 */  srl        $v1, $v1, 16
    /* 6A3B8 8007BBA8 C0180300 */  sll        $v1, $v1, 3
    /* 6A3BC 8007BBAC 21680303 */  addu       $t5, $t8, $v1
    /* 6A3C0 8007BBB0 04006295 */  lhu        $v0, 0x4($t3)
    /* 6A3C4 8007BBB4 0400908C */  lw         $s0, 0x4($a0)
    /* 6A3C8 8007BBB8 C0100200 */  sll        $v0, $v0, 3
    /* 6A3CC 8007BBBC 4E00C010 */  beqz       $a2, .L8007BCF8
    /* 6A3D0 8007BBC0 21600203 */   addu      $t4, $t8, $v0
    /* 6A3D4 8007BBC4 0007143C */  lui        $s4, (0x7000000 >> 16)
    /* 6A3D8 8007BBC8 00C0133C */  lui        $s3, (0xC0000000 >> 16)
    /* 6A3DC 8007BBCC FBFF1126 */  addiu      $s1, $s0, -0x5
    /* 6A3E0 8007BBD0 1C000E25 */  addiu      $t6, $t0, 0x1C
    /* 6A3E4 8007BBD4 14000925 */  addiu      $t1, $t0, 0x14
  .L8007BBD8:
    /* 6A3E8 8007BBD8 0000E0C9 */  lwc2       $0, 0x0($t7)
    /* 6A3EC 8007BBDC 0400E1C9 */  lwc2       $1, 0x4($t7)
    /* 6A3F0 8007BBE0 0000A2C9 */  lwc2       $2, 0x0($t5)
    /* 6A3F4 8007BBE4 0400A3C9 */  lwc2       $3, 0x4($t5)
    /* 6A3F8 8007BBE8 000084C9 */  lwc2       $4, 0x0($t4)
    /* 6A3FC 8007BBEC 040085C9 */  lwc2       $5, 0x4($t4)
    /* 6A400 8007BBF0 21386001 */  addu       $a3, $t3, $zero
    /* 6A404 8007BBF4 1C00EB24 */  addiu      $t3, $a3, 0x1C
    /* 6A408 8007BBF8 3000284A */  rtpt
    /* 6A40C 8007BBFC 1C00E38C */  lw         $v1, 0x1C($a3)
    /* 6A410 8007BC00 1800EA8C */  lw         $t2, 0x18($a3)
    /* 6A414 8007BC04 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6A418 8007BC08 C0100200 */  sll        $v0, $v0, 3
    /* 6A41C 8007BC0C 21780203 */  addu       $t7, $t8, $v0
    /* 6A420 8007BC10 021C0300 */  srl        $v1, $v1, 16
    /* 6A424 8007BC14 C0180300 */  sll        $v1, $v1, 3
    /* 6A428 8007BC18 21680303 */  addu       $t5, $t8, $v1
    /* 6A42C 8007BC1C 04006295 */  lhu        $v0, 0x4($t3)
    /* 6A430 8007BC20 0800E38C */  lw         $v1, 0x8($a3)
    /* 6A434 8007BC24 C0100200 */  sll        $v0, $v0, 3
    /* 6A438 8007BC28 21600203 */  addu       $t4, $t8, $v0
    /* 6A43C 8007BC2C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6A440 8007BC30 00000000 */  nop
    /* 6A444 8007BC34 24105900 */  and        $v0, $v0, $t9
    /* 6A448 8007BC38 2C004014 */  bnez       $v0, .L8007BCEC
    /* 6A44C 8007BC3C 00000000 */   nop
    /* 6A450 8007BC40 0600404B */  nclip
    /* 6A454 8007BC44 000014AD */  sw         $s4, 0x0($t0)
    /* 6A458 8007BC48 F0FF23AD */  sw         $v1, -0x10($t1)
    /* 6A45C 8007BC4C 0C42828F */  lw         $v0, %gp_rel(D_800C88FC)($gp)
    /* 6A460 8007BC50 0C00E38C */  lw         $v1, 0xC($a3)
    /* 6A464 8007BC54 1000E48C */  lw         $a0, 0x10($a3)
    /* 6A468 8007BC58 1400E594 */  lhu        $a1, 0x14($a3)
    /* 6A46C 8007BC5C 21104300 */  addu       $v0, $v0, $v1
    /* 6A470 8007BC60 21180001 */  addu       $v1, $t0, $zero
    /* 6A474 8007BC64 F8FF22AD */  sw         $v0, -0x8($t1)
    /* 6A478 8007BC68 82170A00 */  srl        $v0, $t2, 30
    /* 6A47C 8007BC6C 01004238 */  xori       $v0, $v0, 0x1
    /* 6A480 8007BC70 01004230 */  andi       $v0, $v0, 0x1
    /* 6A484 8007BC74 000024AD */  sw         $a0, 0x0($t1)
    /* 6A488 8007BC78 05004010 */  beqz       $v0, .L8007BC90
    /* 6A48C 8007BC7C 0000C5A5 */   sh        $a1, 0x0($t6)
    /* 6A490 8007BC80 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6A494 8007BC84 00000000 */  nop
    /* 6A498 8007BC88 18004004 */  bltz       $v0, .L8007BCEC
    /* 6A49C 8007BC8C 00000000 */   nop
  .L8007BC90:
    /* 6A4A0 8007BC90 08006CE8 */  swc2       $12, 0x8($v1)
    /* 6A4A4 8007BC94 10006DE8 */  swc2       $13, 0x10($v1)
    /* 6A4A8 8007BC98 18006EE8 */  swc2       $14, 0x18($v1)
    /* 6A4AC 8007BC9C 2D00584B */  avsz3
    /* 6A4B0 8007BCA0 C0140A00 */  sll        $v0, $t2, 19
    /* 6A4B4 8007BCA4 24105300 */  and        $v0, $v0, $s3
    /* 6A4B8 8007BCA8 43160200 */  sra        $v0, $v0, 25
    /* 6A4BC 8007BCAC 00380348 */  mfc2       $v1, $7 /* handwritten instruction */
    /* 6A4C0 8007BCB0 00000000 */  nop
    /* 6A4C4 8007BCB4 21104300 */  addu       $v0, $v0, $v1
    /* 6A4C8 8007BCB8 2A205100 */  slt        $a0, $v0, $s1
    /* 6A4CC 8007BCBC 03008014 */  bnez       $a0, .L8007BCCC
    /* 6A4D0 8007BCC0 80100200 */   sll       $v0, $v0, 2
    /* 6A4D4 8007BCC4 FAFF0226 */  addiu      $v0, $s0, -0x6
    /* 6A4D8 8007BCC8 80100200 */  sll        $v0, $v0, 2
  .L8007BCCC:
    /* 6A4DC 8007BCCC 21104202 */  addu       $v0, $s2, $v0
    /* 6A4E0 8007BCD0 02004488 */  lwl        $a0, 0x2($v0)
    /* 6A4E4 8007BCD4 001A0800 */  sll        $v1, $t0, 8
    /* 6A4E8 8007BCD8 020004A9 */  swl        $a0, 0x2($t0)
    /* 6A4EC 8007BCDC 020043A8 */  swl        $v1, 0x2($v0)
    /* 6A4F0 8007BCE0 20002925 */  addiu      $t1, $t1, 0x20
    /* 6A4F4 8007BCE4 2000CE25 */  addiu      $t6, $t6, 0x20
    /* 6A4F8 8007BCE8 20000825 */  addiu      $t0, $t0, 0x20
  .L8007BCEC:
    /* 6A4FC 8007BCEC FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6A500 8007BCF0 B9FFC014 */  bnez       $a2, .L8007BBD8
    /* 6A504 8007BCF4 00000000 */   nop
  .L8007BCF8:
    /* 6A508 8007BCF8 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6A50C 8007BCFC 708C28AC */  sw         $t0, %lo(D_800C8C70)($at)
  .L8007BD00:
    /* 6A510 8007BD00 1000B48F */  lw         $s4, 0x10($sp)
    /* 6A514 8007BD04 0C00B38F */  lw         $s3, 0xC($sp)
    /* 6A518 8007BD08 0800B28F */  lw         $s2, 0x8($sp)
    /* 6A51C 8007BD0C 0400B18F */  lw         $s1, 0x4($sp)
    /* 6A520 8007BD10 0000B08F */  lw         $s0, 0x0($sp)
    /* 6A524 8007BD14 0800E003 */  jr         $ra
    /* 6A528 8007BD18 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8007BB24
