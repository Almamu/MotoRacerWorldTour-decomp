nonmatching func_80070DB0, 0x20

glabel func_80070DB0
    /* 5F5C0 80070DB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5F5C4 80070DB4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5F5C8 80070DB8 66C3010C */  jal        func_80070D98
    /* 5F5CC 80070DBC 21280000 */   addu      $a1, $zero, $zero
    /* 5F5D0 80070DC0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5F5D4 80070DC4 00000000 */  nop
    /* 5F5D8 80070DC8 0800E003 */  jr         $ra
    /* 5F5DC 80070DCC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80070DB0
