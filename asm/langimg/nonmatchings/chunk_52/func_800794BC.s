nonmatching func_800794BC, 0x2C

glabel func_800794BC
    /* 67CCC 800794BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 67CD0 800794C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 67CD4 800794C4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 67CD8 800794C8 12E6010C */  jal        func_80079848
    /* 67CDC 800794CC 21808000 */   addu      $s0, $a0, $zero
    /* 67CE0 800794D0 F523020C */  jal        func_80088FD4
    /* 67CE4 800794D4 30000426 */   addiu     $a0, $s0, 0x30
    /* 67CE8 800794D8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 67CEC 800794DC 1000B08F */  lw         $s0, 0x10($sp)
    /* 67CF0 800794E0 0800E003 */  jr         $ra
    /* 67CF4 800794E4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800794BC
