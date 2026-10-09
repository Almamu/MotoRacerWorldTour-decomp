nonmatching func_801365C0, 0x30

glabel func_801365C0
    /* 3A8C 801365C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3A90 801365C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3A94 801365C8 22EC040C */  jal        VSync
    /* 3A98 801365CC 01000424 */   addiu     $a0, $zero, 0x1
    /* 3A9C 801365D0 1A80033C */  lui        $v1, %hi(D_8019DA50)
    /* 3AA0 801365D4 1A80053C */  lui        $a1, %hi(D_8019DA54)
    /* 3AA4 801365D8 50DA648C */  lw         $a0, %lo(D_8019DA50)($v1)
    /* 3AA8 801365DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3AAC 801365E0 23104400 */  subu       $v0, $v0, $a0
    /* 3AB0 801365E4 54DAA2AC */  sw         $v0, %lo(D_8019DA54)($a1)
    /* 3AB4 801365E8 0800E003 */  jr         $ra
    /* 3AB8 801365EC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_801365C0
