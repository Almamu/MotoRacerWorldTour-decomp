nonmatching func_800893C8, 0x20

glabel func_800893C8
    /* 77BD8 800893C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 77BDC 800893CC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 77BE0 800893D0 6858020C */  jal        func_800961A0
    /* 77BE4 800893D4 00000000 */   nop
    /* 77BE8 800893D8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 77BEC 800893DC 00000000 */  nop
    /* 77BF0 800893E0 0800E003 */  jr         $ra
    /* 77BF4 800893E4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800893C8
