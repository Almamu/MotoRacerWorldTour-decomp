nonmatching func_8006BDDC, 0x34

glabel func_8006BDDC
    /* 5A5EC 8006BDDC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5A5F0 8006BDE0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5A5F4 8006BDE4 21808000 */  addu       $s0, $a0, $zero
    /* 5A5F8 8006BDE8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5A5FC 8006BDEC B759020C */  jal        func_800966DC
    /* 5A600 8006BDF0 2C040426 */   addiu     $a0, $s0, 0x42C
    /* 5A604 8006BDF4 B3AF010C */  jal        func_8006BECC
    /* 5A608 8006BDF8 21200002 */   addu      $a0, $s0, $zero
    /* 5A60C 8006BDFC 21100002 */  addu       $v0, $s0, $zero
    /* 5A610 8006BE00 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5A614 8006BE04 1000B08F */  lw         $s0, 0x10($sp)
    /* 5A618 8006BE08 0800E003 */  jr         $ra
    /* 5A61C 8006BE0C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006BDDC
