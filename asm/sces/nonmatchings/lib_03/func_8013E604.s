nonmatching func_8013E604, 0x28

glabel func_8013E604
    /* BAD0 8013E604 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BAD4 8013E608 1000BFAF */  sw         $ra, 0x10($sp)
    /* BAD8 8013E60C 1480053C */  lui        $a1, %hi(func_8013DF00)
    /* BADC 8013E610 00DFA524 */  addiu      $a1, $a1, %lo(func_8013DF00)
    /* BAE0 8013E614 BEEC040C */  jal        DMACallback
    /* BAE4 8013E618 02000424 */   addiu     $a0, $zero, 0x2
    /* BAE8 8013E61C 1000BF8F */  lw         $ra, 0x10($sp)
    /* BAEC 8013E620 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BAF0 8013E624 0800E003 */  jr         $ra
    /* BAF4 8013E628 00000000 */   nop
endlabel func_8013E604
