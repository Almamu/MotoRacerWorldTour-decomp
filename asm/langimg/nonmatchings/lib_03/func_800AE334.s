nonmatching func_800AE334, 0x28

glabel func_800AE334
    /* 9CB44 800AE334 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9CB48 800AE338 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9CB4C 800AE33C 0B80053C */  lui        $a1, %hi(func_800ADB34)
    /* 9CB50 800AE340 34DBA524 */  addiu      $a1, $a1, %lo(func_800ADB34)
    /* 9CB54 800AE344 50AB020C */  jal        DMACallback
    /* 9CB58 800AE348 02000424 */   addiu     $a0, $zero, 0x2
    /* 9CB5C 800AE34C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9CB60 800AE350 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9CB64 800AE354 0800E003 */  jr         $ra
    /* 9CB68 800AE358 00000000 */   nop
endlabel func_800AE334
