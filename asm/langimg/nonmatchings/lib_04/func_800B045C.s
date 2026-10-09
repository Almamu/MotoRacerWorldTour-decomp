nonmatching func_800B045C, 0x20

glabel func_800B045C
    /* 9EC6C 800B045C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9EC70 800B0460 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9EC74 800B0464 A9C2020C */  jal        func_800B0AA4
    /* 9EC78 800B0468 00000000 */   nop
    /* 9EC7C 800B046C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9EC80 800B0470 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9EC84 800B0474 0800E003 */  jr         $ra
    /* 9EC88 800B0478 00000000 */   nop
endlabel func_800B045C
