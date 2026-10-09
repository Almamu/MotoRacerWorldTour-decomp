nonmatching func_800AD4F0, 0x280

glabel func_800AD4F0
    /* 9BD00 800AD4F0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9BD04 800AD4F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9BD08 800AD4F8 21888000 */  addu       $s1, $a0, $zero
    /* 9BD0C 800AD4FC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9BD10 800AD500 2190A000 */  addu       $s2, $a1, $zero
    /* 9BD14 800AD504 2400BFAF */  sw         $ra, 0x24($sp)
    /* 9BD18 800AD508 2000B4AF */  sw         $s4, 0x20($sp)
    /* 9BD1C 800AD50C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9BD20 800AD510 08B8020C */  jal        func_800AE020
    /* 9BD24 800AD514 1000B0AF */   sw        $s0, 0x10($sp)
    /* 9BD28 800AD518 04002586 */  lh         $a1, 0x4($s1)
    /* 9BD2C 800AD51C 04002396 */  lhu        $v1, 0x4($s1)
    /* 9BD30 800AD520 0A00A004 */  bltz       $a1, .L800AD54C
    /* 9BD34 800AD524 21206000 */   addu      $a0, $v1, $zero
    /* 9BD38 800AD528 0C80023C */  lui        $v0, %hi(D_800BF244)
    /* 9BD3C 800AD52C 44F24284 */  lh         $v0, %lo(D_800BF244)($v0)
    /* 9BD40 800AD530 0C80033C */  lui        $v1, %hi(D_800BF244)
    /* 9BD44 800AD534 44F26394 */  lhu        $v1, %lo(D_800BF244)($v1)
    /* 9BD48 800AD538 2A104500 */  slt        $v0, $v0, $a1
    /* 9BD4C 800AD53C 04004010 */  beqz       $v0, .L800AD550
    /* 9BD50 800AD540 00000000 */   nop
    /* 9BD54 800AD544 54B50208 */  j          .L800AD550
    /* 9BD58 800AD548 21206000 */   addu      $a0, $v1, $zero
  .L800AD54C:
    /* 9BD5C 800AD54C 21200000 */  addu       $a0, $zero, $zero
  .L800AD550:
    /* 9BD60 800AD550 06002586 */  lh         $a1, 0x6($s1)
    /* 9BD64 800AD554 06002396 */  lhu        $v1, 0x6($s1)
    /* 9BD68 800AD558 0B00A004 */  bltz       $a1, .L800AD588
    /* 9BD6C 800AD55C 040024A6 */   sh        $a0, 0x4($s1)
    /* 9BD70 800AD560 21206000 */  addu       $a0, $v1, $zero
    /* 9BD74 800AD564 0C80023C */  lui        $v0, %hi(D_800BF246)
    /* 9BD78 800AD568 46F24284 */  lh         $v0, %lo(D_800BF246)($v0)
    /* 9BD7C 800AD56C 0C80033C */  lui        $v1, %hi(D_800BF246)
    /* 9BD80 800AD570 46F26394 */  lhu        $v1, %lo(D_800BF246)($v1)
    /* 9BD84 800AD574 2A104500 */  slt        $v0, $v0, $a1
    /* 9BD88 800AD578 05004010 */  beqz       $v0, .L800AD590
    /* 9BD8C 800AD57C 00140400 */   sll       $v0, $a0, 16
    /* 9BD90 800AD580 63B50208 */  j          .L800AD58C
    /* 9BD94 800AD584 21206000 */   addu      $a0, $v1, $zero
  .L800AD588:
    /* 9BD98 800AD588 21200000 */  addu       $a0, $zero, $zero
  .L800AD58C:
    /* 9BD9C 800AD58C 00140400 */  sll        $v0, $a0, 16
  .L800AD590:
    /* 9BDA0 800AD590 04002386 */  lh         $v1, 0x4($s1)
    /* 9BDA4 800AD594 03140200 */  sra        $v0, $v0, 16
    /* 9BDA8 800AD598 18006200 */  mult       $v1, $v0
    /* 9BDAC 800AD59C 060024A6 */  sh         $a0, 0x6($s1)
    /* 9BDB0 800AD5A0 12300000 */  mflo       $a2
    /* 9BDB4 800AD5A4 0100C324 */  addiu      $v1, $a2, 0x1
    /* 9BDB8 800AD5A8 C2170300 */  srl        $v0, $v1, 31
    /* 9BDBC 800AD5AC 21186200 */  addu       $v1, $v1, $v0
    /* 9BDC0 800AD5B0 43200300 */  sra        $a0, $v1, 1
    /* 9BDC4 800AD5B4 0300801C */  bgtz       $a0, .L800AD5C4
    /* 9BDC8 800AD5B8 43810300 */   sra       $s0, $v1, 5
    /* 9BDCC 800AD5BC D4B50208 */  j          .L800AD750
    /* 9BDD0 800AD5C0 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800AD5C4:
    /* 9BDD4 800AD5C4 21180002 */  addu       $v1, $s0, $zero
    /* 9BDD8 800AD5C8 00110300 */  sll        $v0, $v1, 4
    /* 9BDDC 800AD5CC 23808200 */  subu       $s0, $a0, $v0
    /* 9BDE0 800AD5D0 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9BDE4 800AD5D4 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9BDE8 800AD5D8 21A06000 */  addu       $s4, $v1, $zero
    /* 9BDEC 800AD5DC 0000428C */  lw         $v0, 0x0($v0)
    /* 9BDF0 800AD5E0 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* 9BDF4 800AD5E4 24104300 */  and        $v0, $v0, $v1
    /* 9BDF8 800AD5E8 0E004014 */  bnez       $v0, .L800AD624
    /* 9BDFC 800AD5EC 00000000 */   nop
    /* 9BE00 800AD5F0 0004133C */  lui        $s3, (0x4000000 >> 16)
  .L800AD5F4:
    /* 9BE04 800AD5F4 15B8020C */  jal        func_800AE054
    /* 9BE08 800AD5F8 00000000 */   nop
    /* 9BE0C 800AD5FC 54004014 */  bnez       $v0, .L800AD750
    /* 9BE10 800AD600 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 9BE14 800AD604 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9BE18 800AD608 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9BE1C 800AD60C 00000000 */  nop
    /* 9BE20 800AD610 0000428C */  lw         $v0, 0x0($v0)
    /* 9BE24 800AD614 00000000 */  nop
    /* 9BE28 800AD618 24105300 */  and        $v0, $v0, $s3
    /* 9BE2C 800AD61C F5FF4010 */  beqz       $v0, .L800AD5F4
    /* 9BE30 800AD620 00000000 */   nop
  .L800AD624:
    /* 9BE34 800AD624 0C80033C */  lui        $v1, %hi(D_800BF348)
    /* 9BE38 800AD628 48F3638C */  lw         $v1, %lo(D_800BF348)($v1)
    /* 9BE3C 800AD62C 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* 9BE40 800AD630 000062AC */  sw         $v0, 0x0($v1)
    /* 9BE44 800AD634 0C80033C */  lui        $v1, %hi(D_800BF344)
    /* 9BE48 800AD638 44F3638C */  lw         $v1, %lo(D_800BF344)($v1)
    /* 9BE4C 800AD63C 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* 9BE50 800AD640 000062AC */  sw         $v0, 0x0($v1)
    /* 9BE54 800AD644 0C80033C */  lui        $v1, %hi(D_800BF344)
    /* 9BE58 800AD648 44F3638C */  lw         $v1, %lo(D_800BF344)($v1)
    /* 9BE5C 800AD64C 00C0023C */  lui        $v0, (0xC0000000 >> 16)
    /* 9BE60 800AD650 000062AC */  sw         $v0, 0x0($v1)
    /* 9BE64 800AD654 0C80033C */  lui        $v1, %hi(D_800BF344)
    /* 9BE68 800AD658 44F3638C */  lw         $v1, %lo(D_800BF344)($v1)
    /* 9BE6C 800AD65C 0000228E */  lw         $v0, 0x0($s1)
    /* 9BE70 800AD660 00000000 */  nop
    /* 9BE74 800AD664 000062AC */  sw         $v0, 0x0($v1)
    /* 9BE78 800AD668 0C80033C */  lui        $v1, %hi(D_800BF344)
    /* 9BE7C 800AD66C 44F3638C */  lw         $v1, %lo(D_800BF344)($v1)
    /* 9BE80 800AD670 0400228E */  lw         $v0, 0x4($s1)
    /* 9BE84 800AD674 00000000 */  nop
    /* 9BE88 800AD678 000062AC */  sw         $v0, 0x0($v1)
    /* 9BE8C 800AD67C 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9BE90 800AD680 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9BE94 800AD684 00000000 */  nop
    /* 9BE98 800AD688 0000428C */  lw         $v0, 0x0($v0)
    /* 9BE9C 800AD68C 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 9BEA0 800AD690 24104300 */  and        $v0, $v0, $v1
    /* 9BEA4 800AD694 0E004014 */  bnez       $v0, .L800AD6D0
    /* 9BEA8 800AD698 00000000 */   nop
    /* 9BEAC 800AD69C 0008113C */  lui        $s1, (0x8000000 >> 16)
  .L800AD6A0:
    /* 9BEB0 800AD6A0 15B8020C */  jal        func_800AE054
    /* 9BEB4 800AD6A4 00000000 */   nop
    /* 9BEB8 800AD6A8 29004014 */  bnez       $v0, .L800AD750
    /* 9BEBC 800AD6AC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 9BEC0 800AD6B0 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9BEC4 800AD6B4 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9BEC8 800AD6B8 00000000 */  nop
    /* 9BECC 800AD6BC 0000428C */  lw         $v0, 0x0($v0)
    /* 9BED0 800AD6C0 00000000 */  nop
    /* 9BED4 800AD6C4 24105100 */  and        $v0, $v0, $s1
    /* 9BED8 800AD6C8 F5FF4010 */  beqz       $v0, .L800AD6A0
    /* 9BEDC 800AD6CC 00000000 */   nop
  .L800AD6D0:
    /* 9BEE0 800AD6D0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 9BEE4 800AD6D4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 9BEE8 800AD6D8 09000212 */  beq        $s0, $v0, .L800AD700
    /* 9BEEC 800AD6DC FFFF0324 */   addiu     $v1, $zero, -0x1
  .L800AD6E0:
    /* 9BEF0 800AD6E0 0C80023C */  lui        $v0, %hi(D_800BF344)
    /* 9BEF4 800AD6E4 44F3428C */  lw         $v0, %lo(D_800BF344)($v0)
    /* 9BEF8 800AD6E8 00000000 */  nop
    /* 9BEFC 800AD6EC 0000428C */  lw         $v0, 0x0($v0)
    /* 9BF00 800AD6F0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 9BF04 800AD6F4 000042AE */  sw         $v0, 0x0($s2)
    /* 9BF08 800AD6F8 F9FF0316 */  bne        $s0, $v1, .L800AD6E0
    /* 9BF0C 800AD6FC 04005226 */   addiu     $s2, $s2, 0x4
  .L800AD700:
    /* 9BF10 800AD700 12008012 */  beqz       $s4, .L800AD74C
    /* 9BF14 800AD704 0004033C */   lui       $v1, (0x4000003 >> 16)
    /* 9BF18 800AD708 0C80023C */  lui        $v0, %hi(D_800BF348)
    /* 9BF1C 800AD70C 48F3428C */  lw         $v0, %lo(D_800BF348)($v0)
    /* 9BF20 800AD710 03006334 */  ori        $v1, $v1, (0x4000003 & 0xFFFF)
    /* 9BF24 800AD714 000043AC */  sw         $v1, 0x0($v0)
    /* 9BF28 800AD718 0C80023C */  lui        $v0, %hi(D_800BF34C)
    /* 9BF2C 800AD71C 4CF3428C */  lw         $v0, %lo(D_800BF34C)($v0)
    /* 9BF30 800AD720 0001043C */  lui        $a0, (0x1000200 >> 16)
    /* 9BF34 800AD724 000052AC */  sw         $s2, 0x0($v0)
    /* 9BF38 800AD728 00141400 */  sll        $v0, $s4, 16
    /* 9BF3C 800AD72C 0C80033C */  lui        $v1, %hi(D_800BF350)
    /* 9BF40 800AD730 50F3638C */  lw         $v1, %lo(D_800BF350)($v1)
    /* 9BF44 800AD734 10004234 */  ori        $v0, $v0, 0x10
    /* 9BF48 800AD738 000062AC */  sw         $v0, 0x0($v1)
    /* 9BF4C 800AD73C 0C80023C */  lui        $v0, %hi(D_800BF354)
    /* 9BF50 800AD740 54F3428C */  lw         $v0, %lo(D_800BF354)($v0)
    /* 9BF54 800AD744 00028434 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
    /* 9BF58 800AD748 000044AC */  sw         $a0, 0x0($v0)
  .L800AD74C:
    /* 9BF5C 800AD74C 21100000 */  addu       $v0, $zero, $zero
  .L800AD750:
    /* 9BF60 800AD750 2400BF8F */  lw         $ra, 0x24($sp)
    /* 9BF64 800AD754 2000B48F */  lw         $s4, 0x20($sp)
    /* 9BF68 800AD758 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9BF6C 800AD75C 1800B28F */  lw         $s2, 0x18($sp)
    /* 9BF70 800AD760 1400B18F */  lw         $s1, 0x14($sp)
    /* 9BF74 800AD764 1000B08F */  lw         $s0, 0x10($sp)
    /* 9BF78 800AD768 0800E003 */  jr         $ra
    /* 9BF7C 800AD76C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AD4F0
