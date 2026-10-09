nonmatching func_8013B39C, 0x18

glabel func_8013B39C
    /* 8868 8013B39C 1C80033C */  lui        $v1, %hi(D_801BEFD0)
    /* 886C 8013B3A0 D0EF638C */  lw         $v1, %lo(D_801BEFD0)($v1)
    /* 8870 8013B3A4 00000000 */  nop
    /* 8874 8013B3A8 00006294 */  lhu        $v0, 0x0($v1)
    /* 8878 8013B3AC 0800E003 */  jr         $ra
    /* 887C 8013B3B0 000064A4 */   sh        $a0, 0x0($v1)
endlabel func_8013B39C
