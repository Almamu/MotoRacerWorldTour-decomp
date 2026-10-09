nonmatching func_8006F270, 0x2C

glabel func_8006F270
    /* 5DA80 8006F270 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5DA84 8006F274 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5DA88 8006F278 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5DA8C 8006F27C 92BA010C */  jal        func_8006EA48
    /* 5DA90 8006F280 21808000 */   addu      $s0, $a0, $zero
    /* 5DA94 8006F284 DEB8010C */  jal        func_8006E378
    /* 5DA98 8006F288 40000426 */   addiu     $a0, $s0, 0x40
    /* 5DA9C 8006F28C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5DAA0 8006F290 1000B08F */  lw         $s0, 0x10($sp)
    /* 5DAA4 8006F294 0800E003 */  jr         $ra
    /* 5DAA8 8006F298 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006F270
