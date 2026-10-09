nonmatching func_80079400, 0x38

glabel func_80079400
    /* 67C10 80079400 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 67C14 80079404 1000BFAF */  sw         $ra, 0x10($sp)
    /* 67C18 80079408 E0D6020C */  jal        func_800B5B80
    /* 67C1C 8007940C 00000000 */   nop
    /* 67C20 80079410 5CAB020C */  jal        func_800AAD70
    /* 67C24 80079414 21200000 */   addu      $a0, $zero, $zero
    /* 67C28 80079418 69AF020C */  jal        func_800ABDA4
    /* 67C2C 8007941C 21200000 */   addu      $a0, $zero, $zero
    /* 67C30 80079420 E4D6020C */  jal        func_800B5B90
    /* 67C34 80079424 00000000 */   nop
    /* 67C38 80079428 1000BF8F */  lw         $ra, 0x10($sp)
    /* 67C3C 8007942C 00000000 */  nop
    /* 67C40 80079430 0800E003 */  jr         $ra
    /* 67C44 80079434 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80079400
