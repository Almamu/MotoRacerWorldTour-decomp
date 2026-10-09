nonmatching func_8006FD78, 0x20

glabel func_8006FD78
    /* 5E588 8006FD78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5E58C 8006FD7C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5E590 8006FD80 405A020C */  jal        func_80096900
    /* 5E594 8006FD84 08008424 */   addiu     $a0, $a0, 0x8
    /* 5E598 8006FD88 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5E59C 8006FD8C 1C004228 */  slti       $v0, $v0, 0x1C
    /* 5E5A0 8006FD90 0800E003 */  jr         $ra
    /* 5E5A4 8006FD94 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006FD78
