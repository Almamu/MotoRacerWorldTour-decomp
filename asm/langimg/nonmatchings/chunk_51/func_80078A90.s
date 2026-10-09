nonmatching func_80078A90, 0x40

glabel func_80078A90
    /* 672A0 80078A90 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 672A4 80078A94 2118C000 */  addu       $v1, $a2, $zero
    /* 672A8 80078A98 1000BFAF */  sw         $ra, 0x10($sp)
    /* 672AC 80078A9C 0C0083AC */  sw         $v1, 0xC($a0)
    /* 672B0 80078AA0 2800A28F */  lw         $v0, 0x28($sp)
    /* 672B4 80078AA4 2130E000 */  addu       $a2, $a3, $zero
    /* 672B8 80078AA8 180085AC */  sw         $a1, 0x18($a0)
    /* 672BC 80078AAC 21286000 */  addu       $a1, $v1, $zero
    /* 672C0 80078AB0 100086AC */  sw         $a2, 0x10($a0)
    /* 672C4 80078AB4 140082AC */  sw         $v0, 0x14($a0)
    /* 672C8 80078AB8 8222020C */  jal        func_80088A08
    /* 672CC 80078ABC 30008424 */   addiu     $a0, $a0, 0x30
    /* 672D0 80078AC0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 672D4 80078AC4 01000224 */  addiu      $v0, $zero, 0x1
    /* 672D8 80078AC8 0800E003 */  jr         $ra
    /* 672DC 80078ACC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80078A90
