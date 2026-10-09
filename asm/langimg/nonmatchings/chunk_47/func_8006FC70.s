nonmatching func_8006FC70, 0x3C

glabel func_8006FC70
    /* 5E480 8006FC70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5E484 8006FC74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E488 8006FC78 21808000 */  addu       $s0, $a0, $zero
    /* 5E48C 8006FC7C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5E490 8006FC80 B759020C */  jal        func_800966DC
    /* 5E494 8006FC84 08000426 */   addiu     $a0, $s0, 0x8
    /* 5E498 8006FC88 21200002 */  addu       $a0, $s0, $zero
    /* 5E49C 8006FC8C 99BF010C */  jal        func_8006FE64
    /* 5E4A0 8006FC90 01000524 */   addiu     $a1, $zero, 0x1
    /* 5E4A4 8006FC94 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5E4A8 8006FC98 21100002 */  addu       $v0, $s0, $zero
    /* 5E4AC 8006FC9C 000000AE */  sw         $zero, 0x0($s0)
    /* 5E4B0 8006FCA0 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E4B4 8006FCA4 0800E003 */  jr         $ra
    /* 5E4B8 8006FCA8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006FC70
