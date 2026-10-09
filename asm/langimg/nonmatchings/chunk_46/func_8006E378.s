nonmatching func_8006E378, 0x50

glabel func_8006E378
    /* 5CB88 8006E378 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5CB8C 8006E37C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5CB90 8006E380 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5CB94 8006E384 30B8010C */  jal        func_8006E0C0
    /* 5CB98 8006E388 21808000 */   addu      $s0, $a0, $zero
    /* 5CB9C 8006E38C 0C00038E */  lw         $v1, 0xC($s0)
    /* 5CBA0 8006E390 01000224 */  addiu      $v0, $zero, 0x1
    /* 5CBA4 8006E394 200002AE */  sw         $v0, 0x20($s0)
    /* 5CBA8 8006E398 240000AE */  sw         $zero, 0x24($s0)
    /* 5CBAC 8006E39C 280000AE */  sw         $zero, 0x28($s0)
    /* 5CBB0 8006E3A0 2C0000AE */  sw         $zero, 0x2C($s0)
    /* 5CBB4 8006E3A4 18006484 */  lh         $a0, 0x18($v1)
    /* 5CBB8 8006E3A8 1C00628C */  lw         $v0, 0x1C($v1)
    /* 5CBBC 8006E3AC 00000000 */  nop
    /* 5CBC0 8006E3B0 09F84000 */  jalr       $v0
    /* 5CBC4 8006E3B4 21200402 */   addu      $a0, $s0, $a0
    /* 5CBC8 8006E3B8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5CBCC 8006E3BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 5CBD0 8006E3C0 0800E003 */  jr         $ra
    /* 5CBD4 8006E3C4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006E378
