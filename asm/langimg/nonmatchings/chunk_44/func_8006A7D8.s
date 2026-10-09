nonmatching func_8006A7D8, 0x3C

glabel func_8006A7D8
    /* 58FE8 8006A7D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 58FEC 8006A7DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 58FF0 8006A7E0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 58FF4 8006A7E4 D4A7010C */  jal        func_80069F50
    /* 58FF8 8006A7E8 21808000 */   addu      $s0, $a0, $zero
    /* 58FFC 8006A7EC 0C80033C */  lui        $v1, %hi(D_800C769C)
    /* 59000 8006A7F0 9C766324 */  addiu      $v1, $v1, %lo(D_800C769C)
    /* 59004 8006A7F4 21200002 */  addu       $a0, $s0, $zero
    /* 59008 8006A7F8 05AA010C */  jal        func_8006A814
    /* 5900C 8006A7FC 0C0003AE */   sw        $v1, 0xC($s0)
    /* 59010 8006A800 21100002 */  addu       $v0, $s0, $zero
    /* 59014 8006A804 1400BF8F */  lw         $ra, 0x14($sp)
    /* 59018 8006A808 1000B08F */  lw         $s0, 0x10($sp)
    /* 5901C 8006A80C 0800E003 */  jr         $ra
    /* 59020 8006A810 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006A7D8
