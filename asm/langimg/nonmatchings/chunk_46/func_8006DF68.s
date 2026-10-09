nonmatching func_8006DF68, 0x28

glabel func_8006DF68
    /* 5C778 8006DF68 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5C77C 8006DF6C 0D80053C */  lui        $a1, %hi(D_800D11D0)
    /* 5C780 8006DF70 3838848F */  lw         $a0, %gp_rel(D_800C7F28)($gp)
    /* 5C784 8006DF74 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5C788 8006DF78 63B4010C */  jal        func_8006D18C
    /* 5C78C 8006DF7C D011A524 */   addiu     $a1, $a1, %lo(D_800D11D0)
    /* 5C790 8006DF80 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5C794 8006DF84 00000000 */  nop
    /* 5C798 8006DF88 0800E003 */  jr         $ra
    /* 5C79C 8006DF8C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006DF68
