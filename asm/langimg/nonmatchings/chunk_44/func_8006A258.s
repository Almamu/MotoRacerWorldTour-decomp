nonmatching func_8006A258, 0x3C

glabel func_8006A258
    /* 58A68 8006A258 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 58A6C 8006A25C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 58A70 8006A260 1400BFAF */  sw         $ra, 0x14($sp)
    /* 58A74 8006A264 D4A7010C */  jal        func_80069F50
    /* 58A78 8006A268 21808000 */   addu      $s0, $a0, $zero
    /* 58A7C 8006A26C 0C80033C */  lui        $v1, %hi(D_800C76DC)
    /* 58A80 8006A270 DC766324 */  addiu      $v1, $v1, %lo(D_800C76DC)
    /* 58A84 8006A274 21200002 */  addu       $a0, $s0, $zero
    /* 58A88 8006A278 A5A8010C */  jal        func_8006A294
    /* 58A8C 8006A27C 0C0003AE */   sw        $v1, 0xC($s0)
    /* 58A90 8006A280 21100002 */  addu       $v0, $s0, $zero
    /* 58A94 8006A284 1400BF8F */  lw         $ra, 0x14($sp)
    /* 58A98 8006A288 1000B08F */  lw         $s0, 0x10($sp)
    /* 58A9C 8006A28C 0800E003 */  jr         $ra
    /* 58AA0 8006A290 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006A258
