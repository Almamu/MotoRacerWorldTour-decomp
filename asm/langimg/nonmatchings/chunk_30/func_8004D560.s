nonmatching func_8004D560, 0x1D4

glabel func_8004D560
    /* 3BD70 8004D560 68FFBD27 */  addiu      $sp, $sp, -0x98
    /* 3BD74 8004D564 21108500 */  addu       $v0, $a0, $a1
    /* 3BD78 8004D568 9400BFAF */  sw         $ra, 0x94($sp)
    /* 3BD7C 8004D56C 9000B4AF */  sw         $s4, 0x90($sp)
    /* 3BD80 8004D570 8C00B3AF */  sw         $s3, 0x8C($sp)
    /* 3BD84 8004D574 8800B2AF */  sw         $s2, 0x88($sp)
    /* 3BD88 8004D578 8400B1AF */  sw         $s1, 0x84($sp)
    /* 3BD8C 8004D57C 8000B0AF */  sw         $s0, 0x80($sp)
    /* 3BD90 8004D580 70044380 */  lb         $v1, 0x470($v0)
    /* 3BD94 8004D584 7803878C */  lw         $a3, 0x378($a0)
    /* 3BD98 8004D588 21A00000 */  addu       $s4, $zero, $zero
    /* 3BD9C 8004D58C 2118E300 */  addu       $v1, $a3, $v1
    /* 3BDA0 8004D590 241E6380 */  lb         $v1, 0x1E24($v1)
    /* 3BDA4 8004D594 00000000 */  nop
    /* 3BDA8 8004D598 0C006004 */  bltz       $v1, .L8004D5CC
    /* 3BDAC 8004D59C 21300000 */   addu      $a2, $zero, $zero
    /* 3BDB0 8004D5A0 40100300 */  sll        $v0, $v1, 1
    /* 3BDB4 8004D5A4 21104300 */  addu       $v0, $v0, $v1
    /* 3BDB8 8004D5A8 80100200 */  sll        $v0, $v0, 2
    /* 3BDBC 8004D5AC 23104300 */  subu       $v0, $v0, $v1
    /* 3BDC0 8004D5B0 80100200 */  sll        $v0, $v0, 2
    /* 3BDC4 8004D5B4 23104300 */  subu       $v0, $v0, $v1
    /* 3BDC8 8004D5B8 80100200 */  sll        $v0, $v0, 2
    /* 3BDCC 8004D5BC 21104300 */  addu       $v0, $v0, $v1
    /* 3BDD0 8004D5C0 C0100200 */  sll        $v0, $v0, 3
    /* 3BDD4 8004D5C4 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 3BDD8 8004D5C8 2130E200 */  addu       $a2, $a3, $v0
  .L8004D5CC:
    /* 3BDDC 8004D5CC 0700C010 */  beqz       $a2, .L8004D5EC
    /* 3BDE0 8004D5D0 42000324 */   addiu     $v1, $zero, 0x42
    /* 3BDE4 8004D5D4 0000C28C */  lw         $v0, 0x0($a2)
    /* 3BDE8 8004D5D8 00000000 */  nop
    /* 3BDEC 8004D5DC 7E004230 */  andi       $v0, $v0, 0x7E
    /* 3BDF0 8004D5E0 03004314 */  bne        $v0, $v1, .L8004D5F0
    /* 3BDF4 8004D5E4 80100500 */   sll       $v0, $a1, 2
    /* 3BDF8 8004D5E8 3000D48C */  lw         $s4, 0x30($a2)
  .L8004D5EC:
    /* 3BDFC 8004D5EC 80100500 */  sll        $v0, $a1, 2
  .L8004D5F0:
    /* 3BE00 8004D5F0 21108200 */  addu       $v0, $a0, $v0
    /* 3BE04 8004D5F4 3C04538C */  lw         $s3, 0x43C($v0)
    /* 3BE08 8004D5F8 46008012 */  beqz       $s4, .L8004D714
    /* 3BE0C 8004D5FC 1000B127 */   addiu     $s1, $sp, 0x10
    /* 3BE10 8004D600 21202002 */  addu       $a0, $s1, $zero
    /* 3BE14 8004D604 1800B227 */  addiu      $s2, $sp, 0x18
    /* 3BE18 8004D608 21284002 */  addu       $a1, $s2, $zero
    /* 3BE1C 8004D60C 7300888A */  lwl        $t0, 0x73($s4)
    /* 3BE20 8004D610 7000889A */  lwr        $t0, 0x70($s4)
    /* 3BE24 8004D614 7700898A */  lwl        $t1, 0x77($s4)
    /* 3BE28 8004D618 7400899A */  lwr        $t1, 0x74($s4)
    /* 3BE2C 8004D61C 1300A8AB */  swl        $t0, 0x13($sp)
    /* 3BE30 8004D620 1000A8BB */  swr        $t0, 0x10($sp)
    /* 3BE34 8004D624 1700A9AB */  swl        $t1, 0x17($sp)
    /* 3BE38 8004D628 1400A9BB */  swr        $t1, 0x14($sp)
    /* 3BE3C 8004D62C 64D0000C */  jal        func_80034190
    /* 3BE40 8004D630 5A018626 */   addiu     $a2, $s4, 0x15A
    /* 3BE44 8004D634 2000B027 */  addiu      $s0, $sp, 0x20
    /* 3BE48 8004D638 21200002 */  addu       $a0, $s0, $zero
    /* 3BE4C 8004D63C DA5F020C */  jal        func_80097F68
    /* 3BE50 8004D640 21282002 */   addu      $a1, $s1, $zero
    /* 3BE54 8004D644 4000A427 */  addiu      $a0, $sp, 0x40
    /* 3BE58 8004D648 5E60020C */  jal        func_80098178
    /* 3BE5C 8004D64C 21280002 */   addu      $a1, $s0, $zero
    /* 3BE60 8004D650 4000B127 */  addiu      $s1, $sp, 0x40
    /* 3BE64 8004D654 21202002 */  addu       $a0, $s1, $zero
    /* 3BE68 8004D658 64008226 */  addiu      $v0, $s4, 0x64
    /* 3BE6C 8004D65C 21284002 */  addu       $a1, $s2, $zero
    /* 3BE70 8004D660 4000A88F */  lw         $t0, 0x40($sp)
    /* 3BE74 8004D664 4400A98F */  lw         $t1, 0x44($sp)
    /* 3BE78 8004D668 4800AA8F */  lw         $t2, 0x48($sp)
    /* 3BE7C 8004D66C 4C00AB8F */  lw         $t3, 0x4C($sp)
    /* 3BE80 8004D670 000068AE */  sw         $t0, 0x0($s3)
    /* 3BE84 8004D674 040069AE */  sw         $t1, 0x4($s3)
    /* 3BE88 8004D678 08006AAE */  sw         $t2, 0x8($s3)
    /* 3BE8C 8004D67C 0C006BAE */  sw         $t3, 0xC($s3)
    /* 3BE90 8004D680 5000A88F */  lw         $t0, 0x50($sp)
    /* 3BE94 8004D684 5400A98F */  lw         $t1, 0x54($sp)
    /* 3BE98 8004D688 5800AA8F */  lw         $t2, 0x58($sp)
    /* 3BE9C 8004D68C 5C00AB8F */  lw         $t3, 0x5C($sp)
    /* 3BEA0 8004D690 100068AE */  sw         $t0, 0x10($s3)
    /* 3BEA4 8004D694 140069AE */  sw         $t1, 0x14($s3)
    /* 3BEA8 8004D698 18006AAE */  sw         $t2, 0x18($s3)
    /* 3BEAC 8004D69C 1C006BAE */  sw         $t3, 0x1C($s3)
    /* 3BEB0 8004D6A0 1C0060AE */  sw         $zero, 0x1C($s3)
    /* 3BEB4 8004D6A4 180060AE */  sw         $zero, 0x18($s3)
    /* 3BEB8 8004D6A8 140060AE */  sw         $zero, 0x14($s3)
    /* 3BEBC 8004D6AC 6400838E */  lw         $v1, 0x64($s4)
    /* 3BEC0 8004D6B0 0400468C */  lw         $a2, 0x4($v0)
    /* 3BEC4 8004D6B4 0800478C */  lw         $a3, 0x8($v0)
    /* 3BEC8 8004D6B8 F8007026 */  addiu      $s0, $s3, 0xF8
    /* 3BECC 8004D6BC F80063AE */  sw         $v1, 0xF8($s3)
    /* 3BED0 8004D6C0 040006AE */  sw         $a2, 0x4($s0)
    /* 3BED4 8004D6C4 DA5F020C */  jal        func_80097F68
    /* 3BED8 8004D6C8 080007AE */   sw        $a3, 0x8($s0)
    /* 3BEDC 8004D6CC 21202002 */  addu       $a0, $s1, $zero
    /* 3BEE0 8004D6D0 7000A327 */  addiu      $v1, $sp, 0x70
    /* 3BEE4 8004D6D4 21286000 */  addu       $a1, $v1, $zero
    /* 3BEE8 8004D6D8 6000A627 */  addiu      $a2, $sp, 0x60
    /* 3BEEC 8004D6DC 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3BEF0 8004D6E0 5C00A0AF */  sw         $zero, 0x5C($sp)
    /* 3BEF4 8004D6E4 5800A0AF */  sw         $zero, 0x58($sp)
    /* 3BEF8 8004D6E8 5400A0AF */  sw         $zero, 0x54($sp)
    /* 3BEFC 8004D6EC 7000A0AF */  sw         $zero, 0x70($sp)
    /* 3BF00 8004D6F0 040062AC */  sw         $v0, 0x4($v1)
    /* 3BF04 8004D6F4 DA61020C */  jal        func_80098768
    /* 3BF08 8004D6F8 7800A0AF */   sw        $zero, 0x78($sp)
    /* 3BF0C 8004D6FC 6000A427 */  addiu      $a0, $sp, 0x60
    /* 3BF10 8004D700 F465020C */  jal        func_800997D0
    /* 3BF14 8004D704 5400A527 */   addiu     $a1, $sp, 0x54
    /* 3BF18 8004D708 21200002 */  addu       $a0, $s0, $zero
    /* 3BF1C 8004D70C F465020C */  jal        func_800997D0
    /* 3BF20 8004D710 6000A527 */   addiu     $a1, $sp, 0x60
  .L8004D714:
    /* 3BF24 8004D714 9400BF8F */  lw         $ra, 0x94($sp)
    /* 3BF28 8004D718 9000B48F */  lw         $s4, 0x90($sp)
    /* 3BF2C 8004D71C 8C00B38F */  lw         $s3, 0x8C($sp)
    /* 3BF30 8004D720 8800B28F */  lw         $s2, 0x88($sp)
    /* 3BF34 8004D724 8400B18F */  lw         $s1, 0x84($sp)
    /* 3BF38 8004D728 8000B08F */  lw         $s0, 0x80($sp)
    /* 3BF3C 8004D72C 0800E003 */  jr         $ra
    /* 3BF40 8004D730 9800BD27 */   addiu     $sp, $sp, 0x98
endlabel func_8004D560
