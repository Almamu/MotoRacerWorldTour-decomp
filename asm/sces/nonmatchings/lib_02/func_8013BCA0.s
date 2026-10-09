nonmatching func_8013BCA0, 0x14

glabel func_8013BCA0
    /* 916C 8013BCA0 1C80023C */  lui        $v0, %hi(D_801BF048)
    /* 9170 8013BCA4 48F0428C */  lw         $v0, %lo(D_801BF048)($v0)
    /* 9174 8013BCA8 1C80013C */  lui        $at, %hi(D_801BF048)
    /* 9178 8013BCAC 0800E003 */  jr         $ra
    /* 917C 8013BCB0 48F024AC */   sw        $a0, %lo(D_801BF048)($at)
endlabel func_8013BCA0
