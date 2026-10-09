nonmatching func_80070DD0, 0x24

glabel func_80070DD0
    /* 5F5E0 80070DD0 0800858C */  lw         $a1, 0x8($a0)
    /* 5F5E4 80070DD4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5F5E8 80070DD8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5F5EC 80070DDC 66C3010C */  jal        func_80070D98
    /* 5F5F0 80070DE0 FFFFA524 */   addiu     $a1, $a1, -0x1
    /* 5F5F4 80070DE4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5F5F8 80070DE8 00000000 */  nop
    /* 5F5FC 80070DEC 0800E003 */  jr         $ra
    /* 5F600 80070DF0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80070DD0
