nonmatching func_8006C77C, 0x24

glabel func_8006C77C
    /* 5AF8C 8006C77C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5AF90 8006C780 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5AF94 8006C784 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5AF98 8006C788 0352000C */  jal        func_8001480C
    /* 5AF9C 8006C78C D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5AFA0 8006C790 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5AFA4 8006C794 00000000 */  nop
    /* 5AFA8 8006C798 0800E003 */  jr         $ra
    /* 5AFAC 8006C79C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006C77C
