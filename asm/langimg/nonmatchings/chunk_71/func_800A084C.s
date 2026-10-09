nonmatching func_800A084C, 0x28

glabel func_800A084C
    /* 8F05C 800A084C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8F060 800A0850 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8F064 800A0854 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8F068 800A0858 1D82020C */  jal        func_800A0874
    /* 8F06C 800A085C 21808000 */   addu      $s0, $a0, $zero
    /* 8F070 800A0860 21100002 */  addu       $v0, $s0, $zero
    /* 8F074 800A0864 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8F078 800A0868 1000B08F */  lw         $s0, 0x10($sp)
    /* 8F07C 800A086C 0800E003 */  jr         $ra
    /* 8F080 800A0870 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A084C
