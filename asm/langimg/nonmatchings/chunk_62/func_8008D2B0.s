nonmatching func_8008D2B0, 0x2C

glabel func_8008D2B0
    /* 7BAC0 8008D2B0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 7BAC4 8008D2B4 1000A4AF */  sw         $a0, 0x10($sp)
    /* 7BAC8 8008D2B8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 7BACC 8008D2BC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 7BAD0 8008D2C0 1400A5AF */  sw         $a1, 0x14($sp)
    /* 7BAD4 8008D2C4 8F64020C */  jal        func_8009923C
    /* 7BAD8 8008D2C8 080086AC */   sw        $a2, 0x8($a0)
    /* 7BADC 8008D2CC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 7BAE0 8008D2D0 00000000 */  nop
    /* 7BAE4 8008D2D4 0800E003 */  jr         $ra
    /* 7BAE8 8008D2D8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8008D2B0
