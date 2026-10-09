nonmatching func_8008142C, 0x30

glabel func_8008142C
    /* 6FC3C 8008142C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6FC40 80081430 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6FC44 80081434 21808000 */  addu       $s0, $a0, $zero
    /* 6FC48 80081438 21280000 */  addu       $a1, $zero, $zero
    /* 6FC4C 8008143C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6FC50 80081440 56D8020C */  jal        func_800B6158
    /* 6FC54 80081444 30000624 */   addiu     $a2, $zero, 0x30
    /* 6FC58 80081448 21100002 */  addu       $v0, $s0, $zero
    /* 6FC5C 8008144C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6FC60 80081450 1000B08F */  lw         $s0, 0x10($sp)
    /* 6FC64 80081454 0800E003 */  jr         $ra
    /* 6FC68 80081458 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8008142C
