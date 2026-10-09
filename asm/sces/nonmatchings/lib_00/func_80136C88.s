nonmatching func_80136C88, 0x20

glabel func_80136C88
    /* 4154 80136C88 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4158 80136C8C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 415C 80136C90 C32A050C */  jal        _exit
    /* 4160 80136C94 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 4164 80136C98 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4168 80136C9C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 416C 80136CA0 0800E003 */  jr         $ra
    /* 4170 80136CA4 00000000 */   nop
endlabel func_80136C88
