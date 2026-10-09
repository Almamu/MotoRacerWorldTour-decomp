nonmatching CdReadyCallback, 0x14

glabel CdReadyCallback
    /* 4388 80136EBC 1C80023C */  lui        $v0, %hi(D_801BD954)
    /* 438C 80136EC0 54D9428C */  lw         $v0, %lo(D_801BD954)($v0)
    /* 4390 80136EC4 1C80013C */  lui        $at, %hi(D_801BD954)
    /* 4394 80136EC8 0800E003 */  jr         $ra
    /* 4398 80136ECC 54D924AC */   sw        $a0, %lo(D_801BD954)($at)
endlabel CdReadyCallback
