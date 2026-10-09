nonmatching func_800A6448, 0x14

glabel func_800A6448
    /* 94C58 800A6448 0C80033C */  lui        $v1, %hi(D_800BCE3C)
    /* 94C5C 800A644C 0C80023C */  lui        $v0, %hi(D_800BCA3C)
    /* 94C60 800A6450 3CCA4224 */  addiu      $v0, $v0, %lo(D_800BCA3C)
    /* 94C64 800A6454 0800E003 */  jr         $ra
    /* 94C68 800A6458 3CCE62AC */   sw        $v0, %lo(D_800BCE3C)($v1)
endlabel func_800A6448
