nonmatching func_8013B844, 0x78

glabel func_8013B844
    /* 8D10 8013B844 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8D14 8013B848 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D18 8013B84C 1C80103C */  lui        $s0, %hi(D_801BDF40)
    /* 8D1C 8013B850 40DF1026 */  addiu      $s0, $s0, %lo(D_801BDF40)
    /* 8D20 8013B854 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8D24 8013B858 00000296 */  lhu        $v0, 0x0($s0)
    /* 8D28 8013B85C 00000000 */  nop
    /* 8D2C 8013B860 11004014 */  bnez       $v0, .L8013B8A8
    /* 8D30 8013B864 00000000 */   nop
    /* 8D34 8013B868 FB2A050C */  jal        func_8014ABEC
    /* 8D38 8013B86C 38000426 */   addiu     $a0, $s0, 0x38
    /* 8D3C 8013B870 1C80043C */  lui        $a0, %hi(D_801BEFD0)
    /* 8D40 8013B874 D0EF848C */  lw         $a0, %lo(D_801BEFD0)($a0)
    /* 8D44 8013B878 32000396 */  lhu        $v1, 0x32($s0)
    /* 8D48 8013B87C 01000224 */  addiu      $v0, $zero, 0x1
    /* 8D4C 8013B880 000002A6 */  sh         $v0, 0x0($s0)
    /* 8D50 8013B884 000083A4 */  sh         $v1, 0x0($a0)
    /* 8D54 8013B888 1C80033C */  lui        $v1, %hi(D_801BEFD4)
    /* 8D58 8013B88C D4EF638C */  lw         $v1, %lo(D_801BEFD4)($v1)
    /* 8D5C 8013B890 3400028E */  lw         $v0, 0x34($s0)
    /* 8D60 8013B894 00000000 */  nop
    /* 8D64 8013B898 032B050C */  jal        func_8014AC0C
    /* 8D68 8013B89C 000062AC */   sw        $v0, 0x0($v1)
    /* 8D6C 8013B8A0 2BEE0408 */  j          .L8013B8AC
    /* 8D70 8013B8A4 21100002 */   addu      $v0, $s0, $zero
  .L8013B8A8:
    /* 8D74 8013B8A8 21100000 */  addu       $v0, $zero, $zero
  .L8013B8AC:
    /* 8D78 8013B8AC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8D7C 8013B8B0 1000B08F */  lw         $s0, 0x10($sp)
    /* 8D80 8013B8B4 0800E003 */  jr         $ra
    /* 8D84 8013B8B8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013B844
