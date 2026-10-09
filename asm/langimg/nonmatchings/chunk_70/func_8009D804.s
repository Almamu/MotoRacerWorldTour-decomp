nonmatching func_8009D804, 0x2C

glabel func_8009D804
    /* 8C014 8009D804 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8C018 8009D808 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C01C 8009D80C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8C020 8009D810 9190020C */  jal        func_800A4244
    /* 8C024 8009D814 21808000 */   addu      $s0, $a0, $zero
    /* 8C028 8009D818 2B78020C */  jal        func_8009E0AC
    /* 8C02C 8009D81C 21200002 */   addu      $a0, $s0, $zero
    /* 8C030 8009D820 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8C034 8009D824 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C038 8009D828 0800E003 */  jr         $ra
    /* 8C03C 8009D82C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009D804
