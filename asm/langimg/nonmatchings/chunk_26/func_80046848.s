nonmatching func_80046848, 0x28

glabel func_80046848
    /* 35058 80046848 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3505C 8004684C 0C80023C */  lui        $v0, %hi(D_800C5BF0)
    /* 35060 80046850 F05B4224 */  addiu      $v0, $v0, %lo(D_800C5BF0)
    /* 35064 80046854 1000BFAF */  sw         $ra, 0x10($sp)
    /* 35068 80046858 3EFF000C */  jal        func_8003FCF8
    /* 3506C 8004685C 680082AC */   sw        $v0, 0x68($a0)
    /* 35070 80046860 1000BF8F */  lw         $ra, 0x10($sp)
    /* 35074 80046864 00000000 */  nop
    /* 35078 80046868 0800E003 */  jr         $ra
    /* 3507C 8004686C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80046848
