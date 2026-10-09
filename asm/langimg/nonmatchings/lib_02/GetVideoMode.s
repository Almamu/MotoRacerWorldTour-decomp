nonmatching GetVideoMode, 0x10

glabel GetVideoMode
    /* 99F0C 800AB6FC 0C80023C */  lui        $v0, %hi(D_800BE650)
    /* 99F10 800AB700 50E6428C */  lw         $v0, %lo(D_800BE650)($v0)
    /* 99F14 800AB704 0800E003 */  jr         $ra
    /* 99F18 800AB708 00000000 */   nop
endlabel GetVideoMode
    /* 99F1C 800AB70C 00000000 */  nop
    /* 99F20 800AB710 00000000 */  nop
    /* 99F24 800AB714 00000000 */  nop
