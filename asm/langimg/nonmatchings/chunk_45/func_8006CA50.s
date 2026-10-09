nonmatching func_8006CA50, 0x28

glabel func_8006CA50
    /* 5B260 8006CA50 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5B264 8006CA54 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5B268 8006CA58 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5B26C 8006CA5C 383880AF */  sw         $zero, %gp_rel(D_800C7F28)($gp)
    /* 5B270 8006CA60 DD51000C */  jal        func_80014774
    /* 5B274 8006CA64 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
    /* 5B278 8006CA68 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5B27C 8006CA6C 00000000 */  nop
    /* 5B280 8006CA70 0800E003 */  jr         $ra
    /* 5B284 8006CA74 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006CA50
