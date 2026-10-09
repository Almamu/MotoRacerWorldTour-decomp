nonmatching DecDCTout, 0x20

glabel DecDCTout
    /* 98DF0 800AA5E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98DF4 800AA5E4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 98DF8 800AA5E8 F8A9020C */  jal        func_800AA7E0
    /* 98DFC 800AA5EC 00000000 */   nop
    /* 98E00 800AA5F0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 98E04 800AA5F4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98E08 800AA5F8 0800E003 */  jr         $ra
    /* 98E0C 800AA5FC 00000000 */   nop
endlabel DecDCTout
