nonmatching func_80135D34, 0x64

glabel func_80135D34
    /* 3200 80135D34 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3204 80135D38 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3208 80135D3C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 320C 80135D40 36DB040C */  jal        func_80136CD8
    /* 3210 80135D44 21808000 */   addu      $s0, $a0, $zero
    /* 3214 80135D48 9DDB040C */  jal        func_80136E74
    /* 3218 80135D4C 21200000 */   addu      $a0, $zero, $zero
    /* 321C 80135D50 43D5040C */  jal        func_8013550C
    /* 3220 80135D54 21200002 */   addu      $a0, $s0, $zero
    /* 3224 80135D58 41D5040C */  jal        func_80135504
    /* 3228 80135D5C 00000000 */   nop
    /* 322C 80135D60 08004010 */  beqz       $v0, .L80135D84
    /* 3230 80135D64 00000000 */   nop
    /* 3234 80135D68 3FD5040C */  jal        func_801354FC
    /* 3238 80135D6C 00000000 */   nop
    /* 323C 80135D70 21184000 */  addu       $v1, $v0, $zero
    /* 3240 80135D74 04006010 */  beqz       $v1, .L80135D88
    /* 3244 80135D78 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 3248 80135D7C 62D70408 */  j          .L80135D88
    /* 324C 80135D80 01000224 */   addiu     $v0, $zero, 0x1
  .L80135D84:
    /* 3250 80135D84 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L80135D88:
    /* 3254 80135D88 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3258 80135D8C 1000B08F */  lw         $s0, 0x10($sp)
    /* 325C 80135D90 0800E003 */  jr         $ra
    /* 3260 80135D94 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80135D34
