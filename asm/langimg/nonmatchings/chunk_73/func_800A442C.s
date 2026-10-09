nonmatching func_800A442C, 0x20

glabel func_800A442C
    /* 92C3C 800A442C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 92C40 800A4430 1000BFAF */  sw         $ra, 0x10($sp)
    /* 92C44 800A4434 128E020C */  jal        func_800A3848
    /* 92C48 800A4438 00000000 */   nop
    /* 92C4C 800A443C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 92C50 800A4440 00000000 */  nop
    /* 92C54 800A4444 0800E003 */  jr         $ra
    /* 92C58 800A4448 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A442C
