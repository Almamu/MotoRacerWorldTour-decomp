nonmatching func_8009D25C, 0x2C

glabel func_8009D25C
    /* 8BA6C 8009D25C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8BA70 8009D260 0A80073C */  lui        $a3, %hi(func_8009CF14)
    /* 8BA74 8009D264 15000524 */  addiu      $a1, $zero, 0x15
    /* 8BA78 8009D268 21300000 */  addu       $a2, $zero, $zero
    /* 8BA7C 8009D26C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8BA80 8009D270 24FB000C */  jal        func_8003EC90
    /* 8BA84 8009D274 14CFE724 */   addiu     $a3, $a3, %lo(func_8009CF14)
    /* 8BA88 8009D278 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8BA8C 8009D27C 00000000 */  nop
    /* 8BA90 8009D280 0800E003 */  jr         $ra
    /* 8BA94 8009D284 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009D25C
