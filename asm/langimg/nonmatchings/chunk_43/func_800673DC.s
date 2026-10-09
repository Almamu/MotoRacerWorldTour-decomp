nonmatching func_800673DC, 0x40

glabel func_800673DC
    /* 55BEC 800673DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 55BF0 800673E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 55BF4 800673E4 21808000 */  addu       $s0, $a0, $zero
    /* 55BF8 800673E8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 55BFC 800673EC F990010C */  jal        func_800643E4
    /* 55C00 800673F0 E80000AE */   sw        $zero, 0xE8($s0)
    /* 55C04 800673F4 21200002 */  addu       $a0, $s0, $zero
    /* 55C08 800673F8 F00000A6 */  sh         $zero, 0xF0($s0)
    /* 55C0C 800673FC F20000A6 */  sh         $zero, 0xF2($s0)
    /* 55C10 80067400 100100AE */  sw         $zero, 0x110($s0)
    /* 55C14 80067404 368C010C */  jal        func_800630D8
    /* 55C18 80067408 F40000AE */   sw        $zero, 0xF4($s0)
    /* 55C1C 8006740C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 55C20 80067410 1000B08F */  lw         $s0, 0x10($sp)
    /* 55C24 80067414 0800E003 */  jr         $ra
    /* 55C28 80067418 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800673DC
