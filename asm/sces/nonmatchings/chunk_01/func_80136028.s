nonmatching func_80136028, 0x24

glabel func_80136028
    /* 34F4 80136028 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 34F8 8013602C 7F000424 */  addiu      $a0, $zero, 0x7F
    /* 34FC 80136030 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3500 80136034 F40F050C */  jal        SsSetMVol
    /* 3504 80136038 7F000524 */   addiu     $a1, $zero, 0x7F
    /* 3508 8013603C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 350C 80136040 00000000 */  nop
    /* 3510 80136044 0800E003 */  jr         $ra
    /* 3514 80136048 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80136028
