nonmatching func_8009D7BC, 0x48

glabel func_8009D7BC
    /* 8BFCC 8009D7BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8BFD0 8009D7C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8BFD4 8009D7C4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8BFD8 8009D7C8 6F90020C */  jal        func_800A41BC
    /* 8BFDC 8009D7CC 21808000 */   addu      $s0, $a0, $zero
    /* 8BFE0 8009D7D0 8291020C */  jal        func_800A4608
    /* 8BFE4 8009D7D4 01000424 */   addiu     $a0, $zero, 0x1
    /* 8BFE8 8009D7D8 3A78020C */  jal        func_8009E0E8
    /* 8BFEC 8009D7DC 21200002 */   addu      $a0, $s0, $zero
    /* 8BFF0 8009D7E0 21200002 */  addu       $a0, $s0, $zero
    /* 8BFF4 8009D7E4 E875020C */  jal        func_8009D7A0
    /* 8BFF8 8009D7E8 21280000 */   addu      $a1, $zero, $zero
    /* 8BFFC 8009D7EC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8C000 8009D7F0 01000224 */  addiu      $v0, $zero, 0x1
    /* 8C004 8009D7F4 540002AE */  sw         $v0, 0x54($s0)
    /* 8C008 8009D7F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C00C 8009D7FC 0800E003 */  jr         $ra
    /* 8C010 8009D800 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009D7BC
