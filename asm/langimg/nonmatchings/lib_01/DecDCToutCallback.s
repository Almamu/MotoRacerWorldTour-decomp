nonmatching DecDCToutCallback, 0x24

glabel DecDCToutCallback
    /* 98E4C 800AA63C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98E50 800AA640 1000BFAF */  sw         $ra, 0x10($sp)
    /* 98E54 800AA644 21288000 */  addu       $a1, $a0, $zero
    /* 98E58 800AA648 50AB020C */  jal        DMACallback
    /* 98E5C 800AA64C 01000424 */   addiu     $a0, $zero, 0x1
    /* 98E60 800AA650 1000BF8F */  lw         $ra, 0x10($sp)
    /* 98E64 800AA654 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98E68 800AA658 0800E003 */  jr         $ra
    /* 98E6C 800AA65C 00000000 */   nop
endlabel DecDCToutCallback
