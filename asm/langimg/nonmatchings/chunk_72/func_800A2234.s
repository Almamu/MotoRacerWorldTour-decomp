nonmatching func_800A2234, 0x5C

glabel func_800A2234
    /* 90A44 800A2234 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 90A48 800A2238 1000B0AF */  sw         $s0, 0x10($sp)
    /* 90A4C 800A223C 2180C000 */  addu       $s0, $a2, $zero
    /* 90A50 800A2240 1400B1AF */  sw         $s1, 0x14($sp)
    /* 90A54 800A2244 21888000 */  addu       $s1, $a0, $zero
    /* 90A58 800A2248 1800B2AF */  sw         $s2, 0x18($sp)
    /* 90A5C 800A224C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 90A60 800A2250 BF87020C */  jal        func_800A1EFC
    /* 90A64 800A2254 2190E000 */   addu      $s2, $a3, $zero
    /* 90A68 800A2258 06004010 */  beqz       $v0, .L800A2274
    /* 90A6C 800A225C 21202002 */   addu      $a0, $s1, $zero
    /* 90A70 800A2260 21284000 */  addu       $a1, $v0, $zero
    /* 90A74 800A2264 21300002 */  addu       $a2, $s0, $zero
    /* 90A78 800A2268 5288020C */  jal        func_800A2148
    /* 90A7C 800A226C 21384002 */   addu      $a3, $s2, $zero
    /* 90A80 800A2270 21804000 */  addu       $s0, $v0, $zero
  .L800A2274:
    /* 90A84 800A2274 21100002 */  addu       $v0, $s0, $zero
    /* 90A88 800A2278 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 90A8C 800A227C 1800B28F */  lw         $s2, 0x18($sp)
    /* 90A90 800A2280 1400B18F */  lw         $s1, 0x14($sp)
    /* 90A94 800A2284 1000B08F */  lw         $s0, 0x10($sp)
    /* 90A98 800A2288 0800E003 */  jr         $ra
    /* 90A9C 800A228C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800A2234
