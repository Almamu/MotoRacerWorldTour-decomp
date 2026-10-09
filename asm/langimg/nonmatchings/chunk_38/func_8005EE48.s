nonmatching func_8005EE48, 0x28C

glabel func_8005EE48
    /* 4D658 8005EE48 30FFBD27 */  addiu      $sp, $sp, -0xD0
    /* 4D65C 8005EE4C 4000A427 */  addiu      $a0, $sp, 0x40
    /* 4D660 8005EE50 C800B6AF */  sw         $s6, 0xC8($sp)
    /* 4D664 8005EE54 21B0A000 */  addu       $s6, $a1, $zero
    /* 4D668 8005EE58 CC00BFAF */  sw         $ra, 0xCC($sp)
    /* 4D66C 8005EE5C C400B5AF */  sw         $s5, 0xC4($sp)
    /* 4D670 8005EE60 C000B4AF */  sw         $s4, 0xC0($sp)
    /* 4D674 8005EE64 BC00B3AF */  sw         $s3, 0xBC($sp)
    /* 4D678 8005EE68 B800B2AF */  sw         $s2, 0xB8($sp)
    /* 4D67C 8005EE6C B400B1AF */  sw         $s1, 0xB4($sp)
    /* 4D680 8005EE70 B000B0AF */  sw         $s0, 0xB0($sp)
    /* 4D684 8005EE74 3000D18E */  lw         $s1, 0x30($s6)
    /* 4D688 8005EE78 00000000 */  nop
    /* 4D68C 8005EE7C 3402288E */  lw         $t0, 0x234($s1)
    /* 4D690 8005EE80 3802298E */  lw         $t1, 0x238($s1)
    /* 4D694 8005EE84 3C022A8E */  lw         $t2, 0x23C($s1)
    /* 4D698 8005EE88 4000A8AF */  sw         $t0, 0x40($sp)
    /* 4D69C 8005EE8C 4400A9AF */  sw         $t1, 0x44($sp)
    /* 4D6A0 8005EE90 4800AAAF */  sw         $t2, 0x48($sp)
    /* 4D6A4 8005EE94 5267020C */  jal        func_80099D48
    /* 4D6A8 8005EE98 05000524 */   addiu     $a1, $zero, 0x5
    /* 4D6AC 8005EE9C 5000A427 */  addiu      $a0, $sp, 0x50
    /* 4D6B0 8005EEA0 4002288E */  lw         $t0, 0x240($s1)
    /* 4D6B4 8005EEA4 4402298E */  lw         $t1, 0x244($s1)
    /* 4D6B8 8005EEA8 48022A8E */  lw         $t2, 0x248($s1)
    /* 4D6BC 8005EEAC 5000A8AF */  sw         $t0, 0x50($sp)
    /* 4D6C0 8005EEB0 5400A9AF */  sw         $t1, 0x54($sp)
    /* 4D6C4 8005EEB4 5800AAAF */  sw         $t2, 0x58($sp)
    /* 4D6C8 8005EEB8 5267020C */  jal        func_80099D48
    /* 4D6CC 8005EEBC 05000524 */   addiu     $a1, $zero, 0x5
    /* 4D6D0 8005EEC0 2402238E */  lw         $v1, 0x224($s1)
    /* 4D6D4 8005EEC4 00000000 */  nop
    /* 4D6D8 8005EEC8 77006010 */  beqz       $v1, .L8005F0A8
    /* 4D6DC 8005EECC 21A80000 */   addu      $s5, $zero, $zero
    /* 4D6E0 8005EED0 2802228E */  lw         $v0, 0x228($s1)
    /* 4D6E4 8005EED4 00000000 */  nop
    /* 4D6E8 8005EED8 73004010 */  beqz       $v0, .L8005F0A8
    /* 4D6EC 8005EEDC 21A00000 */   addu      $s4, $zero, $zero
    /* 4D6F0 8005EEE0 4000B327 */  addiu      $s3, $sp, 0x40
  .L8005EEE4:
    /* 4D6F4 8005EEE4 4000A28F */  lw         $v0, 0x40($sp)
    /* 4D6F8 8005EEE8 0400638E */  lw         $v1, 0x4($s3)
    /* 4D6FC 8005EEEC 0800658E */  lw         $a1, 0x8($s3)
    /* 4D700 8005EEF0 8000A2AF */  sw         $v0, 0x80($sp)
    /* 4D704 8005EEF4 8400A3AF */  sw         $v1, 0x84($sp)
    /* 4D708 8005EEF8 8800A5AF */  sw         $a1, 0x88($sp)
    /* 4D70C 8005EEFC 2402248E */  lw         $a0, 0x224($s1)
    /* 4D710 8005EF00 D46C000C */  jal        func_8001B350
    /* 4D714 8005EF04 8000A527 */   addiu     $a1, $sp, 0x80
    /* 4D718 8005EF08 21904000 */  addu       $s2, $v0, $zero
    /* 4D71C 8005EF0C 08004006 */  bltz       $s2, .L8005EF30
    /* 4D720 8005EF10 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 4D724 8005EF14 6000A527 */  addiu      $a1, $sp, 0x60
    /* 4D728 8005EF18 2402228E */  lw         $v0, 0x224($s1)
    /* 4D72C 8005EF1C 80201200 */  sll        $a0, $s2, 2
    /* 4D730 8005EF20 0000438C */  lw         $v1, 0x0($v0)
    /* 4D734 8005EF24 1C008424 */  addiu      $a0, $a0, 0x1C
    /* 4D738 8005EF28 8A5B020C */  jal        func_80096E28
    /* 4D73C 8005EF2C 21206400 */   addu      $a0, $v1, $a0
  .L8005EF30:
    /* 4D740 8005EF30 5000A28F */  lw         $v0, 0x50($sp)
    /* 4D744 8005EF34 5400A38F */  lw         $v1, 0x54($sp)
    /* 4D748 8005EF38 5800A58F */  lw         $a1, 0x58($sp)
    /* 4D74C 8005EF3C 9000A2AF */  sw         $v0, 0x90($sp)
    /* 4D750 8005EF40 9400A3AF */  sw         $v1, 0x94($sp)
    /* 4D754 8005EF44 9800A5AF */  sw         $a1, 0x98($sp)
    /* 4D758 8005EF48 2802248E */  lw         $a0, 0x228($s1)
    /* 4D75C 8005EF4C D46C000C */  jal        func_8001B350
    /* 4D760 8005EF50 9000A527 */   addiu     $a1, $sp, 0x90
    /* 4D764 8005EF54 21804000 */  addu       $s0, $v0, $zero
    /* 4D768 8005EF58 08000006 */  bltz       $s0, .L8005EF7C
    /* 4D76C 8005EF5C 7000A527 */   addiu     $a1, $sp, 0x70
    /* 4D770 8005EF60 1A000624 */  addiu      $a2, $zero, 0x1A
    /* 4D774 8005EF64 2802228E */  lw         $v0, 0x228($s1)
    /* 4D778 8005EF68 80201000 */  sll        $a0, $s0, 2
    /* 4D77C 8005EF6C 0000438C */  lw         $v1, 0x0($v0)
    /* 4D780 8005EF70 1C008424 */  addiu      $a0, $a0, 0x1C
    /* 4D784 8005EF74 8A5B020C */  jal        func_80096E28
    /* 4D788 8005EF78 21206400 */   addu      $a0, $v1, $a0
  .L8005EF7C:
    /* 4D78C 8005EF7C 03004106 */  bgez       $s2, .L8005EF8C
    /* 4D790 8005EF80 00000000 */   nop
    /* 4D794 8005EF84 49000006 */  bltz       $s0, .L8005F0AC
    /* 4D798 8005EF88 2110A002 */   addu      $v0, $s5, $zero
  .L8005EF8C:
    /* 4D79C 8005EF8C 61002282 */  lb         $v0, 0x61($s1)
    /* 4D7A0 8005EF90 00000000 */  nop
    /* 4D7A4 8005EF94 44004014 */  bnez       $v0, .L8005F0A8
    /* 4D7A8 8005EF98 01001524 */   addiu     $s5, $zero, 0x1
    /* 4D7AC 8005EF9C 21202002 */  addu       $a0, $s1, $zero
    /* 4D7B0 8005EFA0 27281200 */  nor        $a1, $zero, $s2
    /* 4D7B4 8005EFA4 C22F0500 */  srl        $a1, $a1, 31
    /* 4D7B8 8005EFA8 27301000 */  nor        $a2, $zero, $s0
    /* 4D7BC 8005EFAC 6000A88F */  lw         $t0, 0x60($sp)
    /* 4D7C0 8005EFB0 6400A98F */  lw         $t1, 0x64($sp)
    /* 4D7C4 8005EFB4 6800AA8F */  lw         $t2, 0x68($sp)
    /* 4D7C8 8005EFB8 A000A8AF */  sw         $t0, 0xA0($sp)
    /* 4D7CC 8005EFBC A400A9AF */  sw         $t1, 0xA4($sp)
    /* 4D7D0 8005EFC0 A800AAAF */  sw         $t2, 0xA8($sp)
    /* 4D7D4 8005EFC4 7000A88F */  lw         $t0, 0x70($sp)
    /* 4D7D8 8005EFC8 7400A98F */  lw         $t1, 0x74($sp)
    /* 4D7DC 8005EFCC 7800AA8F */  lw         $t2, 0x78($sp)
    /* 4D7E0 8005EFD0 1800A8AF */  sw         $t0, 0x18($sp)
    /* 4D7E4 8005EFD4 1C00A9AF */  sw         $t1, 0x1C($sp)
    /* 4D7E8 8005EFD8 2000AAAF */  sw         $t2, 0x20($sp)
    /* 4D7EC 8005EFDC 8000A88F */  lw         $t0, 0x80($sp)
    /* 4D7F0 8005EFE0 8400A98F */  lw         $t1, 0x84($sp)
    /* 4D7F4 8005EFE4 8800AA8F */  lw         $t2, 0x88($sp)
    /* 4D7F8 8005EFE8 2400A8AF */  sw         $t0, 0x24($sp)
    /* 4D7FC 8005EFEC 2800A9AF */  sw         $t1, 0x28($sp)
    /* 4D800 8005EFF0 2C00AAAF */  sw         $t2, 0x2C($sp)
    /* 4D804 8005EFF4 9000A88F */  lw         $t0, 0x90($sp)
    /* 4D808 8005EFF8 9400A98F */  lw         $t1, 0x94($sp)
    /* 4D80C 8005EFFC 9800AA8F */  lw         $t2, 0x98($sp)
    /* 4D810 8005F000 3000A8AF */  sw         $t0, 0x30($sp)
    /* 4D814 8005F004 3400A9AF */  sw         $t1, 0x34($sp)
    /* 4D818 8005F008 3800AAAF */  sw         $t2, 0x38($sp)
    /* 4D81C 8005F00C A000A78F */  lw         $a3, 0xA0($sp)
    /* 4D820 8005F010 33030224 */  addiu      $v0, $zero, 0x333
    /* 4D824 8005F014 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 4D828 8005F018 A400A88F */  lw         $t0, 0xA4($sp)
    /* 4D82C 8005F01C A800A98F */  lw         $t1, 0xA8($sp)
    /* 4D830 8005F020 1000A8AF */  sw         $t0, 0x10($sp)
    /* 4D834 8005F024 1400A9AF */  sw         $t1, 0x14($sp)
    /* 4D838 8005F028 8595000C */  jal        func_80025614
    /* 4D83C 8005F02C C2370600 */   srl       $a2, $a2, 31
    /* 4D840 8005F030 8801C382 */  lb         $v1, 0x188($s6)
    /* 4D844 8005F034 00000000 */  nop
    /* 4D848 8005F038 1B006014 */  bnez       $v1, .L8005F0A8
    /* 4D84C 8005F03C 00000000 */   nop
    /* 4D850 8005F040 1A004010 */  beqz       $v0, .L8005F0AC
    /* 4D854 8005F044 2110A002 */   addu      $v0, $s5, $zero
    /* 4D858 8005F048 18008016 */  bnez       $s4, .L8005F0AC
    /* 4D85C 8005F04C 01001424 */   addiu     $s4, $zero, 0x1
    /* 4D860 8005F050 21206002 */  addu       $a0, $s3, $zero
    /* 4D864 8005F054 34022226 */  addiu      $v0, $s1, 0x234
    /* 4D868 8005F058 3402238E */  lw         $v1, 0x234($s1)
    /* 4D86C 8005F05C 0400468C */  lw         $a2, 0x4($v0)
    /* 4D870 8005F060 0800478C */  lw         $a3, 0x8($v0)
    /* 4D874 8005F064 05000524 */  addiu      $a1, $zero, 0x5
    /* 4D878 8005F068 4000A3AF */  sw         $v1, 0x40($sp)
    /* 4D87C 8005F06C 040066AE */  sw         $a2, 0x4($s3)
    /* 4D880 8005F070 5267020C */  jal        func_80099D48
    /* 4D884 8005F074 080067AE */   sw        $a3, 0x8($s3)
    /* 4D888 8005F078 5000A427 */  addiu      $a0, $sp, 0x50
    /* 4D88C 8005F07C 40022226 */  addiu      $v0, $s1, 0x240
    /* 4D890 8005F080 4002238E */  lw         $v1, 0x240($s1)
    /* 4D894 8005F084 0400468C */  lw         $a2, 0x4($v0)
    /* 4D898 8005F088 0800478C */  lw         $a3, 0x8($v0)
    /* 4D89C 8005F08C 05000524 */  addiu      $a1, $zero, 0x5
    /* 4D8A0 8005F090 5000A3AF */  sw         $v1, 0x50($sp)
    /* 4D8A4 8005F094 5400A6AF */  sw         $a2, 0x54($sp)
    /* 4D8A8 8005F098 5267020C */  jal        func_80099D48
    /* 4D8AC 8005F09C 5800A7AF */   sw        $a3, 0x58($sp)
    /* 4D8B0 8005F0A0 B97B0108 */  j          .L8005EEE4
    /* 4D8B4 8005F0A4 4000B327 */   addiu     $s3, $sp, 0x40
  .L8005F0A8:
    /* 4D8B8 8005F0A8 2110A002 */  addu       $v0, $s5, $zero
  .L8005F0AC:
    /* 4D8BC 8005F0AC CC00BF8F */  lw         $ra, 0xCC($sp)
    /* 4D8C0 8005F0B0 C800B68F */  lw         $s6, 0xC8($sp)
    /* 4D8C4 8005F0B4 C400B58F */  lw         $s5, 0xC4($sp)
    /* 4D8C8 8005F0B8 C000B48F */  lw         $s4, 0xC0($sp)
    /* 4D8CC 8005F0BC BC00B38F */  lw         $s3, 0xBC($sp)
    /* 4D8D0 8005F0C0 B800B28F */  lw         $s2, 0xB8($sp)
    /* 4D8D4 8005F0C4 B400B18F */  lw         $s1, 0xB4($sp)
    /* 4D8D8 8005F0C8 B000B08F */  lw         $s0, 0xB0($sp)
    /* 4D8DC 8005F0CC 0800E003 */  jr         $ra
    /* 4D8E0 8005F0D0 D000BD27 */   addiu     $sp, $sp, 0xD0
endlabel func_8005EE48
