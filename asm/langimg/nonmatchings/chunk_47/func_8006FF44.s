nonmatching func_8006FF44, 0x34

glabel func_8006FF44
    /* 5E754 8006FF44 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5E758 8006FF48 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E75C 8006FF4C 21808000 */  addu       $s0, $a0, $zero
    /* 5E760 8006FF50 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5E764 8006FF54 99BF010C */  jal        func_8006FE64
    /* 5E768 8006FF58 21280000 */   addu      $a1, $zero, $zero
    /* 5E76C 8006FF5C 08000426 */  addiu      $a0, $s0, 0x8
    /* 5E770 8006FF60 465A020C */  jal        func_80096918
    /* 5E774 8006FF64 01000524 */   addiu     $a1, $zero, 0x1
    /* 5E778 8006FF68 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5E77C 8006FF6C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E780 8006FF70 0800E003 */  jr         $ra
    /* 5E784 8006FF74 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006FF44
