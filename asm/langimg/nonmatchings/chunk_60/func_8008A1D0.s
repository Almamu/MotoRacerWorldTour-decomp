nonmatching func_8008A1D0, 0x50

glabel func_8008A1D0
    /* 789E0 8008A1D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 789E4 8008A1D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 789E8 8008A1D8 21808000 */  addu       $s0, $a0, $zero
    /* 789EC 8008A1DC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 789F0 8008A1E0 FE26020C */  jal        func_80089BF8
    /* 789F4 8008A1E4 0C000426 */   addiu     $a0, $s0, 0xC
    /* 789F8 8008A1E8 ED27020C */  jal        func_80089FB4
    /* 789FC 8008A1EC 2C000426 */   addiu     $a0, $s0, 0x2C
    /* 78A00 8008A1F0 8F26020C */  jal        func_80089A3C
    /* 78A04 8008A1F4 3C000426 */   addiu     $a0, $s0, 0x3C
    /* 78A08 8008A1F8 8F26020C */  jal        func_80089A3C
    /* 78A0C 8008A1FC 4C000426 */   addiu     $a0, $s0, 0x4C
    /* 78A10 8008A200 21200002 */  addu       $a0, $s0, $zero
    /* 78A14 8008A204 21280000 */  addu       $a1, $zero, $zero
    /* 78A18 8008A208 56D8020C */  jal        memset
    /* 78A1C 8008A20C 74000624 */   addiu     $a2, $zero, 0x74
    /* 78A20 8008A210 1400BF8F */  lw         $ra, 0x14($sp)
    /* 78A24 8008A214 1000B08F */  lw         $s0, 0x10($sp)
    /* 78A28 8008A218 0800E003 */  jr         $ra
    /* 78A2C 8008A21C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8008A1D0
