nonmatching func_800A7660, 0x14

glabel func_800A7660
    /* 95E70 800A7660 0C80023C */  lui        $v0, %hi(D_800BD020)
    /* 95E74 800A7664 20D0428C */  lw         $v0, %lo(D_800BD020)($v0)
    /* 95E78 800A7668 0C80013C */  lui        $at, %hi(D_800BD020)
    /* 95E7C 800A766C 0800E003 */  jr         $ra
    /* 95E80 800A7670 20D024AC */   sw        $a0, %lo(D_800BD020)($at)
endlabel func_800A7660
