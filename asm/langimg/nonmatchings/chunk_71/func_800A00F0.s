nonmatching func_800A00F0, 0x34

glabel func_800A00F0
    /* 8E900 800A00F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8E904 800A00F4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8E908 800A00F8 21808000 */  addu       $s0, $a0, $zero
    /* 8E90C 800A00FC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8E910 800A0100 1B80020C */  jal        func_800A006C
    /* 8E914 800A0104 04000426 */   addiu     $a0, $s0, 0x4
    /* 8E918 800A0108 4980020C */  jal        func_800A0124
    /* 8E91C 800A010C 21200002 */   addu      $a0, $s0, $zero
    /* 8E920 800A0110 21100002 */  addu       $v0, $s0, $zero
    /* 8E924 800A0114 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8E928 800A0118 1000B08F */  lw         $s0, 0x10($sp)
    /* 8E92C 800A011C 0800E003 */  jr         $ra
    /* 8E930 800A0120 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A00F0
