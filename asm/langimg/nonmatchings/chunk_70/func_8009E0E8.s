nonmatching func_8009E0E8, 0x7C

glabel func_8009E0E8
    /* 8C8F8 8009E0E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8C8FC 8009E0EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C900 8009E0F0 21808000 */  addu       $s0, $a0, $zero
    /* 8C904 8009E0F4 21200000 */  addu       $a0, $zero, $zero
    /* 8C908 8009E0F8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8C90C 8009E0FC 4C00028E */  lw         $v0, 0x4C($s0)
    /* 8C910 8009E100 01000324 */  addiu      $v1, $zero, 0x1
    /* 8C914 8009E104 040000AE */  sw         $zero, 0x4($s0)
    /* 8C918 8009E108 080000AE */  sw         $zero, 0x8($s0)
    /* 8C91C 8009E10C 0C0000AE */  sw         $zero, 0xC($s0)
    /* 8C920 8009E110 100000AE */  sw         $zero, 0x10($s0)
    /* 8C924 8009E114 140000A6 */  sh         $zero, 0x14($s0)
    /* 8C928 8009E118 160000A6 */  sh         $zero, 0x16($s0)
    /* 8C92C 8009E11C 000040AC */  sw         $zero, 0x0($v0)
    /* 8C930 8009E120 A190020C */  jal        func_800A4284
    /* 8C934 8009E124 000003AE */   sw        $v1, 0x0($s0)
    /* 8C938 8009E128 9378020C */  jal        func_8009E24C
    /* 8C93C 8009E12C 21200002 */   addu      $a0, $s0, $zero
    /* 8C940 8009E130 5978020C */  jal        func_8009E164
    /* 8C944 8009E134 21200002 */   addu      $a0, $s0, $zero
    /* 8C948 8009E138 BF78020C */  jal        func_8009E2FC
    /* 8C94C 8009E13C 21200002 */   addu      $a0, $s0, $zero
    /* 8C950 8009E140 5000038E */  lw         $v1, 0x50($s0)
    /* 8C954 8009E144 1800048E */  lw         $a0, 0x18($s0)
    /* 8C958 8009E148 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8C95C 8009E14C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C960 8009E150 00006294 */  lhu        $v0, 0x0($v1)
    /* 8C964 8009E154 00000000 */  nop
    /* 8C968 8009E158 080082A4 */  sh         $v0, 0x8($a0)
    /* 8C96C 8009E15C 0800E003 */  jr         $ra
    /* 8C970 8009E160 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009E0E8
