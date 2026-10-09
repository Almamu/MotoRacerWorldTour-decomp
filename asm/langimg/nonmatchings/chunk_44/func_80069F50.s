nonmatching func_80069F50, 0x34

glabel func_80069F50
    /* 58760 80069F50 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 58764 80069F54 1000B0AF */  sw         $s0, 0x10($sp)
    /* 58768 80069F58 21808000 */  addu       $s0, $a0, $zero
    /* 5876C 80069F5C 0C80023C */  lui        $v0, %hi(D_800C7724)
    /* 58770 80069F60 24774224 */  addiu      $v0, $v0, %lo(D_800C7724)
    /* 58774 80069F64 1400BFAF */  sw         $ra, 0x14($sp)
    /* 58778 80069F68 E1A7010C */  jal        func_80069F84
    /* 5877C 80069F6C 0C0002AE */   sw        $v0, 0xC($s0)
    /* 58780 80069F70 21100002 */  addu       $v0, $s0, $zero
    /* 58784 80069F74 1400BF8F */  lw         $ra, 0x14($sp)
    /* 58788 80069F78 1000B08F */  lw         $s0, 0x10($sp)
    /* 5878C 80069F7C 0800E003 */  jr         $ra
    /* 58790 80069F80 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80069F50
