nonmatching CdReadyCallback, 0x14

glabel CdReadyCallback
    /* 95EB8 800A76A8 0C80023C */  lui        $v0, %hi(D_800BD01C)
    /* 95EBC 800A76AC 1CD0428C */  lw         $v0, %lo(D_800BD01C)($v0)
    /* 95EC0 800A76B0 0C80013C */  lui        $at, %hi(D_800BD01C)
    /* 95EC4 800A76B4 0800E003 */  jr         $ra
    /* 95EC8 800A76B8 1CD024AC */   sw        $a0, %lo(D_800BD01C)($at)
endlabel CdReadyCallback
