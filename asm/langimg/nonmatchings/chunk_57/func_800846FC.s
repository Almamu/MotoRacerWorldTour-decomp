nonmatching func_800846FC, 0x24

glabel func_800846FC
    /* 72F0C 800846FC 0D80023C */  lui        $v0, %hi(D_800CBD30)
    /* 72F10 80084700 30BD4224 */  addiu      $v0, $v0, %lo(D_800CBD30)
    /* 72F14 80084704 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 72F18 80084708 407680AF */  sw         $zero, %gp_rel(D_800CBD30)($gp)
    /* 72F1C 8008470C 040040AC */  sw         $zero, 0x4($v0)
    /* 72F20 80084710 080043AC */  sw         $v1, 0x8($v0)
    /* 72F24 80084714 0C0040AC */  sw         $zero, 0xC($v0)
    /* 72F28 80084718 0800E003 */  jr         $ra
    /* 72F2C 8008471C 100043AC */   sw        $v1, 0x10($v0)
endlabel func_800846FC
