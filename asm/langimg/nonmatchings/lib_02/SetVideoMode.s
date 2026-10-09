nonmatching SetVideoMode, 0x14

glabel SetVideoMode
    /* 99EF8 800AB6E8 0C80023C */  lui        $v0, %hi(D_800BE650)
    /* 99EFC 800AB6EC 50E6428C */  lw         $v0, %lo(D_800BE650)($v0)
    /* 99F00 800AB6F0 0C80013C */  lui        $at, %hi(D_800BE650)
    /* 99F04 800AB6F4 0800E003 */  jr         $ra
    /* 99F08 800AB6F8 50E624AC */   sw        $a0, %lo(D_800BE650)($at)
endlabel SetVideoMode
