nonmatching StartCARD, 0x38

glabel StartCARD
    /* 9D510 800AED00 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9D514 800AED04 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9D518 800AED08 E0D6020C */  jal        EnterCriticalSection
    /* 9D51C 800AED0C 00000000 */   nop
    /* 9D520 800AED10 5DBB020C */  jal        StartCARD2
    /* 9D524 800AED14 00000000 */   nop
    /* 9D528 800AED18 0CD7020C */  jal        ChangeClearPAD
    /* 9D52C 800AED1C 21200000 */   addu      $a0, $zero, $zero
    /* 9D530 800AED20 E4D6020C */  jal        ExitCriticalSection
    /* 9D534 800AED24 00000000 */   nop
    /* 9D538 800AED28 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9D53C 800AED2C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9D540 800AED30 0800E003 */  jr         $ra
    /* 9D544 800AED34 00000000 */   nop
endlabel StartCARD
