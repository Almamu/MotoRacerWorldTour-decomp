nonmatching func_80044DB8, 0x44

glabel func_80044DB8
    /* 335C8 80044DB8 7000828C */  lw         $v0, 0x70($a0)
    /* 335CC 80044DBC 0D80013C */  lui        $at, %hi(D_800C873C)
    /* 335D0 80044DC0 3C8722AC */  sw         $v0, %lo(D_800C873C)($at)
    /* 335D4 80044DC4 7400838C */  lw         $v1, 0x74($a0)
    /* 335D8 80044DC8 0C80013C */  lui        $at, %hi(D_800C4938)
    /* 335DC 80044DCC 384923AC */  sw         $v1, %lo(D_800C4938)($at)
    /* 335E0 80044DD0 7800828C */  lw         $v0, 0x78($a0)
    /* 335E4 80044DD4 0D80013C */  lui        $at, %hi(D_800C8C68)
    /* 335E8 80044DD8 688C22AC */  sw         $v0, %lo(D_800C8C68)($at)
    /* 335EC 80044DDC 7C00838C */  lw         $v1, 0x7C($a0)
    /* 335F0 80044DE0 0D80013C */  lui        $at, %hi(D_800CBE90)
    /* 335F4 80044DE4 90BE23AC */  sw         $v1, %lo(D_800CBE90)($at)
    /* 335F8 80044DE8 8000858C */  lw         $a1, 0x80($a0)
    /* 335FC 80044DEC 0D80013C */  lui        $at, %hi(D_800CBE94)
    /* 33600 80044DF0 94BE25AC */  sw         $a1, %lo(D_800CBE94)($at)
    /* 33604 80044DF4 0800E003 */  jr         $ra
    /* 33608 80044DF8 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_80044DB8
