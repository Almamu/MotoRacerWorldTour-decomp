nonmatching _SsSndPlay, 0x30

glabel _SsSndPlay
    /* 11D1C 80144850 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 11D20 80144854 1000BFAF */  sw         $ra, 0x10($sp)
    /* 11D24 80144858 00240400 */  sll        $a0, $a0, 16
    /* 11D28 8014485C 002C0500 */  sll        $a1, $a1, 16
    /* 11D2C 80144860 03240400 */  sra        $a0, $a0, 16
    /* 11D30 80144864 2012050C */  jal        _SsSeqPlay
    /* 11D34 80144868 032C0500 */   sra       $a1, $a1, 16
    /* 11D38 8014486C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 11D3C 80144870 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 11D40 80144874 0800E003 */  jr         $ra
    /* 11D44 80144878 00000000 */   nop
    /* 11D48 8014487C 00000000 */  nop
endlabel _SsSndPlay
