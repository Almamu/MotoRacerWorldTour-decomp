nonmatching func_80136E74, 0x14

glabel func_80136E74
    /* 4340 80136E74 1C80023C */  lui        $v0, %hi(D_801BD958)
    /* 4344 80136E78 58D9428C */  lw         $v0, %lo(D_801BD958)($v0)
    /* 4348 80136E7C 1C80013C */  lui        $at, %hi(D_801BD958)
    /* 434C 80136E80 0800E003 */  jr         $ra
    /* 4350 80136E84 58D924AC */   sw        $a0, %lo(D_801BD958)($at)
endlabel func_80136E74
