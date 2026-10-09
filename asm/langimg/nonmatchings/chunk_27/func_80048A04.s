nonmatching func_80048A04, 0x28

glabel func_80048A04
    /* 37214 80048A04 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 37218 80048A08 0C80023C */  lui        $v0, %hi(D_800C5CC8)
    /* 3721C 80048A0C C85C4224 */  addiu      $v0, $v0, %lo(D_800C5CC8)
    /* 37220 80048A10 1000BFAF */  sw         $ra, 0x10($sp)
    /* 37224 80048A14 0F58000C */  jal        _._6Cobjet
    /* 37228 80048A18 500082AC */   sw        $v0, 0x50($a0)
    /* 3722C 80048A1C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 37230 80048A20 00000000 */  nop
    /* 37234 80048A24 0800E003 */  jr         $ra
    /* 37238 80048A28 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80048A04
