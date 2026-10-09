nonmatching func_8009E164, 0x3C

glabel func_8009E164
    /* 8C974 8009E164 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8C978 8009E168 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8C97C 8009E16C 3000858C */  lw         $a1, 0x30($a0)
    /* 8C980 8009E170 F0FF023C */  lui        $v0, (0xFFF0FFFF >> 16)
    /* 8C984 8009E174 0000A38C */  lw         $v1, 0x0($a1)
    /* 8C988 8009E178 FFFF4234 */  ori        $v0, $v0, (0xFFF0FFFF & 0xFFFF)
    /* 8C98C 8009E17C 24186200 */  and        $v1, $v1, $v0
    /* 8C990 8009E180 0000A3AC */  sw         $v1, 0x0($a1)
    /* 8C994 8009E184 4400848C */  lw         $a0, 0x44($a0)
    /* 8C998 8009E188 6CF9000C */  jal        func_8003E5B0
    /* 8C99C 8009E18C 00000000 */   nop
    /* 8C9A0 8009E190 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8C9A4 8009E194 00000000 */  nop
    /* 8C9A8 8009E198 0800E003 */  jr         $ra
    /* 8C9AC 8009E19C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009E164
