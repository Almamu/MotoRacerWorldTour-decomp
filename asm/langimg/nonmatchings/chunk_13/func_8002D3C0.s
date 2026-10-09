nonmatching func_8002D3C0, 0x340

glabel func_8002D3C0
    /* 1BBD0 8002D3C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1BBD4 8002D3C4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1BBD8 8002D3C8 21808000 */  addu       $s0, $a0, $zero
    /* 1BBDC 8002D3CC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1BBE0 8002D3D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1BBE4 8002D3D4 58000282 */  lb         $v0, 0x58($s0)
    /* 1BBE8 8002D3D8 00000000 */  nop
    /* 1BBEC 8002D3DC C3004010 */  beqz       $v0, .L8002D6EC
    /* 1BBF0 8002D3E0 28040224 */   addiu     $v0, $zero, 0x428
    /* 1BBF4 8002D3E4 CC05048E */  lw         $a0, 0x5CC($s0)
    /* 1BBF8 8002D3E8 49020324 */  addiu      $v1, $zero, 0x249
    /* 1BBFC 8002D3EC 3C0502AE */  sw         $v0, 0x53C($s0)
    /* 1BC00 8002D3F0 400503AE */  sw         $v1, 0x540($s0)
    /* 1BC04 8002D3F4 0000828C */  lw         $v0, 0x0($a0)
    /* 1BC08 8002D3F8 3405118E */  lw         $s1, 0x534($s0)
    /* 1BC0C 8002D3FC 423A0200 */  srl        $a3, $v0, 9
    /* 1BC10 8002D400 0100E730 */  andi       $a3, $a3, 0x1
    /* 1BC14 8002D404 0600E010 */  beqz       $a3, .L8002D420
    /* 1BC18 8002D408 00000000 */   nop
    /* 1BC1C 8002D40C 0400C010 */  beqz       $a2, .L8002D420
    /* 1BC20 8002D410 3F00A228 */   slti      $v0, $a1, 0x3F
    /* 1BC24 8002D414 02004010 */  beqz       $v0, .L8002D420
    /* 1BC28 8002D418 00000000 */   nop
    /* 1BC2C 8002D41C 21380000 */  addu       $a3, $zero, $zero
  .L8002D420:
    /* 1BC30 8002D420 58000392 */  lbu        $v1, 0x58($s0)
    /* 1BC34 8002D424 00000000 */  nop
    /* 1BC38 8002D428 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 1BC3C 8002D42C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1BC40 8002D430 1B004010 */  beqz       $v0, .L8002D4A0
    /* 1BC44 8002D434 00000000 */   nop
    /* 1BC48 8002D438 4A010282 */  lb         $v0, 0x14A($s0)
    /* 1BC4C 8002D43C 00000000 */  nop
    /* 1BC50 8002D440 17004010 */  beqz       $v0, .L8002D4A0
    /* 1BC54 8002D444 00000000 */   nop
    /* 1BC58 8002D448 5802028E */  lw         $v0, 0x258($s0)
    /* 1BC5C 8002D44C 00000000 */  nop
    /* 1BC60 8002D450 800F4228 */  slti       $v0, $v0, 0xF80
    /* 1BC64 8002D454 06004014 */  bnez       $v0, .L8002D470
    /* 1BC68 8002D458 01000224 */   addiu     $v0, $zero, 0x1
    /* 1BC6C 8002D45C 6402028E */  lw         $v0, 0x264($s0)
    /* 1BC70 8002D460 00000000 */  nop
    /* 1BC74 8002D464 800F4228 */  slti       $v0, $v0, 0xF80
    /* 1BC78 8002D468 02004010 */  beqz       $v0, .L8002D474
    /* 1BC7C 8002D46C 01000224 */   addiu     $v0, $zero, 0x1
  .L8002D470:
    /* 1BC80 8002D470 150402A2 */  sb         $v0, 0x415($s0)
  .L8002D474:
    /* 1BC84 8002D474 00160300 */  sll        $v0, $v1, 24
    /* 1BC88 8002D478 03160200 */  sra        $v0, $v0, 24
    /* 1BC8C 8002D47C 01000324 */  addiu      $v1, $zero, 0x1
    /* 1BC90 8002D480 07004314 */  bne        $v0, $v1, .L8002D4A0
    /* 1BC94 8002D484 FFEF0234 */   ori       $v0, $zero, 0xEFFF
    /* 1BC98 8002D488 9C02038E */  lw         $v1, 0x29C($s0)
    /* 1BC9C 8002D48C 00000000 */  nop
    /* 1BCA0 8002D490 2A104300 */  slt        $v0, $v0, $v1
    /* 1BCA4 8002D494 02004014 */  bnez       $v0, .L8002D4A0
    /* 1BCA8 8002D498 00000000 */   nop
    /* 1BCAC 8002D49C 150400A2 */  sb         $zero, 0x415($s0)
  .L8002D4A0:
    /* 1BCB0 8002D4A0 15040282 */  lb         $v0, 0x415($s0)
    /* 1BCB4 8002D4A4 CC05048E */  lw         $a0, 0x5CC($s0)
    /* 1BCB8 8002D4A8 02004010 */  beqz       $v0, .L8002D4B4
    /* 1BCBC 8002D4AC 00000000 */   nop
    /* 1BCC0 8002D4B0 01000724 */  addiu      $a3, $zero, 0x1
  .L8002D4B4:
    /* 1BCC4 8002D4B4 1000828C */  lw         $v0, 0x10($a0)
    /* 1BCC8 8002D4B8 00000000 */  nop
    /* 1BCCC 8002D4BC 55004010 */  beqz       $v0, .L8002D614
    /* 1BCD0 8002D4C0 51040324 */   addiu     $v1, $zero, 0x451
    /* 1BCD4 8002D4C4 1200E010 */  beqz       $a3, .L8002D510
    /* 1BCD8 8002D4C8 00000000 */   nop
    /* 1BCDC 8002D4CC 5005038E */  lw         $v1, 0x550($s0)
    /* 1BCE0 8002D4D0 00000000 */  nop
    /* 1BCE4 8002D4D4 0C006010 */  beqz       $v1, .L8002D508
    /* 1BCE8 8002D4D8 02000224 */   addiu     $v0, $zero, 0x2
    /* 1BCEC 8002D4DC 0E006214 */  bne        $v1, $v0, .L8002D518
    /* 1BCF0 8002D4E0 01000224 */   addiu     $v0, $zero, 0x1
    /* 1BCF4 8002D4E4 5405038E */  lw         $v1, 0x554($s0)
    /* 1BCF8 8002D4E8 00000000 */  nop
    /* 1BCFC 8002D4EC 08006018 */  blez       $v1, .L8002D510
    /* 1BD00 8002D4F0 00000000 */   nop
    /* 1BD04 8002D4F4 5C05028E */  lw         $v0, 0x55C($s0)
    /* 1BD08 8002D4F8 00000000 */  nop
    /* 1BD0C 8002D4FC 23106200 */  subu       $v0, $v1, $v0
    /* 1BD10 8002D500 03004104 */  bgez       $v0, .L8002D510
    /* 1BD14 8002D504 00000000 */   nop
  .L8002D508:
    /* 1BD18 8002D508 01000224 */  addiu      $v0, $zero, 0x1
    /* 1BD1C 8002D50C 500502AE */  sw         $v0, 0x550($s0)
  .L8002D510:
    /* 1BD20 8002D510 5005038E */  lw         $v1, 0x550($s0)
    /* 1BD24 8002D514 01000224 */  addiu      $v0, $zero, 0x1
  .L8002D518:
    /* 1BD28 8002D518 26006214 */  bne        $v1, $v0, .L8002D5B4
    /* 1BD2C 8002D51C 00000000 */   nop
    /* 1BD30 8002D520 2300E010 */  beqz       $a3, .L8002D5B0
    /* 1BD34 8002D524 02000224 */   addiu     $v0, $zero, 0x2
    /* 1BD38 8002D528 15040282 */  lb         $v0, 0x415($s0)
    /* 1BD3C 8002D52C 00000000 */  nop
    /* 1BD40 8002D530 0A004010 */  beqz       $v0, .L8002D55C
    /* 1BD44 8002D534 FF7F0224 */   addiu     $v0, $zero, 0x7FFF
    /* 1BD48 8002D538 9C02038E */  lw         $v1, 0x29C($s0)
    /* 1BD4C 8002D53C 00000000 */  nop
    /* 1BD50 8002D540 2A104300 */  slt        $v0, $v0, $v1
    /* 1BD54 8002D544 06004014 */  bnez       $v0, .L8002D560
    /* 1BD58 8002D548 34050426 */   addiu     $a0, $s0, 0x534
    /* 1BD5C 8002D54C 03000224 */  addiu      $v0, $zero, 0x3
    /* 1BD60 8002D550 500502AE */  sw         $v0, 0x550($s0)
    /* 1BD64 8002D554 5FB50008 */  j          .L8002D57C
    /* 1BD68 8002D558 150400A2 */   sb        $zero, 0x415($s0)
  .L8002D55C:
    /* 1BD6C 8002D55C 34050426 */  addiu      $a0, $s0, 0x534
  .L8002D560:
    /* 1BD70 8002D560 00040224 */  addiu      $v0, $zero, 0x400
    /* 1BD74 8002D564 98020586 */  lh         $a1, 0x298($s0)
    /* 1BD78 8002D568 51040324 */  addiu      $v1, $zero, 0x451
    /* 1BD7C 8002D56C 400502AE */  sw         $v0, 0x540($s0)
    /* 1BD80 8002D570 3C0503AE */  sw         $v1, 0x53C($s0)
    /* 1BD84 8002D574 F1AE010C */  jal        func_8006BBC4
    /* 1BD88 8002D578 380500AE */   sw        $zero, 0x538($s0)
  .L8002D57C:
    /* 1BD8C 8002D57C 15040282 */  lb         $v0, 0x415($s0)
    /* 1BD90 8002D580 00000000 */  nop
    /* 1BD94 8002D584 0B004010 */  beqz       $v0, .L8002D5B4
    /* 1BD98 8002D588 00000000 */   nop
    /* 1BD9C 8002D58C 3405028E */  lw         $v0, 0x534($s0)
    /* 1BDA0 8002D590 00000000 */  nop
    /* 1BDA4 8002D594 21004228 */  slti       $v0, $v0, 0x21
    /* 1BDA8 8002D598 06004010 */  beqz       $v0, .L8002D5B4
    /* 1BDAC 8002D59C 02000224 */   addiu     $v0, $zero, 0x2
    /* 1BDB0 8002D5A0 340500AE */  sw         $zero, 0x534($s0)
    /* 1BDB4 8002D5A4 500502AE */  sw         $v0, 0x550($s0)
    /* 1BDB8 8002D5A8 6DB50008 */  j          .L8002D5B4
    /* 1BDBC 8002D5AC 150400A2 */   sb        $zero, 0x415($s0)
  .L8002D5B0:
    /* 1BDC0 8002D5B0 500502AE */  sw         $v0, 0x550($s0)
  .L8002D5B4:
    /* 1BDC4 8002D5B4 5005038E */  lw         $v1, 0x550($s0)
    /* 1BDC8 8002D5B8 03000224 */  addiu      $v0, $zero, 0x3
    /* 1BDCC 8002D5BC 0A006214 */  bne        $v1, $v0, .L8002D5E8
    /* 1BDD0 8002D5C0 02000224 */   addiu     $v0, $zero, 0x2
    /* 1BDD4 8002D5C4 34050426 */  addiu      $a0, $s0, 0x534
    /* 1BDD8 8002D5C8 00010224 */  addiu      $v0, $zero, 0x100
    /* 1BDDC 8002D5CC 33030324 */  addiu      $v1, $zero, 0x333
    /* 1BDE0 8002D5D0 98020586 */  lh         $a1, 0x298($s0)
    /* 1BDE4 8002D5D4 00100624 */  addiu      $a2, $zero, 0x1000
    /* 1BDE8 8002D5D8 400502AE */  sw         $v0, 0x540($s0)
    /* 1BDEC 8002D5DC 3C0503AE */  sw         $v1, 0x53C($s0)
    /* 1BDF0 8002D5E0 8EB50008 */  j          .L8002D638
    /* 1BDF4 8002D5E4 380506AE */   sw        $a2, 0x538($s0)
  .L8002D5E8:
    /* 1BDF8 8002D5E8 18006214 */  bne        $v1, $v0, .L8002D64C
    /* 1BDFC 8002D5EC FEFF6224 */   addiu     $v0, $v1, -0x2
    /* 1BE00 8002D5F0 34050426 */  addiu      $a0, $s0, 0x534
    /* 1BE04 8002D5F4 00040224 */  addiu      $v0, $zero, 0x400
    /* 1BE08 8002D5F8 51040324 */  addiu      $v1, $zero, 0x451
    /* 1BE0C 8002D5FC 98020586 */  lh         $a1, 0x298($s0)
    /* 1BE10 8002D600 00100624 */  addiu      $a2, $zero, 0x1000
    /* 1BE14 8002D604 400502AE */  sw         $v0, 0x540($s0)
    /* 1BE18 8002D608 3C0503AE */  sw         $v1, 0x53C($s0)
    /* 1BE1C 8002D60C 8EB50008 */  j          .L8002D638
    /* 1BE20 8002D610 380506AE */   sw        $a2, 0x538($s0)
  .L8002D614:
    /* 1BE24 8002D614 34050426 */  addiu      $a0, $s0, 0x534
    /* 1BE28 8002D618 00040224 */  addiu      $v0, $zero, 0x400
    /* 1BE2C 8002D61C 98020586 */  lh         $a1, 0x298($s0)
    /* 1BE30 8002D620 400502AE */  sw         $v0, 0x540($s0)
    /* 1BE34 8002D624 02000224 */  addiu      $v0, $zero, 0x2
    /* 1BE38 8002D628 3C0503AE */  sw         $v1, 0x53C($s0)
    /* 1BE3C 8002D62C 00100324 */  addiu      $v1, $zero, 0x1000
    /* 1BE40 8002D630 500502AE */  sw         $v0, 0x550($s0)
    /* 1BE44 8002D634 380503AE */  sw         $v1, 0x538($s0)
  .L8002D638:
    /* 1BE48 8002D638 F1AE010C */  jal        func_8006BBC4
    /* 1BE4C 8002D63C 00000000 */   nop
    /* 1BE50 8002D640 5005038E */  lw         $v1, 0x550($s0)
    /* 1BE54 8002D644 00000000 */  nop
    /* 1BE58 8002D648 FEFF6224 */  addiu      $v0, $v1, -0x2
  .L8002D64C:
    /* 1BE5C 8002D64C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1BE60 8002D650 08004010 */  beqz       $v0, .L8002D674
    /* 1BE64 8002D654 00000000 */   nop
    /* 1BE68 8002D658 3405028E */  lw         $v0, 0x534($s0)
    /* 1BE6C 8002D65C 00000000 */  nop
    /* 1BE70 8002D660 E10F4228 */  slti       $v0, $v0, 0xFE1
    /* 1BE74 8002D664 03004014 */  bnez       $v0, .L8002D674
    /* 1BE78 8002D668 00100224 */   addiu     $v0, $zero, 0x1000
    /* 1BE7C 8002D66C 340502AE */  sw         $v0, 0x534($s0)
    /* 1BE80 8002D670 500500AE */  sw         $zero, 0x550($s0)
  .L8002D674:
    /* 1BE84 8002D674 3405028E */  lw         $v0, 0x534($s0)
    /* 1BE88 8002D678 9002038E */  lw         $v1, 0x290($s0)
    /* 1BE8C 8002D67C 23105100 */  subu       $v0, $v0, $s1
    /* 1BE90 8002D680 00130200 */  sll        $v0, $v0, 12
    /* 1BE94 8002D684 1A004300 */  div        $zero, $v0, $v1
    /* 1BE98 8002D688 12380000 */  mflo       $a3
    /* 1BE9C 8002D68C 5405048E */  lw         $a0, 0x554($s0)
    /* 1BEA0 8002D690 CC05058E */  lw         $a1, 0x5CC($s0)
    /* 1BEA4 8002D694 5C0504AE */  sw         $a0, 0x55C($s0)
    /* 1BEA8 8002D698 540507AE */  sw         $a3, 0x554($s0)
    /* 1BEAC 8002D69C 1000A28C */  lw         $v0, 0x10($a1)
    /* 1BEB0 8002D6A0 00000000 */  nop
    /* 1BEB4 8002D6A4 11004010 */  beqz       $v0, .L8002D6EC
    /* 1BEB8 8002D6A8 00000000 */   nop
    /* 1BEBC 8002D6AC D005038E */  lw         $v1, 0x5D0($s0)
    /* 1BEC0 8002D6B0 100400A2 */  sb         $zero, 0x410($s0)
    /* 1BEC4 8002D6B4 1000628C */  lw         $v0, 0x10($v1)
    /* 1BEC8 8002D6B8 00000000 */  nop
    /* 1BECC 8002D6BC 0B004014 */  bnez       $v0, .L8002D6EC
    /* 1BED0 8002D6C0 00000000 */   nop
    /* 1BED4 8002D6C4 0300E010 */  beqz       $a3, .L8002D6D4
    /* 1BED8 8002D6C8 02000224 */   addiu     $v0, $zero, 0x2
    /* 1BEDC 8002D6CC BAB50008 */  j          .L8002D6E8
    /* 1BEE0 8002D6D0 580507AE */   sw        $a3, 0x558($s0)
  .L8002D6D4:
    /* 1BEE4 8002D6D4 58000382 */  lb         $v1, 0x58($s0)
    /* 1BEE8 8002D6D8 00000000 */  nop
    /* 1BEEC 8002D6DC 02006214 */  bne        $v1, $v0, .L8002D6E8
    /* 1BEF0 8002D6E0 01000224 */   addiu     $v0, $zero, 0x1
    /* 1BEF4 8002D6E4 100402A2 */  sb         $v0, 0x410($s0)
  .L8002D6E8:
    /* 1BEF8 8002D6E8 150400A2 */  sb         $zero, 0x415($s0)
  .L8002D6EC:
    /* 1BEFC 8002D6EC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1BF00 8002D6F0 1400B18F */  lw         $s1, 0x14($sp)
    /* 1BF04 8002D6F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 1BF08 8002D6F8 0800E003 */  jr         $ra
    /* 1BF0C 8002D6FC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8002D3C0
