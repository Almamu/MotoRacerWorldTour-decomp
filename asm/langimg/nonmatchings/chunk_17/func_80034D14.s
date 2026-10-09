nonmatching func_80034D14, 0x4C

glabel func_80034D14
    /* 23524 80034D14 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 23528 80034D18 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2352C 80034D1C 21808000 */  addu       $s0, $a0, $zero
    /* 23530 80034D20 1400B1AF */  sw         $s1, 0x14($sp)
    /* 23534 80034D24 1800BFAF */  sw         $ra, 0x18($sp)
    /* 23538 80034D28 59DA000C */  jal        func_80036964
    /* 2353C 80034D2C 2188A000 */   addu      $s1, $a1, $zero
    /* 23540 80034D30 21200002 */  addu       $a0, $s0, $zero
    /* 23544 80034D34 46D5000C */  jal        func_80035518
    /* 23548 80034D38 21282002 */   addu      $a1, $s1, $zero
    /* 2354C 80034D3C 41D6000C */  jal        func_80035904
    /* 23550 80034D40 21200002 */   addu      $a0, $s0, $zero
    /* 23554 80034D44 D3D9000C */  jal        func_8003674C
    /* 23558 80034D48 21200002 */   addu      $a0, $s0, $zero
    /* 2355C 80034D4C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 23560 80034D50 1400B18F */  lw         $s1, 0x14($sp)
    /* 23564 80034D54 1000B08F */  lw         $s0, 0x10($sp)
    /* 23568 80034D58 0800E003 */  jr         $ra
    /* 2356C 80034D5C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80034D14
