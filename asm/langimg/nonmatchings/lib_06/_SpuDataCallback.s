nonmatching _SpuDataCallback, 0x30

glabel _SpuDataCallback
    /* A2224 800B3A14 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2228 800B3A18 1000BFAF */  sw         $ra, 0x10($sp)
    /* A222C 800B3A1C 21288000 */  addu       $a1, $a0, $zero
    /* A2230 800B3A20 50AB020C */  jal        DMACallback
    /* A2234 800B3A24 04000424 */   addiu     $a0, $zero, 0x4
    /* A2238 800B3A28 1000BF8F */  lw         $ra, 0x10($sp)
    /* A223C 800B3A2C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2240 800B3A30 0800E003 */  jr         $ra
    /* A2244 800B3A34 00000000 */   nop
    /* A2248 800B3A38 00000000 */  nop
    /* A224C 800B3A3C 00000000 */  nop
    /* A2250 800B3A40 00000000 */  nop
endlabel _SpuDataCallback
