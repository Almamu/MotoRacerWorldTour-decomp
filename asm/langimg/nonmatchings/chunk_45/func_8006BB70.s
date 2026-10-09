nonmatching func_8006BB70, 0x2C

glabel func_8006BB70
    /* 5A380 8006BB70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5A384 8006BB74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5A388 8006BB78 21808000 */  addu       $s0, $a0, $zero
    /* 5A38C 8006BB7C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5A390 8006BB80 E7AE010C */  jal        func_8006BB9C
    /* 5A394 8006BB84 21280000 */   addu      $a1, $zero, $zero
    /* 5A398 8006BB88 21100002 */  addu       $v0, $s0, $zero
    /* 5A39C 8006BB8C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5A3A0 8006BB90 1000B08F */  lw         $s0, 0x10($sp)
    /* 5A3A4 8006BB94 0800E003 */  jr         $ra
    /* 5A3A8 8006BB98 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006BB70
