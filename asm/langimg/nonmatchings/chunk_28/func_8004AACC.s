nonmatching func_8004AACC, 0x40

glabel func_8004AACC
    /* 392DC 8004AACC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 392E0 8004AAD0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 392E4 8004AAD4 21808000 */  addu       $s0, $a0, $zero
    /* 392E8 8004AAD8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 392EC 8004AADC FA99020C */  jal        func_800A67E8
    /* 392F0 8004AAE0 21200000 */   addu      $a0, $zero, $zero
    /* 392F4 8004AAE4 0000048E */  lw         $a0, 0x0($s0)
    /* 392F8 8004AAE8 59D5020C */  jal        func_800B5564
    /* 392FC 8004AAEC 00000000 */   nop
    /* 39300 8004AAF0 94B2010C */  jal        func_8006CA50
    /* 39304 8004AAF4 00000000 */   nop
    /* 39308 8004AAF8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3930C 8004AAFC 1000B08F */  lw         $s0, 0x10($sp)
    /* 39310 8004AB00 01000224 */  addiu      $v0, $zero, 0x1
    /* 39314 8004AB04 0800E003 */  jr         $ra
    /* 39318 8004AB08 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004AACC
