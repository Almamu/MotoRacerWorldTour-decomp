nonmatching func_80144250, 0x20

glabel func_80144250
    /* 1171C 80144250 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 11720 80144254 1000BFAF */  sw         $ra, 0x10($sp)
    /* 11724 80144258 0810050C */  jal        func_80144020
    /* 11728 8014425C 01000424 */   addiu     $a0, $zero, 0x1
    /* 1172C 80144260 1000BF8F */  lw         $ra, 0x10($sp)
    /* 11730 80144264 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 11734 80144268 0800E003 */  jr         $ra
    /* 11738 8014426C 00000000 */   nop
endlabel func_80144250
