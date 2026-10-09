nonmatching func_80076588, 0x2C

glabel func_80076588
    /* 64D98 80076588 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 64D9C 8007658C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 64DA0 80076590 1400BFAF */  sw         $ra, 0x14($sp)
    /* 64DA4 80076594 44D1010C */  jal        func_80074510
    /* 64DA8 80076598 21808000 */   addu      $s0, $a0, $zero
    /* 64DAC 8007659C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 64DB0 800765A0 21100002 */  addu       $v0, $s0, $zero
    /* 64DB4 800765A4 140000AE */  sw         $zero, 0x14($s0)
    /* 64DB8 800765A8 1000B08F */  lw         $s0, 0x10($sp)
    /* 64DBC 800765AC 0800E003 */  jr         $ra
    /* 64DC0 800765B0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80076588
