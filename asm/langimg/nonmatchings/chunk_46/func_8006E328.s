nonmatching func_8006E328, 0x50

glabel func_8006E328
    /* 5CB38 8006E328 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5CB3C 8006E32C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5CB40 8006E330 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5CB44 8006E334 22B8010C */  jal        func_8006E088
    /* 5CB48 8006E338 21808000 */   addu      $s0, $a0, $zero
    /* 5CB4C 8006E33C 0C00058E */  lw         $a1, 0xC($s0)
    /* 5CB50 8006E340 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5CB54 8006E344 100002AE */  sw         $v0, 0x10($s0)
    /* 5CB58 8006E348 140002AE */  sw         $v0, 0x14($s0)
    /* 5CB5C 8006E34C 180002AE */  sw         $v0, 0x18($s0)
    /* 5CB60 8006E350 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 5CB64 8006E354 1000A484 */  lh         $a0, 0x10($a1)
    /* 5CB68 8006E358 1400A38C */  lw         $v1, 0x14($a1)
    /* 5CB6C 8006E35C 00000000 */  nop
    /* 5CB70 8006E360 09F86000 */  jalr       $v1
    /* 5CB74 8006E364 21200402 */   addu      $a0, $s0, $a0
    /* 5CB78 8006E368 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5CB7C 8006E36C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5CB80 8006E370 0800E003 */  jr         $ra
    /* 5CB84 8006E374 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006E328
