nonmatching func_8005C608, 0x40

glabel func_8005C608
    /* 4AE18 8005C608 0D80043C */  lui        $a0, %hi(D_800D5F38)
    /* 4AE1C 8005C60C 385F848C */  lw         $a0, %lo(D_800D5F38)($a0)
    /* 4AE20 8005C610 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4AE24 8005C614 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4AE28 8005C618 A243010C */  jal        func_80050E88
    /* 4AE2C 8005C61C 00000000 */   nop
    /* 4AE30 8005C620 0D80053C */  lui        $a1, %hi(D_800D5F34)
    /* 4AE34 8005C624 345FA58C */  lw         $a1, %lo(D_800D5F34)($a1)
    /* 4AE38 8005C628 0D80063C */  lui        $a2, %hi(D_800D5F38)
    /* 4AE3C 8005C62C 385FC68C */  lw         $a2, %lo(D_800D5F38)($a2)
    /* 4AE40 8005C630 3BB2010C */  jal        func_8006C8EC
    /* 4AE44 8005C634 21204000 */   addu      $a0, $v0, $zero
    /* 4AE48 8005C638 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4AE4C 8005C63C 00000000 */  nop
    /* 4AE50 8005C640 0800E003 */  jr         $ra
    /* 4AE54 8005C644 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005C608
