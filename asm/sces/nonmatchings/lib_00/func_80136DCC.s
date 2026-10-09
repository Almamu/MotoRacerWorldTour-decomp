nonmatching func_80136DCC, 0x28

glabel func_80136DCC
    /* 4298 80136DCC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 429C 80136DD0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 42A0 80136DD4 00F0043C */  lui        $a0, (0xF0000003 >> 16)
    /* 42A4 80136DD8 03008434 */  ori        $a0, $a0, (0xF0000003 & 0xFFFF)
    /* 42A8 80136DDC D72A050C */  jal        DeliverEvent
    /* 42AC 80136DE0 40000524 */   addiu     $a1, $zero, 0x40
    /* 42B0 80136DE4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 42B4 80136DE8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 42B8 80136DEC 0800E003 */  jr         $ra
    /* 42BC 80136DF0 00000000 */   nop
endlabel func_80136DCC
