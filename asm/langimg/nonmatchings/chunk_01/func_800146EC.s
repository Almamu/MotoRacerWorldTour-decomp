nonmatching func_800146EC, 0x38

glabel func_800146EC
    /* 2EFC 800146EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2F00 800146F0 1200053C */  lui        $a1, (0x12C000 >> 16)
    /* 2F04 800146F4 00C0A534 */  ori        $a1, $a1, (0x12C000 & 0xFFFF)
    /* 2F08 800146F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F0C 800146FC 21808000 */  addu       $s0, $a0, $zero
    /* 2F10 80014700 00100424 */  addiu      $a0, $zero, 0x1000
    /* 2F14 80014704 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2F18 80014708 1747000C */  jal        func_80011C5C
    /* 2F1C 8001470C 18000624 */   addiu     $a2, $zero, 0x18
    /* 2F20 80014710 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2F24 80014714 010002A2 */  sb         $v0, 0x1($s0)
    /* 2F28 80014718 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F2C 8001471C 0800E003 */  jr         $ra
    /* 2F30 80014720 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800146EC
