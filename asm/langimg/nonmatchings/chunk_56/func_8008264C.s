nonmatching func_8008264C, 0x30

glabel func_8008264C
    /* 70E5C 8008264C 0D80023C */  lui        $v0, %hi(D_800CC030)
    /* 70E60 80082650 30C04224 */  addiu      $v0, $v0, %lo(D_800CC030)
    /* 70E64 80082654 4C00438C */  lw         $v1, 0x4C($v0)
    /* 70E68 80082658 4800448C */  lw         $a0, 0x48($v0)
    /* 70E6C 8008265C 4400458C */  lw         $a1, 0x44($v0)
    /* 70E70 80082660 5000468C */  lw         $a2, 0x50($v0)
    /* 70E74 80082664 687683AF */  sw         $v1, %gp_rel(D_800CBD58)($gp)
    /* 70E78 80082668 6C7684AF */  sw         $a0, %gp_rel(D_800CBD5C)($gp)
    /* 70E7C 8008266C 707685AF */  sw         $a1, %gp_rel(D_800CBD60)($gp)
    /* 70E80 80082670 747686AF */  sw         $a2, %gp_rel(D_800CBD64)($gp)
    /* 70E84 80082674 0800E003 */  jr         $ra
    /* 70E88 80082678 00000000 */   nop
endlabel func_8008264C
