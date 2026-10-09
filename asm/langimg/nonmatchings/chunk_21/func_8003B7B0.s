nonmatching func_8003B7B0, 0x30

glabel func_8003B7B0
    /* 29FC0 8003B7B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 29FC4 8003B7B4 21108000 */  addu       $v0, $a0, $zero
    /* 29FC8 8003B7B8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 29FCC 8003B7BC AC0A468C */  lw         $a2, 0xAAC($v0)
    /* 29FD0 8003B7C0 A80A448C */  lw         $a0, 0xAA8($v0)
    /* 29FD4 8003B7C4 980A458C */  lw         $a1, 0xA98($v0)
    /* 29FD8 8003B7C8 46D8020C */  jal        func_800B6118
    /* 29FDC 8003B7CC 80300600 */   sll       $a2, $a2, 2
    /* 29FE0 8003B7D0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 29FE4 8003B7D4 00000000 */  nop
    /* 29FE8 8003B7D8 0800E003 */  jr         $ra
    /* 29FEC 8003B7DC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003B7B0
