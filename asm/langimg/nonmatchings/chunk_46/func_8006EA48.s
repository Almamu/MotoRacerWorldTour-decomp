nonmatching func_8006EA48, 0x40

glabel func_8006EA48
    /* 5D258 8006EA48 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5D25C 8006EA4C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5D260 8006EA50 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5D264 8006EA54 30B8010C */  jal        func_8006E0C0
    /* 5D268 8006EA58 21808000 */   addu      $s0, $a0, $zero
    /* 5D26C 8006EA5C 0C00028E */  lw         $v0, 0xC($s0)
    /* 5D270 8006EA60 00000000 */  nop
    /* 5D274 8006EA64 18004484 */  lh         $a0, 0x18($v0)
    /* 5D278 8006EA68 1C00438C */  lw         $v1, 0x1C($v0)
    /* 5D27C 8006EA6C 00000000 */  nop
    /* 5D280 8006EA70 09F86000 */  jalr       $v1
    /* 5D284 8006EA74 21200402 */   addu      $a0, $s0, $a0
    /* 5D288 8006EA78 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5D28C 8006EA7C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5D290 8006EA80 0800E003 */  jr         $ra
    /* 5D294 8006EA84 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006EA48
