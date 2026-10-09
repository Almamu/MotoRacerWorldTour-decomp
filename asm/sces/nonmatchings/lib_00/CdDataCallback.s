nonmatching CdDataCallback, 0x24

glabel CdDataCallback
    /* 4798 801372CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 479C 801372D0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 47A0 801372D4 21288000 */  addu       $a1, $a0, $zero
    /* 47A4 801372D8 BEEC040C */  jal        DMACallback
    /* 47A8 801372DC 03000424 */   addiu     $a0, $zero, 0x3
    /* 47AC 801372E0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 47B0 801372E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 47B4 801372E8 0800E003 */  jr         $ra
    /* 47B8 801372EC 00000000 */   nop
endlabel CdDataCallback
