nonmatching func_80044E94, 0x44

glabel func_80044E94
    /* 336A4 80044E94 7000828C */  lw         $v0, 0x70($a0)
    /* 336A8 80044E98 0D80013C */  lui        $at, %hi(D_800C873C)
    /* 336AC 80044E9C 3C8722AC */  sw         $v0, %lo(D_800C873C)($at)
    /* 336B0 80044EA0 7400838C */  lw         $v1, 0x74($a0)
    /* 336B4 80044EA4 0C80013C */  lui        $at, %hi(D_800C4938)
    /* 336B8 80044EA8 384923AC */  sw         $v1, %lo(D_800C4938)($at)
    /* 336BC 80044EAC 7800828C */  lw         $v0, 0x78($a0)
    /* 336C0 80044EB0 0D80013C */  lui        $at, %hi(D_800C8C68)
    /* 336C4 80044EB4 688C22AC */  sw         $v0, %lo(D_800C8C68)($at)
    /* 336C8 80044EB8 7C00838C */  lw         $v1, 0x7C($a0)
    /* 336CC 80044EBC 0D80013C */  lui        $at, %hi(D_800CBE90)
    /* 336D0 80044EC0 90BE23AC */  sw         $v1, %lo(D_800CBE90)($at)
    /* 336D4 80044EC4 8000828C */  lw         $v0, 0x80($a0)
    /* 336D8 80044EC8 0D80013C */  lui        $at, %hi(D_800CBE94)
    /* 336DC 80044ECC 94BE22AC */  sw         $v0, %lo(D_800CBE94)($at)
    /* 336E0 80044ED0 0800E003 */  jr         $ra
    /* 336E4 80044ED4 00000000 */   nop
endlabel func_80044E94
