nonmatching func_800180F4, 0x3C

glabel func_800180F4
    /* 6904 800180F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6908 800180F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 690C 800180FC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6910 80018100 0058000C */  jal        __6Cobjet
    /* 6914 80018104 21808000 */   addu      $s0, $a0, $zero
    /* 6918 80018108 21100002 */  addu       $v0, $s0, $zero
    /* 691C 8001810C 0C80033C */  lui        $v1, %hi(D_800C4958)
    /* 6920 80018110 58496324 */  addiu      $v1, $v1, %lo(D_800C4958)
    /* 6924 80018114 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6928 80018118 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 692C 8001811C 500003AE */  sw         $v1, 0x50($s0)
    /* 6930 80018120 5C0004AE */  sw         $a0, 0x5C($s0)
    /* 6934 80018124 1000B08F */  lw         $s0, 0x10($sp)
    /* 6938 80018128 0800E003 */  jr         $ra
    /* 693C 8001812C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800180F4
