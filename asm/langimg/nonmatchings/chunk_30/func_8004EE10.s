nonmatching func_8004EE10, 0x2B4

glabel func_8004EE10
    /* 3D620 8004EE10 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* 3D624 8004EE14 7000B2AF */  sw         $s2, 0x70($sp)
    /* 3D628 8004EE18 21908000 */  addu       $s2, $a0, $zero
    /* 3D62C 8004EE1C 21104502 */  addu       $v0, $s2, $a1
    /* 3D630 8004EE20 7400BFAF */  sw         $ra, 0x74($sp)
    /* 3D634 8004EE24 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 3D638 8004EE28 6800B0AF */  sw         $s0, 0x68($sp)
    /* 3D63C 8004EE2C 70044380 */  lb         $v1, 0x470($v0)
    /* 3D640 8004EE30 7803468E */  lw         $a2, 0x378($s2)
    /* 3D644 8004EE34 21380000 */  addu       $a3, $zero, $zero
    /* 3D648 8004EE38 2118C300 */  addu       $v1, $a2, $v1
    /* 3D64C 8004EE3C 241E6380 */  lb         $v1, 0x1E24($v1)
    /* 3D650 8004EE40 00000000 */  nop
    /* 3D654 8004EE44 0C006004 */  bltz       $v1, .L8004EE78
    /* 3D658 8004EE48 21200000 */   addu      $a0, $zero, $zero
    /* 3D65C 8004EE4C 40100300 */  sll        $v0, $v1, 1
    /* 3D660 8004EE50 21104300 */  addu       $v0, $v0, $v1
    /* 3D664 8004EE54 80100200 */  sll        $v0, $v0, 2
    /* 3D668 8004EE58 23104300 */  subu       $v0, $v0, $v1
    /* 3D66C 8004EE5C 80100200 */  sll        $v0, $v0, 2
    /* 3D670 8004EE60 23104300 */  subu       $v0, $v0, $v1
    /* 3D674 8004EE64 80100200 */  sll        $v0, $v0, 2
    /* 3D678 8004EE68 21104300 */  addu       $v0, $v0, $v1
    /* 3D67C 8004EE6C C0100200 */  sll        $v0, $v0, 3
    /* 3D680 8004EE70 E8024224 */  addiu      $v0, $v0, 0x2E8
    /* 3D684 8004EE74 2120C200 */  addu       $a0, $a2, $v0
  .L8004EE78:
    /* 3D688 8004EE78 07008010 */  beqz       $a0, .L8004EE98
    /* 3D68C 8004EE7C 42000324 */   addiu     $v1, $zero, 0x42
    /* 3D690 8004EE80 0000828C */  lw         $v0, 0x0($a0)
    /* 3D694 8004EE84 00000000 */  nop
    /* 3D698 8004EE88 7E004230 */  andi       $v0, $v0, 0x7E
    /* 3D69C 8004EE8C 02004314 */  bne        $v0, $v1, .L8004EE98
    /* 3D6A0 8004EE90 00000000 */   nop
    /* 3D6A4 8004EE94 3000878C */  lw         $a3, 0x30($a0)
  .L8004EE98:
    /* 3D6A8 8004EE98 00000000 */  nop
    /* 3D6AC 8004EE9C 8300E010 */  beqz       $a3, .L8004F0AC
    /* 3D6B0 8004EEA0 00000000 */   nop
    /* 3D6B4 8004EEA4 5C04518E */  lw         $s1, 0x45C($s2)
    /* 3D6B8 8004EEA8 00000000 */  nop
    /* 3D6BC 8004EEAC 7F002012 */  beqz       $s1, .L8004F0AC
    /* 3D6C0 8004EEB0 80100500 */   sll       $v0, $a1, 2
    /* 3D6C4 8004EEB4 21104202 */  addu       $v0, $s2, $v0
    /* 3D6C8 8004EEB8 1800A327 */  addiu      $v1, $sp, 0x18
    /* 3D6CC 8004EEBC 6C002886 */  lh         $t0, 0x6C($s1)
    /* 3D6D0 8004EEC0 6A002786 */  lh         $a3, 0x6A($s1)
    /* 3D6D4 8004EEC4 0C80093C */  lui        $t1, %hi(D_800BF3A0)
    /* 3D6D8 8004EEC8 0C002B8E */  lw         $t3, 0xC($s1)
    /* 3D6DC 8004EECC 10002C8E */  lw         $t4, 0x10($s1)
    /* 3D6E0 8004EED0 14002D8E */  lw         $t5, 0x14($s1)
    /* 3D6E4 8004EED4 1800ABAF */  sw         $t3, 0x18($sp)
    /* 3D6E8 8004EED8 1C00ACAF */  sw         $t4, 0x1C($sp)
    /* 3D6EC 8004EEDC 2000ADAF */  sw         $t5, 0x20($sp)
    /* 3D6F0 8004EEE0 3C04508C */  lw         $s0, 0x43C($v0)
    /* 3D6F4 8004EEE4 1800A48F */  lw         $a0, 0x18($sp)
    /* 3D6F8 8004EEE8 0400658C */  lw         $a1, 0x4($v1)
    /* 3D6FC 8004EEEC 0800668C */  lw         $a2, 0x8($v1)
    /* 3D700 8004EEF0 F8000226 */  addiu      $v0, $s0, 0xF8
    /* 3D704 8004EEF4 F80004AE */  sw         $a0, 0xF8($s0)
    /* 3D708 8004EEF8 040045AC */  sw         $a1, 0x4($v0)
    /* 3D70C 8004EEFC 080046AC */  sw         $a2, 0x8($v0)
    /* 3D710 8004EF00 68002486 */  lh         $a0, 0x68($s1)
    /* 3D714 8004EF04 2338E800 */  subu       $a3, $a3, $t0
    /* 3D718 8004EF08 1800A0A7 */  sh         $zero, 0x18($sp)
    /* 3D71C 8004EF0C 040060A4 */  sh         $zero, 0x4($v1)
    /* 3D720 8004EF10 020064A4 */  sh         $a0, 0x2($v1)
    /* 3D724 8004EF14 1A00A287 */  lh         $v0, 0x1A($sp)
    /* 3D728 8004EF18 A0F32325 */  addiu      $v1, $t1, %lo(D_800BF3A0)
    /* 3D72C 8004EF1C FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 3D730 8004EF20 80100200 */  sll        $v0, $v0, 2
    /* 3D734 8004EF24 21206200 */  addu       $a0, $v1, $v0
    /* 3D738 8004EF28 21104300 */  addu       $v0, $v0, $v1
    /* 3D73C 8004EF2C 02008684 */  lh         $a2, 0x2($a0)
    /* 3D740 8004EF30 00004584 */  lh         $a1, 0x0($v0)
    /* 3D744 8004EF34 00100324 */  addiu      $v1, $zero, 0x1000
    /* 3D748 8004EF38 080003A6 */  sh         $v1, 0x8($s0)
    /* 3D74C 8004EF3C 060000A6 */  sh         $zero, 0x6($s0)
    /* 3D750 8004EF40 020000A6 */  sh         $zero, 0x2($s0)
    /* 3D754 8004EF44 0E0000A6 */  sh         $zero, 0xE($s0)
    /* 3D758 8004EF48 0A0000A6 */  sh         $zero, 0xA($s0)
    /* 3D75C 8004EF4C 040005A6 */  sh         $a1, 0x4($s0)
    /* 3D760 8004EF50 23280500 */  negu       $a1, $a1
    /* 3D764 8004EF54 100006A6 */  sh         $a2, 0x10($s0)
    /* 3D768 8004EF58 000006A6 */  sh         $a2, 0x0($s0)
    /* 3D76C 8004EF5C 0400E014 */  bnez       $a3, .L8004EF70
    /* 3D770 8004EF60 0C0005A6 */   sh        $a1, 0xC($s0)
    /* 3D774 8004EF64 74002286 */  lh         $v0, 0x74($s1)
    /* 3D778 8004EF68 EA3B0108 */  j          .L8004EFA8
    /* 3D77C 8004EF6C 2800AA27 */   addiu     $t2, $sp, 0x28
  .L8004EF70:
    /* 3D780 8004EF70 74002286 */  lh         $v0, 0x74($s1)
    /* 3D784 8004EF74 72002486 */  lh         $a0, 0x72($s1)
    /* 3D788 8004EF78 1A00A387 */  lh         $v1, 0x1A($sp)
    /* 3D78C 8004EF7C 23104400 */  subu       $v0, $v0, $a0
    /* 3D790 8004EF80 23186800 */  subu       $v1, $v1, $t0
    /* 3D794 8004EF84 18004300 */  mult       $v0, $v1
    /* 3D798 8004EF88 12100000 */  mflo       $v0
    /* 3D79C 8004EF8C 00000000 */  nop
    /* 3D7A0 8004EF90 00000000 */  nop
    /* 3D7A4 8004EF94 1A004700 */  div        $zero, $v0, $a3
    /* 3D7A8 8004EF98 12100000 */  mflo       $v0
    /* 3D7AC 8004EF9C 00000000 */  nop
    /* 3D7B0 8004EFA0 21104400 */  addu       $v0, $v0, $a0
    /* 3D7B4 8004EFA4 2800AA27 */  addiu      $t2, $sp, 0x28
  .L8004EFA8:
    /* 3D7B8 8004EFA8 21204001 */  addu       $a0, $t2, $zero
    /* 3D7BC 8004EFAC 21280002 */  addu       $a1, $s0, $zero
    /* 3D7C0 8004EFB0 4800A627 */  addiu      $a2, $sp, 0x48
    /* 3D7C4 8004EFB4 A0F32325 */  addiu      $v1, $t1, %lo(D_800BF3A0)
    /* 3D7C8 8004EFB8 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 3D7CC 8004EFBC 80100200 */  sll        $v0, $v0, 2
    /* 3D7D0 8004EFC0 21386200 */  addu       $a3, $v1, $v0
    /* 3D7D4 8004EFC4 21104300 */  addu       $v0, $v0, $v1
    /* 3D7D8 8004EFC8 0200E884 */  lh         $t0, 0x2($a3)
    /* 3D7DC 8004EFCC 00004984 */  lh         $t1, 0x0($v0)
    /* 3D7E0 8004EFD0 00100324 */  addiu      $v1, $zero, 0x1000
    /* 3D7E4 8004EFD4 100043A5 */  sh         $v1, 0x10($t2)
    /* 3D7E8 8004EFD8 3400A0A7 */  sh         $zero, 0x34($sp)
    /* 3D7EC 8004EFDC 2C00A0A7 */  sh         $zero, 0x2C($sp)
    /* 3D7F0 8004EFE0 3600A0A7 */  sh         $zero, 0x36($sp)
    /* 3D7F4 8004EFE4 3200A0A7 */  sh         $zero, 0x32($sp)
    /* 3D7F8 8004EFE8 23100900 */  negu       $v0, $t1
    /* 3D7FC 8004EFEC 3000A8A7 */  sh         $t0, 0x30($sp)
    /* 3D800 8004EFF0 2800A8A7 */  sh         $t0, 0x28($sp)
    /* 3D804 8004EFF4 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* 3D808 8004EFF8 9D61020C */  jal        func_80098674
    /* 3D80C 8004EFFC 2E00A9A7 */   sh        $t1, 0x2E($sp)
    /* 3D810 8004F000 14000426 */  addiu      $a0, $s0, 0x14
    /* 3D814 8004F004 1F62020C */  jal        func_8009887C
    /* 3D818 8004F008 5C00A527 */   addiu     $a1, $sp, 0x5C
    /* 3D81C 8004F00C 5C00A427 */  addiu      $a0, $sp, 0x5C
    /* 3D820 8004F010 F465020C */  jal        func_800997D0
    /* 3D824 8004F014 3C00A527 */   addiu     $a1, $sp, 0x3C
    /* 3D828 8004F018 4800AB8F */  lw         $t3, 0x48($sp)
    /* 3D82C 8004F01C 4C00AC8F */  lw         $t4, 0x4C($sp)
    /* 3D830 8004F020 5000AD8F */  lw         $t5, 0x50($sp)
    /* 3D834 8004F024 5400AE8F */  lw         $t6, 0x54($sp)
    /* 3D838 8004F028 00000BAE */  sw         $t3, 0x0($s0)
    /* 3D83C 8004F02C 04000CAE */  sw         $t4, 0x4($s0)
    /* 3D840 8004F030 08000DAE */  sw         $t5, 0x8($s0)
    /* 3D844 8004F034 0C000EAE */  sw         $t6, 0xC($s0)
    /* 3D848 8004F038 5800AB8F */  lw         $t3, 0x58($sp)
    /* 3D84C 8004F03C 5C00AC8F */  lw         $t4, 0x5C($sp)
    /* 3D850 8004F040 6000AD8F */  lw         $t5, 0x60($sp)
    /* 3D854 8004F044 6400AE8F */  lw         $t6, 0x64($sp)
    /* 3D858 8004F048 10000BAE */  sw         $t3, 0x10($s0)
    /* 3D85C 8004F04C 14000CAE */  sw         $t4, 0x14($s0)
    /* 3D860 8004F050 18000DAE */  sw         $t5, 0x18($s0)
    /* 3D864 8004F054 1C000EAE */  sw         $t6, 0x1C($s0)
    /* 3D868 8004F058 6E003086 */  lh         $s0, 0x6E($s1)
    /* 3D86C 8004F05C 00000000 */  nop
    /* 3D870 8004F060 6400022A */  slti       $v0, $s0, 0x64
    /* 3D874 8004F064 02004010 */  beqz       $v0, .L8004F070
    /* 3D878 8004F068 00000000 */   nop
    /* 3D87C 8004F06C 64001024 */  addiu      $s0, $zero, 0x64
  .L8004F070:
    /* 3D880 8004F070 0D80043C */  lui        $a0, %hi(D_800CA7D8)
    /* 3D884 8004F074 D8A78424 */  addiu      $a0, $a0, %lo(D_800CA7D8)
    /* 3D888 8004F078 21300002 */  addu       $a2, $s0, $zero
    /* 3D88C 8004F07C 0D80053C */  lui        $a1, %hi(D_800CA934)
    /* 3D890 8004F080 34A9A58C */  lw         $a1, %lo(D_800CA934)($a1)
    /* 3D894 8004F084 00080724 */  addiu      $a3, $zero, 0x800
    /* 3D898 8004F088 8F74000C */  jal        func_8001D23C
    /* 3D89C 8004F08C 1000A0AF */   sw        $zero, 0x10($sp)
    /* 3D8A0 8004F090 9C044426 */  addiu      $a0, $s2, 0x49C
    /* 3D8A4 8004F094 21300002 */  addu       $a2, $s0, $zero
    /* 3D8A8 8004F098 0D80053C */  lui        $a1, %hi(D_800CA934)
    /* 3D8AC 8004F09C 34A9A58C */  lw         $a1, %lo(D_800CA934)($a1)
    /* 3D8B0 8004F0A0 00080724 */  addiu      $a3, $zero, 0x800
    /* 3D8B4 8004F0A4 8F74000C */  jal        func_8001D23C
    /* 3D8B8 8004F0A8 1000A0AF */   sw        $zero, 0x10($sp)
  .L8004F0AC:
    /* 3D8BC 8004F0AC 7400BF8F */  lw         $ra, 0x74($sp)
    /* 3D8C0 8004F0B0 7000B28F */  lw         $s2, 0x70($sp)
    /* 3D8C4 8004F0B4 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 3D8C8 8004F0B8 6800B08F */  lw         $s0, 0x68($sp)
    /* 3D8CC 8004F0BC 0800E003 */  jr         $ra
    /* 3D8D0 8004F0C0 7800BD27 */   addiu     $sp, $sp, 0x78
endlabel func_8004EE10
