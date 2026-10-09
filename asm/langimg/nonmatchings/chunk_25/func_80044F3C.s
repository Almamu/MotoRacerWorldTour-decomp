nonmatching func_80044F3C, 0x60

glabel func_80044F3C
    /* 3374C 80044F3C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 33750 80044F40 21108000 */  addu       $v0, $a0, $zero
    /* 33754 80044F44 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 33758 80044F48 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 3375C 80044F4C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 33760 80044F50 2190A000 */  addu       $s2, $a1, $zero
    /* 33764 80044F54 1000B0AF */  sw         $s0, 0x10($sp)
    /* 33768 80044F58 2180C000 */  addu       $s0, $a2, $zero
    /* 3376C 80044F5C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 33770 80044F60 1400B1AF */  sw         $s1, 0x14($sp)
    /* 33774 80044F64 1800458C */  lw         $a1, 0x18($v0)
    /* 33778 80044F68 F1E3010C */  jal        func_80078FC4
    /* 3377C 80044F6C 2188E000 */   addu      $s1, $a3, $zero
    /* 33780 80044F70 21204000 */  addu       $a0, $v0, $zero
    /* 33784 80044F74 21284002 */  addu       $a1, $s2, $zero
    /* 33788 80044F78 21300002 */  addu       $a2, $s0, $zero
    /* 3378C 80044F7C 33E3010C */  jal        func_80078CCC
    /* 33790 80044F80 21382002 */   addu      $a3, $s1, $zero
    /* 33794 80044F84 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 33798 80044F88 1800B28F */  lw         $s2, 0x18($sp)
    /* 3379C 80044F8C 1400B18F */  lw         $s1, 0x14($sp)
    /* 337A0 80044F90 1000B08F */  lw         $s0, 0x10($sp)
    /* 337A4 80044F94 0800E003 */  jr         $ra
    /* 337A8 80044F98 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80044F3C
