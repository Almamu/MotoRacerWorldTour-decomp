nonmatching func_8005F638, 0x480

glabel func_8005F638
    /* 4DE48 8005F638 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 4DE4C 8005F63C FFFF1924 */  addiu      $t9, $zero, -0x1
    /* 4DE50 8005F640 4400B3AF */  sw         $s3, 0x44($sp)
    /* 4DE54 8005F644 17001324 */  addiu      $s3, $zero, 0x17
    /* 4DE58 8005F648 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 4DE5C 8005F64C 21888000 */  addu       $s1, $a0, $zero
    /* 4DE60 8005F650 AC013826 */  addiu      $t8, $s1, 0x1AC
    /* 4DE64 8005F654 14002F26 */  addiu      $t7, $s1, 0x14
    /* 4DE68 8005F658 5400B7AF */  sw         $s7, 0x54($sp)
    /* 4DE6C 8005F65C 20033726 */  addiu      $s7, $s1, 0x320
    /* 4DE70 8005F660 4800B4AF */  sw         $s4, 0x48($sp)
    /* 4DE74 8005F664 1C033426 */  addiu      $s4, $s1, 0x31C
    /* 4DE78 8005F668 24032E26 */  addiu      $t6, $s1, 0x324
    /* 4DE7C 8005F66C 9E010C24 */  addiu      $t4, $zero, 0x19E
    /* 4DE80 8005F670 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4DE84 8005F674 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 4DE88 8005F678 5800BEAF */  sw         $fp, 0x58($sp)
    /* 4DE8C 8005F67C 5000B6AF */  sw         $s6, 0x50($sp)
    /* 4DE90 8005F680 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 4DE94 8005F684 4000B2AF */  sw         $s2, 0x40($sp)
    /* 4DE98 8005F688 3800B0AF */  sw         $s0, 0x38($sp)
    /* 4DE9C 8005F68C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4DEA0 8005F690 1C00B8AF */  sw         $t8, 0x1C($sp)
    /* 4DEA4 8005F694 0D0022A2 */  sb         $v0, 0xD($s1)
    /* 4DEA8 8005F698 0D801E3C */  lui        $fp, %hi(D_800D6104)
    /* 4DEAC 8005F69C 0461DE8F */  lw         $fp, %lo(D_800D6104)($fp)
    /* 4DEB0 8005F6A0 28032D26 */  addiu      $t5, $s1, 0x328
    /* 4DEB4 8005F6A4 FEFFD827 */  addiu      $t8, $fp, -0x2
    /* 4DEB8 8005F6A8 1400B8AF */  sw         $t8, 0x14($sp)
    /* 4DEBC 8005F6AC F2FFD827 */  addiu      $t8, $fp, -0xE
    /* 4DEC0 8005F6B0 1800B8AF */  sw         $t8, 0x18($sp)
  .L8005F6B4:
    /* 4DEC4 8005F6B4 0000908E */  lw         $s0, 0x0($s4)
    /* 4DEC8 8005F6B8 00911300 */  sll        $s2, $s3, 4
    /* 4DECC 8005F6BC 0900022E */  sltiu      $v0, $s0, 0x9
    /* 4DED0 8005F6C0 C6004010 */  beqz       $v0, .L8005F9DC
    /* 4DED4 8005F6C4 21B04002 */   addu      $s6, $s2, $zero
    /* 4DED8 8005F6C8 40101000 */  sll        $v0, $s0, 1
    /* 4DEDC 8005F6CC 21104C00 */  addu       $v0, $v0, $t4
    /* 4DEE0 8005F6D0 0C80093C */  lui        $t1, %hi(D_800C6FD8)
    /* 4DEE4 8005F6D4 D86F2925 */  addiu      $t1, $t1, %lo(D_800C6FD8)
    /* 4DEE8 8005F6D8 21104900 */  addu       $v0, $v0, $t1
    /* 4DEEC 8005F6DC 00004594 */  lhu        $a1, 0x0($v0)
    /* 4DEF0 8005F6E0 00000000 */  nop
    /* 4DEF4 8005F6E4 1500A014 */  bnez       $a1, .L8005F73C
    /* 4DEF8 8005F6E8 01001524 */   addiu     $s5, $zero, 0x1
    /* 4DEFC 8005F6EC BB000012 */  beqz       $s0, .L8005F9DC
    /* 4DF00 8005F6F0 00000000 */   nop
    /* 4DF04 8005F6F4 0F002282 */  lb         $v0, 0xF($s1)
    /* 4DF08 8005F6F8 00000000 */  nop
    /* 4DF0C 8005F6FC 54004010 */  beqz       $v0, .L8005F850
    /* 4DF10 8005F700 00000000 */   nop
    /* 4DF14 8005F704 0E002282 */  lb         $v0, 0xE($s1)
    /* 4DF18 8005F708 00000000 */  nop
    /* 4DF1C 8005F70C 50004014 */  bnez       $v0, .L8005F850
    /* 4DF20 8005F710 00000000 */   nop
    /* 4DF24 8005F714 06002013 */  beqz       $t9, .L8005F730
    /* 4DF28 8005F718 00000000 */   nop
    /* 4DF2C 8005F71C 1000B88F */  lw         $t8, 0x10($sp)
    /* 4DF30 8005F720 00000000 */  nop
    /* 4DF34 8005F724 2A101003 */  slt        $v0, $t8, $s0
    /* 4DF38 8005F728 49004010 */  beqz       $v0, .L8005F850
    /* 4DF3C 8005F72C 00000000 */   nop
  .L8005F730:
    /* 4DF40 8005F730 21C86002 */  addu       $t9, $s3, $zero
    /* 4DF44 8005F734 147E0108 */  j          .L8005F850
    /* 4DF48 8005F738 1000B0AF */   sw        $s0, 0x10($sp)
  .L8005F73C:
    /* 4DF4C 8005F73C 21202002 */  addu       $a0, $s1, $zero
    /* 4DF50 8005F740 2000A9AF */  sw         $t1, 0x20($sp)
    /* 4DF54 8005F744 2400ACAF */  sw         $t4, 0x24($sp)
    /* 4DF58 8005F748 2800ADAF */  sw         $t5, 0x28($sp)
    /* 4DF5C 8005F74C 2C00AEAF */  sw         $t6, 0x2C($sp)
    /* 4DF60 8005F750 3000AFAF */  sw         $t7, 0x30($sp)
    /* 4DF64 8005F754 297D010C */  jal        func_8005F4A4
    /* 4DF68 8005F758 3400B9AF */   sw        $t9, 0x34($sp)
    /* 4DF6C 8005F75C 21384000 */  addu       $a3, $v0, $zero
    /* 4DF70 8005F760 2000A98F */  lw         $t1, 0x20($sp)
    /* 4DF74 8005F764 2400AC8F */  lw         $t4, 0x24($sp)
    /* 4DF78 8005F768 2800AD8F */  lw         $t5, 0x28($sp)
    /* 4DF7C 8005F76C 2C00AE8F */  lw         $t6, 0x2C($sp)
    /* 4DF80 8005F770 3000AF8F */  lw         $t7, 0x30($sp)
    /* 4DF84 8005F774 3400B98F */  lw         $t9, 0x34($sp)
    /* 4DF88 8005F778 0B00E010 */  beqz       $a3, .L8005F7A8
    /* 4DF8C 8005F77C 21200000 */   addu      $a0, $zero, $zero
    /* 4DF90 8005F780 0800E28C */  lw         $v0, 0x8($a3)
    /* 4DF94 8005F784 00000000 */  nop
    /* 4DF98 8005F788 06004004 */  bltz       $v0, .L8005F7A4
    /* 4DF9C 8005F78C 00000000 */   nop
    /* 4DFA0 8005F790 1400B88F */  lw         $t8, 0x14($sp)
    /* 4DFA4 8005F794 00000000 */  nop
    /* 4DFA8 8005F798 2A105800 */  slt        $v0, $v0, $t8
    /* 4DFAC 8005F79C 02004014 */  bnez       $v0, .L8005F7A8
    /* 4DFB0 8005F7A0 00000000 */   nop
  .L8005F7A4:
    /* 4DFB4 8005F7A4 01000424 */  addiu      $a0, $zero, 0x1
  .L8005F7A8:
    /* 4DFB8 8005F7A8 29008010 */  beqz       $a0, .L8005F850
    /* 4DFBC 8005F7AC B0012226 */   addiu     $v0, $s1, 0x1B0
    /* 4DFC0 8005F7B0 21404000 */  addu       $t0, $v0, $zero
    /* 4DFC4 8005F7B4 21181201 */  addu       $v1, $t0, $s2
    /* 4DFC8 8005F7B8 FAFFC627 */  addiu      $a2, $fp, -0x6
    /* 4DFCC 8005F7BC 0400E58C */  lw         $a1, 0x4($a3)
    /* 4DFD0 8005F7C0 0000628C */  lw         $v0, 0x0($v1)
    /* 4DFD4 8005F7C4 00000000 */  nop
    /* 4DFD8 8005F7C8 2A104500 */  slt        $v0, $v0, $a1
    /* 4DFDC 8005F7CC 02004014 */  bnez       $v0, .L8005F7D8
    /* 4DFE0 8005F7D0 B4012326 */   addiu     $v1, $s1, 0x1B4
    /* 4DFE4 8005F7D4 21200000 */  addu       $a0, $zero, $zero
  .L8005F7D8:
    /* 4DFE8 8005F7D8 2A10A600 */  slt        $v0, $a1, $a2
    /* 4DFEC 8005F7DC 02004010 */  beqz       $v0, .L8005F7E8
    /* 4DFF0 8005F7E0 21107600 */   addu      $v0, $v1, $s6
    /* 4DFF4 8005F7E4 21200000 */  addu       $a0, $zero, $zero
  .L8005F7E8:
    /* 4DFF8 8005F7E8 0000428C */  lw         $v0, 0x0($v0)
    /* 4DFFC 8005F7EC FFFF1824 */  addiu      $t8, $zero, -0x1
    /* 4E000 8005F7F0 05005810 */  beq        $v0, $t8, .L8005F808
    /* 4E004 8005F7F4 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 4E008 8005F7F8 2A10A200 */  slt        $v0, $a1, $v0
    /* 4E00C 8005F7FC 02004010 */  beqz       $v0, .L8005F808
    /* 4E010 8005F800 00000000 */   nop
    /* 4E014 8005F804 21200000 */  addu       $a0, $zero, $zero
  .L8005F808:
    /* 4E018 8005F808 06000016 */  bnez       $s0, .L8005F824
    /* 4E01C 8005F80C 00000000 */   nop
    /* 4E020 8005F810 0E002282 */  lb         $v0, 0xE($s1)
    /* 4E024 8005F814 00000000 */  nop
    /* 4E028 8005F818 02004014 */  bnez       $v0, .L8005F824
    /* 4E02C 8005F81C 00000000 */   nop
    /* 4E030 8005F820 21200000 */  addu       $a0, $zero, $zero
  .L8005F824:
    /* 4E034 8005F824 0A008010 */  beqz       $a0, .L8005F850
    /* 4E038 8005F828 21101201 */   addu      $v0, $t0, $s2
    /* 4E03C 8005F82C 01001026 */  addiu      $s0, $s0, 0x1
    /* 4E040 8005F830 000090AE */  sw         $s0, 0x0($s4)
    /* 4E044 8005F834 00005EAC */  sw         $fp, 0x0($v0)
    /* 4E048 8005F838 0400E48C */  lw         $a0, 0x4($a3)
    /* 4E04C 8005F83C 21187200 */  addu       $v1, $v1, $s2
    /* 4E050 8005F840 000064AC */  sw         $a0, 0x0($v1)
    /* 4E054 8005F844 0800E28C */  lw         $v0, 0x8($a3)
    /* 4E058 8005F848 21A80000 */  addu       $s5, $zero, $zero
    /* 4E05C 8005F84C 0000A2AD */  sw         $v0, 0x0($t5)
  .L8005F850:
    /* 4E060 8005F850 4F00A012 */  beqz       $s5, .L8005F990
    /* 4E064 8005F854 00000000 */   nop
    /* 4E068 8005F858 9401268E */  lw         $a2, 0x194($s1)
    /* 4E06C 8005F85C 00000000 */  nop
    /* 4E070 8005F860 4B00C010 */  beqz       $a2, .L8005F990
    /* 4E074 8005F864 00000000 */   nop
    /* 4E078 8005F868 49000012 */  beqz       $s0, .L8005F990
    /* 4E07C 8005F86C FFFF0326 */   addiu     $v1, $s0, -0x1
    /* 4E080 8005F870 40180300 */  sll        $v1, $v1, 1
    /* 4E084 8005F874 21186C00 */  addu       $v1, $v1, $t4
    /* 4E088 8005F878 21186900 */  addu       $v1, $v1, $t1
    /* 4E08C 8005F87C 10002726 */  addiu      $a3, $s1, 0x10
    /* 4E090 8005F880 9001258E */  lw         $a1, 0x190($s1)
    /* 4E094 8005F884 00006A94 */  lhu        $t2, 0x0($v1)
    /* 4E098 8005F888 40100500 */  sll        $v0, $a1, 1
    /* 4E09C 8005F88C 21104500 */  addu       $v0, $v0, $a1
    /* 4E0A0 8005F890 80400200 */  sll        $t0, $v0, 2
    /* 4E0A4 8005F894 2120E800 */  addu       $a0, $a3, $t0
    /* 4E0A8 8005F898 0000828C */  lw         $v0, 0x0($a0)
    /* 4E0AC 8005F89C 00000000 */  nop
    /* 4E0B0 8005F8A0 06004A10 */  beq        $v0, $t2, .L8005F8BC
    /* 4E0B4 8005F8A4 21480000 */   addu      $t1, $zero, $zero
    /* 4E0B8 8005F8A8 2110E801 */  addu       $v0, $t7, $t0
    /* 4E0BC 8005F8AC 0000448C */  lw         $a0, 0x0($v0)
    /* 4E0C0 8005F8B0 0000C38D */  lw         $v1, 0x0($t6)
    /* 4E0C4 8005F8B4 00000000 */  nop
    /* 4E0C8 8005F8B8 2A486400 */  slt        $t1, $v1, $a0
  .L8005F8BC:
    /* 4E0CC 8005F8BC 34002011 */  beqz       $t1, .L8005F990
    /* 4E0D0 8005F8C0 0200C228 */   slti      $v0, $a2, 0x2
    /* 4E0D4 8005F8C4 28004014 */  bnez       $v0, .L8005F968
    /* 4E0D8 8005F8C8 FFFFA324 */   addiu     $v1, $a1, -0x1
    /* 4E0DC 8005F8CC 98012B8E */  lw         $t3, 0x198($s1)
    /* 4E0E0 8005F8D0 02006104 */  bgez       $v1, .L8005F8DC
    /* 4E0E4 8005F8D4 00000000 */   nop
    /* 4E0E8 8005F8D8 1F000324 */  addiu      $v1, $zero, 0x1F
  .L8005F8DC:
    /* 4E0EC 8005F8DC 40100300 */  sll        $v0, $v1, 1
    /* 4E0F0 8005F8E0 21104300 */  addu       $v0, $v0, $v1
    /* 4E0F4 8005F8E4 80300200 */  sll        $a2, $v0, 2
    /* 4E0F8 8005F8E8 2118E600 */  addu       $v1, $a3, $a2
    /* 4E0FC 8005F8EC 0000648C */  lw         $a0, 0x0($v1)
    /* 4E100 8005F8F0 00000000 */  nop
    /* 4E104 8005F8F4 1C008A14 */  bne        $a0, $t2, .L8005F968
    /* 4E108 8005F8F8 07106B02 */   srav      $v0, $t3, $s3
    /* 4E10C 8005F8FC 01004238 */  xori       $v0, $v0, 0x1
    /* 4E110 8005F900 01004230 */  andi       $v0, $v0, 0x1
    /* 4E114 8005F904 18004010 */  beqz       $v0, .L8005F968
    /* 4E118 8005F908 2120E801 */   addu      $a0, $t7, $t0
    /* 4E11C 8005F90C 2128E601 */  addu       $a1, $t7, $a2
    /* 4E120 8005F910 0000828C */  lw         $v0, 0x0($a0)
    /* 4E124 8005F914 0000A38C */  lw         $v1, 0x0($a1)
    /* 4E128 8005F918 00000000 */  nop
    /* 4E12C 8005F91C 2A104300 */  slt        $v0, $v0, $v1
    /* 4E130 8005F920 11004014 */  bnez       $v0, .L8005F968
    /* 4E134 8005F924 18002726 */   addiu     $a3, $s1, 0x18
    /* 4E138 8005F928 2110E800 */  addu       $v0, $a3, $t0
    /* 4E13C 8005F92C 0000438C */  lw         $v1, 0x0($v0)
    /* 4E140 8005F930 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 4E144 8005F934 07006410 */  beq        $v1, $a0, .L8005F954
    /* 4E148 8005F938 2110E600 */   addu      $v0, $a3, $a2
    /* 4E14C 8005F93C 0000428C */  lw         $v0, 0x0($v0)
    /* 4E150 8005F940 00000000 */  nop
    /* 4E154 8005F944 03004410 */  beq        $v0, $a0, .L8005F954
    /* 4E158 8005F948 2A106200 */   slt       $v0, $v1, $v0
    /* 4E15C 8005F94C 06004010 */  beqz       $v0, .L8005F968
    /* 4E160 8005F950 00000000 */   nop
  .L8005F954:
    /* 4E164 8005F954 21480000 */  addu       $t1, $zero, $zero
    /* 4E168 8005F958 01001824 */  addiu      $t8, $zero, 0x1
    /* 4E16C 8005F95C 04107802 */  sllv       $v0, $t8, $s3
    /* 4E170 8005F960 25106201 */  or         $v0, $t3, $v0
    /* 4E174 8005F964 980122AE */  sw         $v0, 0x198($s1)
  .L8005F968:
    /* 4E178 8005F968 09002011 */  beqz       $t1, .L8005F990
    /* 4E17C 8005F96C FFFF1824 */   addiu     $t8, $zero, -0x1
    /* 4E180 8005F970 000080AE */  sw         $zero, 0x0($s4)
    /* 4E184 8005F974 0000F8AE */  sw         $t8, 0x0($s7)
    /* 4E188 8005F978 01001824 */  addiu      $t8, $zero, 0x1
    /* 4E18C 8005F97C 04107802 */  sllv       $v0, $t8, $s3
    /* 4E190 8005F980 9801238E */  lw         $v1, 0x198($s1)
    /* 4E194 8005F984 27100200 */  nor        $v0, $zero, $v0
    /* 4E198 8005F988 24186200 */  and        $v1, $v1, $v0
    /* 4E19C 8005F98C 980123AE */  sw         $v1, 0x198($s1)
  .L8005F990:
    /* 4E1A0 8005F990 0000828E */  lw         $v0, 0x0($s4)
    /* 4E1A4 8005F994 00000000 */  nop
    /* 4E1A8 8005F998 10004010 */  beqz       $v0, .L8005F9DC
    /* 4E1AC 8005F99C 00000000 */   nop
    /* 4E1B0 8005F9A0 0000E28E */  lw         $v0, 0x0($s7)
    /* 4E1B4 8005F9A4 1800B88F */  lw         $t8, 0x18($sp)
    /* 4E1B8 8005F9A8 00000000 */  nop
    /* 4E1BC 8005F9AC 2A105800 */  slt        $v0, $v0, $t8
    /* 4E1C0 8005F9B0 0A004010 */  beqz       $v0, .L8005F9DC
    /* 4E1C4 8005F9B4 00000000 */   nop
    /* 4E1C8 8005F9B8 FFFF1824 */  addiu      $t8, $zero, -0x1
    /* 4E1CC 8005F9BC 000080AE */  sw         $zero, 0x0($s4)
    /* 4E1D0 8005F9C0 0000F8AE */  sw         $t8, 0x0($s7)
    /* 4E1D4 8005F9C4 01001824 */  addiu      $t8, $zero, 0x1
    /* 4E1D8 8005F9C8 04107802 */  sllv       $v0, $t8, $s3
    /* 4E1DC 8005F9CC 9801238E */  lw         $v1, 0x198($s1)
    /* 4E1E0 8005F9D0 27100200 */  nor        $v0, $zero, $v0
    /* 4E1E4 8005F9D4 24186200 */  and        $v1, $v1, $v0
    /* 4E1E8 8005F9D8 980123AE */  sw         $v1, 0x198($s1)
  .L8005F9DC:
    /* 4E1EC 8005F9DC F0FFF726 */  addiu      $s7, $s7, -0x10
    /* 4E1F0 8005F9E0 F0FF9426 */  addiu      $s4, $s4, -0x10
    /* 4E1F4 8005F9E4 F0FFCE25 */  addiu      $t6, $t6, -0x10
    /* 4E1F8 8005F9E8 EEFF8C25 */  addiu      $t4, $t4, -0x12
    /* 4E1FC 8005F9EC FFFF7326 */  addiu      $s3, $s3, -0x1
    /* 4E200 8005F9F0 30FF6106 */  bgez       $s3, .L8005F6B4
    /* 4E204 8005F9F4 F0FFAD25 */   addiu     $t5, $t5, -0x10
    /* 4E208 8005F9F8 21002007 */  bltz       $t9, .L8005FA80
    /* 4E20C 8005F9FC 18002726 */   addiu     $a3, $s1, 0x18
    /* 4E210 8005FA00 21400000 */  addu       $t0, $zero, $zero
    /* 4E214 8005FA04 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* 4E218 8005FA08 B8012626 */  addiu      $a2, $s1, 0x1B8
    /* 4E21C 8005FA0C B4012526 */  addiu      $a1, $s1, 0x1B4
    /* 4E220 8005FA10 B0012426 */  addiu      $a0, $s1, 0x1B0
    /* 4E224 8005FA14 0D0039A2 */  sb         $t9, 0xD($s1)
    /* 4E228 8005FA18 1C00A38F */  lw         $v1, 0x1C($sp)
  .L8005FA1C:
    /* 4E22C 8005FA1C 00000000 */  nop
    /* 4E230 8005FA20 000060AC */  sw         $zero, 0x0($v1)
    /* 4E234 8005FA24 00009EAC */  sw         $fp, 0x0($a0)
    /* 4E238 8005FA28 0000A9AC */  sw         $t1, 0x0($a1)
    /* 4E23C 8005FA2C 0000C9AC */  sw         $t1, 0x0($a2)
    /* 4E240 8005FA30 1000C624 */  addiu      $a2, $a2, 0x10
    /* 4E244 8005FA34 1000A524 */  addiu      $a1, $a1, 0x10
    /* 4E248 8005FA38 10008424 */  addiu      $a0, $a0, 0x10
    /* 4E24C 8005FA3C 01000825 */  addiu      $t0, $t0, 0x1
    /* 4E250 8005FA40 18000229 */  slti       $v0, $t0, 0x18
    /* 4E254 8005FA44 F5FF4014 */  bnez       $v0, .L8005FA1C
    /* 4E258 8005FA48 10006324 */   addiu     $v1, $v1, 0x10
    /* 4E25C 8005FA4C 980120AE */  sw         $zero, 0x198($s1)
    /* 4E260 8005FA50 21200000 */  addu       $a0, $zero, $zero
    /* 4E264 8005FA54 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 4E268 8005FA58 2118E000 */  addu       $v1, $a3, $zero
  .L8005FA5C:
    /* 4E26C 8005FA5C 0000628C */  lw         $v0, 0x0($v1)
    /* 4E270 8005FA60 00000000 */  nop
    /* 4E274 8005FA64 02004514 */  bne        $v0, $a1, .L8005FA70
    /* 4E278 8005FA68 00000000 */   nop
    /* 4E27C 8005FA6C 00007EAC */  sw         $fp, 0x0($v1)
  .L8005FA70:
    /* 4E280 8005FA70 01008424 */  addiu      $a0, $a0, 0x1
    /* 4E284 8005FA74 20008228 */  slti       $v0, $a0, 0x20
    /* 4E288 8005FA78 F8FF4014 */  bnez       $v0, .L8005FA5C
    /* 4E28C 8005FA7C 0C006324 */   addiu     $v1, $v1, 0xC
  .L8005FA80:
    /* 4E290 8005FA80 0E002292 */  lbu        $v0, 0xE($s1)
    /* 4E294 8005FA84 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 4E298 8005FA88 5800BE8F */  lw         $fp, 0x58($sp)
    /* 4E29C 8005FA8C 5400B78F */  lw         $s7, 0x54($sp)
    /* 4E2A0 8005FA90 5000B68F */  lw         $s6, 0x50($sp)
    /* 4E2A4 8005FA94 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 4E2A8 8005FA98 4800B48F */  lw         $s4, 0x48($sp)
    /* 4E2AC 8005FA9C 4400B38F */  lw         $s3, 0x44($sp)
    /* 4E2B0 8005FAA0 4000B28F */  lw         $s2, 0x40($sp)
    /* 4E2B4 8005FAA4 3800B08F */  lw         $s0, 0x38($sp)
    /* 4E2B8 8005FAA8 0F0022A2 */  sb         $v0, 0xF($s1)
    /* 4E2BC 8005FAAC 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 4E2C0 8005FAB0 0800E003 */  jr         $ra
    /* 4E2C4 8005FAB4 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_8005F638
