nonmatching func_800A1BD0, 0x10

glabel func_800A1BD0
    /* 903E0 800A1BD0 0C80033C */  lui        $v1, %hi(D_800B887C)
    /* 903E4 800A1BD4 01000224 */  addiu      $v0, $zero, 0x1
    /* 903E8 800A1BD8 0800E003 */  jr         $ra
    /* 903EC 800A1BDC 7C8862AC */   sw        $v0, %lo(D_800B887C)($v1)
endlabel func_800A1BD0
