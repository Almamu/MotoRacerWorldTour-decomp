nonmatching func_8006A814, 0x34

glabel func_8006A814
    /* 59024 8006A814 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 59028 8006A818 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5902C 8006A81C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 59030 8006A820 E1A7010C */  jal        func_80069F84
    /* 59034 8006A824 21808000 */   addu      $s0, $a0, $zero
    /* 59038 8006A828 02000224 */  addiu      $v0, $zero, 0x2
    /* 5903C 8006A82C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 59040 8006A830 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 59044 8006A834 000002A2 */  sb         $v0, 0x0($s0)
    /* 59048 8006A838 480003AE */  sw         $v1, 0x48($s0)
    /* 5904C 8006A83C 1000B08F */  lw         $s0, 0x10($sp)
    /* 59050 8006A840 0800E003 */  jr         $ra
    /* 59054 8006A844 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006A814
