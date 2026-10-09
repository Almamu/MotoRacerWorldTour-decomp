nonmatching func_800A22D8, 0x20

glabel func_800A22D8
    /* 90AE8 800A22D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90AEC 800A22DC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90AF0 800A22E0 2E53000C */  jal        func_80014CB8
    /* 90AF4 800A22E4 00000000 */   nop
    /* 90AF8 800A22E8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90AFC 800A22EC 00000000 */  nop
    /* 90B00 800A22F0 0800E003 */  jr         $ra
    /* 90B04 800A22F4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A22D8
