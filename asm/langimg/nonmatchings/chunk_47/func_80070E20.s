nonmatching func_80070E20, 0x20

glabel func_80070E20
    /* 5F630 80070E20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5F634 80070E24 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5F638 80070E28 7DC3010C */  jal        func_80070DF4
    /* 5F63C 80070E2C 60008624 */   addiu     $a2, $a0, 0x60
    /* 5F640 80070E30 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5F644 80070E34 00000000 */  nop
    /* 5F648 80070E38 0800E003 */  jr         $ra
    /* 5F64C 80070E3C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80070E20
