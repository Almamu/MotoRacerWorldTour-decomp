nonmatching func_8006C110, 0x30

glabel func_8006C110
    /* 5A920 8006C110 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5A924 8006C114 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5A928 8006C118 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5A92C 8006C11C 50B0010C */  jal        func_8006C140
    /* 5A930 8006C120 21808000 */   addu      $s0, $a0, $zero
    /* 5A934 8006C124 0000038E */  lw         $v1, 0x0($s0)
    /* 5A938 8006C128 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5A93C 8006C12C 01006324 */  addiu      $v1, $v1, 0x1
    /* 5A940 8006C130 000003AE */  sw         $v1, 0x0($s0)
    /* 5A944 8006C134 1000B08F */  lw         $s0, 0x10($sp)
    /* 5A948 8006C138 0800E003 */  jr         $ra
    /* 5A94C 8006C13C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006C110
