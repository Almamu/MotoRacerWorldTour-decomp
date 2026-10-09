nonmatching func_80078244, 0x3C

glabel func_80078244
    /* 66A54 80078244 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 66A58 80078248 1000B0AF */  sw         $s0, 0x10($sp)
    /* 66A5C 8007824C 21808000 */  addu       $s0, $a0, $zero
    /* 66A60 80078250 1400BFAF */  sw         $ra, 0x14($sp)
    /* 66A64 80078254 DCAE010C */  jal        func_8006BB70
    /* 66A68 80078258 60010426 */   addiu     $a0, $s0, 0x160
    /* 66A6C 8007825C A0E0010C */  jal        func_80078280
    /* 66A70 80078260 21200002 */   addu      $a0, $s0, $zero
    /* 66A74 80078264 03000324 */  addiu      $v1, $zero, 0x3
    /* 66A78 80078268 1400BF8F */  lw         $ra, 0x14($sp)
    /* 66A7C 8007826C 21100002 */  addu       $v0, $s0, $zero
    /* 66A80 80078270 540103AE */  sw         $v1, 0x154($s0)
    /* 66A84 80078274 1000B08F */  lw         $s0, 0x10($sp)
    /* 66A88 80078278 0800E003 */  jr         $ra
    /* 66A8C 8007827C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80078244
