nonmatching func_8004F828, 0x14

glabel func_8004F828
    /* 3E038 8004F828 4000A524 */  addiu      $a1, $a1, 0x40
    /* 3E03C 8004F82C 0D80013C */  lui        $at, %hi(D_800C8868)
    /* 3E040 8004F830 688825AC */  sw         $a1, %lo(D_800C8868)($at)
    /* 3E044 8004F834 0800E003 */  jr         $ra
    /* 3E048 8004F838 00000000 */   nop
endlabel func_8004F828
