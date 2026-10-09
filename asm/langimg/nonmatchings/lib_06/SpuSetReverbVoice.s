nonmatching SpuSetReverbVoice, 0x30

glabel SpuSetReverbVoice
    /* A2434 800B3C24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2438 800B3C28 1000BFAF */  sw         $ra, 0x10($sp)
    /* A243C 800B3C2C CC000624 */  addiu      $a2, $zero, 0xCC
    /* A2440 800B3C30 15CF020C */  jal        _SpuSetAnyVoice
    /* A2444 800B3C34 CD000724 */   addiu     $a3, $zero, 0xCD
    /* A2448 800B3C38 1000BF8F */  lw         $ra, 0x10($sp)
    /* A244C 800B3C3C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2450 800B3C40 0800E003 */  jr         $ra
    /* A2454 800B3C44 00000000 */   nop
    /* A2458 800B3C48 00000000 */  nop
    /* A245C 800B3C4C 00000000 */  nop
    /* A2460 800B3C50 00000000 */  nop
endlabel SpuSetReverbVoice
