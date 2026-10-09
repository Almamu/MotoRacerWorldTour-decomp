nonmatching StSetMask, 0x20

glabel StSetMask
    /* 7538 8013A06C 1C80013C */  lui        $at, %hi(D_801C6498)
    /* 753C 8013A070 986424AC */  sw         $a0, %lo(D_801C6498)($at)
    /* 7540 8013A074 1C80013C */  lui        $at, %hi(D_801C6474)
    /* 7544 8013A078 746425AC */  sw         $a1, %lo(D_801C6474)($at)
    /* 7548 8013A07C 1C80013C */  lui        $at, %hi(D_801C6494)
    /* 754C 8013A080 0800E003 */  jr         $ra
    /* 7550 8013A084 946426AC */   sw        $a2, %lo(D_801C6494)($at)
    /* 7554 8013A088 00000000 */  nop
endlabel StSetMask
