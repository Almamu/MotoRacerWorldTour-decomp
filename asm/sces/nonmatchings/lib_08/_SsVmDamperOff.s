nonmatching _SsVmDamperOff, 0x10

glabel _SsVmDamperOff
    /* 141F0 80146D24 1D80013C */  lui        $at, %hi(D_801CFB48)
    /* 141F4 80146D28 0800E003 */  jr         $ra
    /* 141F8 80146D2C 48FB20A4 */   sh        $zero, %lo(D_801CFB48)($at)
    /* 141FC 80146D30 00000000 */  nop
endlabel _SsVmDamperOff
