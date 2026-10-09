nonmatching func_8014B84C, 0x3C

glabel func_8014B84C
    /* 18D18 8014B84C 1C80063C */  lui        $a2, %hi(D_801C0A28)
    /* 18D1C 8014B850 280AC68C */  lw         $a2, %lo(D_801C0A28)($a2)
    /* 18D20 8014B854 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 18D24 8014B858 0700C018 */  blez       $a2, .L8014B878
    /* 18D28 8014B85C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 18D2C 8014B860 1D80053C */  lui        $a1, %hi(D_801CFDB8)
    /* 18D30 8014B864 B8FDA524 */  addiu      $a1, $a1, %lo(D_801CFDB8)
    /* 18D34 8014B868 222E050C */  jal        func_8014B888
    /* 18D38 8014B86C 01000424 */   addiu     $a0, $zero, 0x1
    /* 18D3C 8014B870 1C80013C */  lui        $at, %hi(D_801C0A28)
    /* 18D40 8014B874 280A20AC */  sw         $zero, %lo(D_801C0A28)($at)
  .L8014B878:
    /* 18D44 8014B878 1000BF8F */  lw         $ra, 0x10($sp)
    /* 18D48 8014B87C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 18D4C 8014B880 0800E003 */  jr         $ra
    /* 18D50 8014B884 00000000 */   nop
endlabel func_8014B84C
