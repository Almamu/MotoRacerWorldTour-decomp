nonmatching func_8004C104, 0x28

glabel func_8004C104
    /* 3A914 8004C104 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3A918 8004C108 0C80023C */  lui        $v0, %hi(D_800C64D8)
    /* 3A91C 8004C10C D8644224 */  addiu      $v0, $v0, %lo(D_800C64D8)
    /* 3A920 8004C110 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3A924 8004C114 0F58000C */  jal        _._6Cobjet
    /* 3A928 8004C118 500082AC */   sw        $v0, 0x50($a0)
    /* 3A92C 8004C11C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3A930 8004C120 00000000 */  nop
    /* 3A934 8004C124 0800E003 */  jr         $ra
    /* 3A938 8004C128 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004C104
