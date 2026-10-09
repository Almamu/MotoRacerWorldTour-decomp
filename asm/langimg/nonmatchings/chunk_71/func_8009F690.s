nonmatching func_8009F690, 0x30

glabel func_8009F690
    /* 8DEA0 8009F690 F055848F */  lw         $a0, %gp_rel(D_800C9CE0)($gp)
    /* 8DEA4 8009F694 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DEA8 8009F698 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DEAC 8009F69C F95580A3 */  sb         $zero, %gp_rel(D_800C9CE9)($gp)
    /* 8DEB0 8009F6A0 F85580A3 */  sb         $zero, %gp_rel(D_800C9CE8)($gp)
    /* 8DEB4 8009F6A4 CEB2010C */  jal        func_8006CB38
    /* 8DEB8 8009F6A8 00000000 */   nop
    /* 8DEBC 8009F6AC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DEC0 8009F6B0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8DEC4 8009F6B4 F05582AF */  sw         $v0, %gp_rel(D_800C9CE0)($gp)
    /* 8DEC8 8009F6B8 0800E003 */  jr         $ra
    /* 8DECC 8009F6BC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F690
