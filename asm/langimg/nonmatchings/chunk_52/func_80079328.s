nonmatching func_80079328, 0x28

glabel func_80079328
    /* 67B38 80079328 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 67B3C 8007932C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 67B40 80079330 00E5010C */  jal        func_80079400
    /* 67B44 80079334 00000000 */   nop
    /* 67B48 80079338 F5AE020C */  jal        func_800ABBD4
    /* 67B4C 8007933C 03000424 */   addiu     $a0, $zero, 0x3
    /* 67B50 80079340 1000BF8F */  lw         $ra, 0x10($sp)
    /* 67B54 80079344 01000224 */  addiu      $v0, $zero, 0x1
    /* 67B58 80079348 0800E003 */  jr         $ra
    /* 67B5C 8007934C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80079328
