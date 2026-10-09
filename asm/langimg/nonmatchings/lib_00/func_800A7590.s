nonmatching func_800A7590, 0x28

glabel func_800A7590
    /* 95DA0 800A7590 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 95DA4 800A7594 1000BFAF */  sw         $ra, 0x10($sp)
    /* 95DA8 800A7598 00F0043C */  lui        $a0, (0xF0000003 >> 16)
    /* 95DAC 800A759C 03008434 */  ori        $a0, $a0, (0xF0000003 & 0xFFFF)
    /* 95DB0 800A75A0 B8D6020C */  jal        func_800B5AE0
    /* 95DB4 800A75A4 20000524 */   addiu     $a1, $zero, 0x20
    /* 95DB8 800A75A8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 95DBC 800A75AC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 95DC0 800A75B0 0800E003 */  jr         $ra
    /* 95DC4 800A75B4 00000000 */   nop
endlabel func_800A7590
