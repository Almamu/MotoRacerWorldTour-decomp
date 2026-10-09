nonmatching func_800A7694, 0x14

glabel func_800A7694
    /* 95EA4 800A7694 0C80023C */  lui        $v0, %hi(D_800BD018)
    /* 95EA8 800A7698 18D0428C */  lw         $v0, %lo(D_800BD018)($v0)
    /* 95EAC 800A769C 0C80013C */  lui        $at, %hi(D_800BD018)
    /* 95EB0 800A76A0 0800E003 */  jr         $ra
    /* 95EB4 800A76A4 18D024AC */   sw        $a0, %lo(D_800BD018)($at)
endlabel func_800A7694
