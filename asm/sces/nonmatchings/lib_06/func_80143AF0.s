nonmatching func_80143AF0, 0x20

glabel func_80143AF0
    /* 10FBC 80143AF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 10FC0 80143AF4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 10FC4 80143AF8 C40E050C */  jal        func_80143B10
    /* 10FC8 80143AFC 00000000 */   nop
    /* 10FCC 80143B00 1000BF8F */  lw         $ra, 0x10($sp)
    /* 10FD0 80143B04 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 10FD4 80143B08 0800E003 */  jr         $ra
    /* 10FD8 80143B0C 00000000 */   nop
endlabel func_80143AF0
