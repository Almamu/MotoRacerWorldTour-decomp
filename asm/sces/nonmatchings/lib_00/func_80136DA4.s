nonmatching func_80136DA4, 0x28

glabel func_80136DA4
    /* 4270 80136DA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4274 80136DA8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4278 80136DAC 00F0043C */  lui        $a0, (0xF0000003 >> 16)
    /* 427C 80136DB0 03008434 */  ori        $a0, $a0, (0xF0000003 & 0xFFFF)
    /* 4280 80136DB4 D72A050C */  jal        DeliverEvent
    /* 4284 80136DB8 20000524 */   addiu     $a1, $zero, 0x20
    /* 4288 80136DBC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 428C 80136DC0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4290 80136DC4 0800E003 */  jr         $ra
    /* 4294 80136DC8 00000000 */   nop
endlabel func_80136DA4
