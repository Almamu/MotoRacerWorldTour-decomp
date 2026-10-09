nonmatching func_800815B0, 0x28

glabel func_800815B0
    /* 6FDC0 800815B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6FDC4 800815B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6FDC8 800815B8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6FDCC 800815BC 7605020C */  jal        func_800815D8
    /* 6FDD0 800815C0 21808000 */   addu      $s0, $a0, $zero
    /* 6FDD4 800815C4 21100002 */  addu       $v0, $s0, $zero
    /* 6FDD8 800815C8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6FDDC 800815CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 6FDE0 800815D0 0800E003 */  jr         $ra
    /* 6FDE4 800815D4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800815B0
