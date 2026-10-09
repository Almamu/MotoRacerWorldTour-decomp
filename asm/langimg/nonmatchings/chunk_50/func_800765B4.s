nonmatching func_800765B4, 0x4C

glabel func_800765B4
    /* 64DC4 800765B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 64DC8 800765B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 64DCC 800765BC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 64DD0 800765C0 4DD1010C */  jal        func_80074534
    /* 64DD4 800765C4 21808000 */   addu      $s0, $a0, $zero
    /* 64DD8 800765C8 21100002 */  addu       $v0, $s0, $zero
    /* 64DDC 800765CC 0D80033C */  lui        $v1, %hi(D_800C87EC)
    /* 64DE0 800765D0 EC876324 */  addiu      $v1, $v1, %lo(D_800C87EC)
    /* 64DE4 800765D4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 64DE8 800765D8 01000424 */  addiu      $a0, $zero, 0x1
    /* 64DEC 800765DC 340003AE */  sw         $v1, 0x34($s0)
    /* 64DF0 800765E0 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 64DF4 800765E4 000004AE */  sw         $a0, 0x0($s0)
    /* 64DF8 800765E8 380003AE */  sw         $v1, 0x38($s0)
    /* 64DFC 800765EC 200000AE */  sw         $zero, 0x20($s0)
    /* 64E00 800765F0 400000AE */  sw         $zero, 0x40($s0)
    /* 64E04 800765F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 64E08 800765F8 0800E003 */  jr         $ra
    /* 64E0C 800765FC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800765B4
