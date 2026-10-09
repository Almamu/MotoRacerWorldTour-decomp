/* Handwritten function */
nonmatching func_8007D434, 0x204

glabel func_8007D434
    /* 6BC44 8007D434 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 6BC48 8007D438 801F0F3C */  lui        $t7, (0x1F800008 >> 16)
    /* 6BC4C 8007D43C 0800EF35 */  ori        $t7, $t7, (0x1F800008 & 0xFFFF)
    /* 6BC50 8007D440 0000B0AF */  sw         $s0, 0x0($sp)
    /* 6BC54 8007D444 C77F103C */  lui        $s0, (0x7FC7E000 >> 16)
    /* 6BC58 8007D448 00E01036 */  ori        $s0, $s0, (0x7FC7E000 & 0xFFFF)
    /* 6BC5C 8007D44C FEFFE724 */  addiu      $a3, $a3, -0x2
    /* 6BC60 8007D450 0C00B3AF */  sw         $s3, 0xC($sp)
    /* 6BC64 8007D454 0800B2AF */  sw         $s2, 0x8($sp)
    /* 6BC68 8007D458 0400B1AF */  sw         $s1, 0x4($sp)
    /* 6BC6C 8007D45C 0300E280 */  lb         $v0, 0x3($a3)
    /* 6BC70 8007D460 0D80093C */  lui        $t1, %hi(D_800C8C70)
    /* 6BC74 8007D464 708C298D */  lw         $t1, %lo(D_800C8C70)($t1)
    /* 6BC78 8007D468 21104F00 */  addu       $v0, $v0, $t7
    /* 6BC7C 8007D46C 00004380 */  lb         $v1, 0x0($v0)
    /* 6BC80 8007D470 801F113C */  lui        $s1, (0x1F800004 >> 16)
    /* 6BC84 8007D474 0400318E */  lw         $s1, (0x1F800004 & 0xFFFF)($s1)
    /* 6BC88 8007D478 0D006014 */  bnez       $v1, .L8007D4B0
    /* 6BC8C 8007D47C 21508000 */   addu      $t2, $a0, $zero
  .L8007D480:
    /* 6BC90 8007D480 1C004A25 */  addiu      $t2, $t2, 0x1C
  .L8007D484:
    /* 6BC94 8007D484 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6BC98 8007D488 0900C010 */  beqz       $a2, .L8007D4B0
    /* 6BC9C 8007D48C 0200E724 */   addiu     $a3, $a3, 0x2
    /* 6BCA0 8007D490 0300E280 */  lb         $v0, 0x3($a3)
    /* 6BCA4 8007D494 00000000 */  nop
    /* 6BCA8 8007D498 2110E201 */  addu       $v0, $t7, $v0
    /* 6BCAC 8007D49C 00004380 */  lb         $v1, 0x0($v0)
    /* 6BCB0 8007D4A0 00000000 */  nop
    /* 6BCB4 8007D4A4 F7FF6010 */  beqz       $v1, .L8007D484
    /* 6BCB8 8007D4A8 1C004A25 */   addiu     $t2, $t2, 0x1C
    /* 6BCBC 8007D4AC E4FF4A25 */  addiu      $t2, $t2, -0x1C
  .L8007D4B0:
    /* 6BCC0 8007D4B0 0000438D */  lw         $v1, 0x0($t2)
    /* 6BCC4 8007D4B4 0400448D */  lw         $a0, 0x4($t2)
    /* 6BCC8 8007D4B8 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6BCCC 8007D4BC C0100200 */  sll        $v0, $v0, 3
    /* 6BCD0 8007D4C0 21C0A200 */  addu       $t8, $a1, $v0
    /* 6BCD4 8007D4C4 021C0300 */  srl        $v1, $v1, 16
    /* 6BCD8 8007D4C8 C0180300 */  sll        $v1, $v1, 3
    /* 6BCDC 8007D4CC 2170A300 */  addu       $t6, $a1, $v1
    /* 6BCE0 8007D4D0 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6BCE4 8007D4D4 C0100200 */  sll        $v0, $v0, 3
    /* 6BCE8 8007D4D8 21C8A200 */  addu       $t9, $a1, $v0
    /* 6BCEC 8007D4DC 02240400 */  srl        $a0, $a0, 16
    /* 6BCF0 8007D4E0 C0200400 */  sll        $a0, $a0, 3
    /* 6BCF4 8007D4E4 4C00C010 */  beqz       $a2, .L8007D618
    /* 6BCF8 8007D4E8 2168A400 */   addu      $t5, $a1, $a0
    /* 6BCFC 8007D4EC 0005133C */  lui        $s3, (0x5000000 >> 16)
    /* 6BD00 8007D4F0 00C0123C */  lui        $s2, (0xC0000000 >> 16)
  .L8007D4F4:
    /* 6BD04 8007D4F4 0300E280 */  lb         $v0, 0x3($a3)
    /* 6BD08 8007D4F8 00000000 */  nop
    /* 6BD0C 8007D4FC 2110E201 */  addu       $v0, $t7, $v0
    /* 6BD10 8007D500 00004380 */  lb         $v1, 0x0($v0)
    /* 6BD14 8007D504 00000000 */  nop
    /* 6BD18 8007D508 DDFF6010 */  beqz       $v1, .L8007D480
    /* 6BD1C 8007D50C 00000000 */   nop
    /* 6BD20 8007D510 000000CB */  lwc2       $0, 0x0($t8)
    /* 6BD24 8007D514 040001CB */  lwc2       $1, 0x4($t8)
    /* 6BD28 8007D518 0000C2C9 */  lwc2       $2, 0x0($t6)
    /* 6BD2C 8007D51C 0400C3C9 */  lwc2       $3, 0x4($t6)
    /* 6BD30 8007D520 0000A4C9 */  lwc2       $4, 0x0($t5)
    /* 6BD34 8007D524 0400A5C9 */  lwc2       $5, 0x4($t5)
    /* 6BD38 8007D528 21404001 */  addu       $t0, $t2, $zero
    /* 6BD3C 8007D52C 1C000A25 */  addiu      $t2, $t0, 0x1C
    /* 6BD40 8007D530 21582003 */  addu       $t3, $t9, $zero
    /* 6BD44 8007D534 3000284A */  rtpt
    /* 6BD48 8007D538 1C00038D */  lw         $v1, 0x1C($t0)
    /* 6BD4C 8007D53C 0400448D */  lw         $a0, 0x4($t2)
    /* 6BD50 8007D540 18000C8D */  lw         $t4, 0x18($t0)
    /* 6BD54 8007D544 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6BD58 8007D548 C0100200 */  sll        $v0, $v0, 3
    /* 6BD5C 8007D54C 21C0A200 */  addu       $t8, $a1, $v0
    /* 6BD60 8007D550 021C0300 */  srl        $v1, $v1, 16
    /* 6BD64 8007D554 C0180300 */  sll        $v1, $v1, 3
    /* 6BD68 8007D558 2170A300 */  addu       $t6, $a1, $v1
    /* 6BD6C 8007D55C FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6BD70 8007D560 C0100200 */  sll        $v0, $v0, 3
    /* 6BD74 8007D564 21C8A200 */  addu       $t9, $a1, $v0
    /* 6BD78 8007D568 02240400 */  srl        $a0, $a0, 16
    /* 6BD7C 8007D56C C0200400 */  sll        $a0, $a0, 3
    /* 6BD80 8007D570 2168A400 */  addu       $t5, $a1, $a0
    /* 6BD84 8007D574 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6BD88 8007D578 00000000 */  nop
    /* 6BD8C 8007D57C 24105000 */  and        $v0, $v0, $s0
    /* 6BD90 8007D580 22004014 */  bnez       $v0, .L8007D60C
    /* 6BD94 8007D584 21202001 */   addu      $a0, $t1, $zero
    /* 6BD98 8007D588 000033AD */  sw         $s3, 0x0($t1)
    /* 6BD9C 8007D58C 0800028D */  lw         $v0, 0x8($t0)
    /* 6BDA0 8007D590 00000000 */  nop
    /* 6BDA4 8007D594 040022AD */  sw         $v0, 0x4($t1)
    /* 6BDA8 8007D598 00C00348 */  mfc2       $v1, $24 /* handwritten instruction */
    /* 6BDAC 8007D59C 08008CE8 */  swc2       $12, 0x8($a0)
    /* 6BDB0 8007D5A0 0C008DE8 */  swc2       $13, 0xC($a0)
    /* 6BDB4 8007D5A4 10008EE8 */  swc2       $14, 0x10($a0)
    /* 6BDB8 8007D5A8 000060C9 */  lwc2       $0, 0x0($t3)
    /* 6BDBC 8007D5AC 040061C9 */  lwc2       $1, 0x4($t3)
    /* 6BDC0 8007D5B0 0200E724 */  addiu      $a3, $a3, 0x2
    /* 6BDC4 8007D5B4 00000000 */  nop
    /* 6BDC8 8007D5B8 0100184A */  rtps
    /* 6BDCC 8007D5BC 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6BDD0 8007D5C0 00000000 */  nop
    /* 6BDD4 8007D5C4 24105000 */  and        $v0, $v0, $s0
    /* 6BDD8 8007D5C8 10004014 */  bnez       $v0, .L8007D60C
    /* 6BDDC 8007D5CC 00000000 */   nop
    /* 6BDE0 8007D5D0 14008EE8 */  swc2       $14, 0x14($a0)
    /* 6BDE4 8007D5D4 C0140C00 */  sll        $v0, $t4, 19
    /* 6BDE8 8007D5D8 24105200 */  and        $v0, $v0, $s2
    /* 6BDEC 8007D5DC 83170200 */  sra        $v0, $v0, 30
    /* 6BDF0 8007D5E0 801F043C */  lui        $a0, (0x1F800000 >> 16)
    /* 6BDF4 8007D5E4 0000848C */  lw         $a0, (0x1F800000 & 0xFFFF)($a0)
    /* 6BDF8 8007D5E8 02004324 */  addiu      $v1, $v0, 0x2
    /* 6BDFC 8007D5EC 04108300 */  sllv       $v0, $v1, $a0
    /* 6BE00 8007D5F0 80100200 */  sll        $v0, $v0, 2
    /* 6BE04 8007D5F4 21102202 */  addu       $v0, $s1, $v0
    /* 6BE08 8007D5F8 02004488 */  lwl        $a0, 0x2($v0)
    /* 6BE0C 8007D5FC 001A0900 */  sll        $v1, $t1, 8
    /* 6BE10 8007D600 020024A9 */  swl        $a0, 0x2($t1)
    /* 6BE14 8007D604 020043A8 */  swl        $v1, 0x2($v0)
    /* 6BE18 8007D608 18002925 */  addiu      $t1, $t1, 0x18
  .L8007D60C:
    /* 6BE1C 8007D60C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6BE20 8007D610 B8FFC014 */  bnez       $a2, .L8007D4F4
    /* 6BE24 8007D614 00000000 */   nop
  .L8007D618:
    /* 6BE28 8007D618 0C00B38F */  lw         $s3, 0xC($sp)
    /* 6BE2C 8007D61C 0800B28F */  lw         $s2, 0x8($sp)
    /* 6BE30 8007D620 0400B18F */  lw         $s1, 0x4($sp)
    /* 6BE34 8007D624 0000B08F */  lw         $s0, 0x0($sp)
    /* 6BE38 8007D628 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6BE3C 8007D62C 708C29AC */  sw         $t1, %lo(D_800C8C70)($at)
    /* 6BE40 8007D630 0800E003 */  jr         $ra
    /* 6BE44 8007D634 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_8007D434
