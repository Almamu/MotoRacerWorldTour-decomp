nonmatching CdSyncCallback, 0x14

glabel CdSyncCallback
    /* 4374 80136EA8 1C80023C */  lui        $v0, %hi(D_801BD950)
    /* 4378 80136EAC 50D9428C */  lw         $v0, %lo(D_801BD950)($v0)
    /* 437C 80136EB0 1C80013C */  lui        $at, %hi(D_801BD950)
    /* 4380 80136EB4 0800E003 */  jr         $ra
    /* 4384 80136EB8 50D924AC */   sw        $a0, %lo(D_801BD950)($at)
endlabel CdSyncCallback
