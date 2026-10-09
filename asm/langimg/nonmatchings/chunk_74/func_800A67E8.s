nonmatching func_800A67E8, 0x30

glabel func_800A67E8
    /* 94FF8 800A67E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 94FFC 800A67EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 95000 800A67F0 21808000 */  addu       $s0, $a0, $zero
    /* 95004 800A67F4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 95008 800A67F8 B488020C */  jal        func_800A22D0
    /* 9500C 800A67FC 02000424 */   addiu     $a0, $zero, 0x2
    /* 95010 800A6800 AC88020C */  jal        func_800A22B0
    /* 95014 800A6804 21200002 */   addu      $a0, $s0, $zero
    /* 95018 800A6808 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9501C 800A680C 1000B08F */  lw         $s0, 0x10($sp)
    /* 95020 800A6810 0800E003 */  jr         $ra
    /* 95024 800A6814 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A67E8
