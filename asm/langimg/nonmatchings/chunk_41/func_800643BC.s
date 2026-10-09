nonmatching func_800643BC, 0x28

glabel func_800643BC
    /* 52BCC 800643BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 52BD0 800643C0 0C80023C */  lui        $v0, %hi(D_800C7684)
    /* 52BD4 800643C4 84764224 */  addiu      $v0, $v0, %lo(D_800C7684)
    /* 52BD8 800643C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 52BDC 800643CC BB8B010C */  jal        func_80062EEC
    /* 52BE0 800643D0 500082AC */   sw        $v0, 0x50($a0)
    /* 52BE4 800643D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 52BE8 800643D8 00000000 */  nop
    /* 52BEC 800643DC 0800E003 */  jr         $ra
    /* 52BF0 800643E0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800643BC
