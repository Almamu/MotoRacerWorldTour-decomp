nonmatching func_80074D78, 0x28

glabel func_80074D78
    /* 63588 80074D78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6358C 80074D7C 0D80023C */  lui        $v0, %hi(D_800C87B4)
    /* 63590 80074D80 B4874224 */  addiu      $v0, $v0, %lo(D_800C87B4)
    /* 63594 80074D84 1000BFAF */  sw         $ra, 0x10($sp)
    /* 63598 80074D88 6BD1010C */  jal        func_800745AC
    /* 6359C 80074D8C 340082AC */   sw        $v0, 0x34($a0)
    /* 635A0 80074D90 1000BF8F */  lw         $ra, 0x10($sp)
    /* 635A4 80074D94 00000000 */  nop
    /* 635A8 80074D98 0800E003 */  jr         $ra
    /* 635AC 80074D9C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80074D78
