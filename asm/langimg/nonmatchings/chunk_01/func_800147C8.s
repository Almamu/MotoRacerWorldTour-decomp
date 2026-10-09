nonmatching func_800147C8, 0x44

glabel func_800147C8
    /* 2FD8 800147C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FDC 800147CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FE0 800147D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2FE4 800147D4 2188A000 */  addu       $s1, $a1, $zero
    /* 2FE8 800147D8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2FEC 800147DC 0000258E */  lw         $a1, 0x0($s1)
    /* 2FF0 800147E0 E951000C */  jal        func_800147A4
    /* 2FF4 800147E4 21808000 */   addu      $s0, $a0, $zero
    /* 2FF8 800147E8 04002386 */  lh         $v1, 0x4($s1)
    /* 2FFC 800147EC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3000 800147F0 1400B18F */  lw         $s1, 0x14($sp)
    /* 3004 800147F4 40180300 */  sll        $v1, $v1, 1
    /* 3008 800147F8 21800302 */  addu       $s0, $s0, $v1
    /* 300C 800147FC 060002A6 */  sh         $v0, 0x6($s0)
    /* 3010 80014800 1000B08F */  lw         $s0, 0x10($sp)
    /* 3014 80014804 0800E003 */  jr         $ra
    /* 3018 80014808 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800147C8
