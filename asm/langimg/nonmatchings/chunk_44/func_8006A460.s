nonmatching func_8006A460, 0x34

glabel func_8006A460
    /* 58C70 8006A460 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 58C74 8006A464 1000B0AF */  sw         $s0, 0x10($sp)
    /* 58C78 8006A468 21808000 */  addu       $s0, $a0, $zero
    /* 58C7C 8006A46C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 58C80 8006A470 040000AE */  sw         $zero, 0x4($s0)
    /* 58C84 8006A474 080000AE */  sw         $zero, 0x8($s0)
    /* 58C88 8006A478 36A9010C */  jal        func_8006A4D8
    /* 58C8C 8006A47C 0C0000AE */   sw        $zero, 0xC($s0)
    /* 58C90 8006A480 21100002 */  addu       $v0, $s0, $zero
    /* 58C94 8006A484 1400BF8F */  lw         $ra, 0x14($sp)
    /* 58C98 8006A488 1000B08F */  lw         $s0, 0x10($sp)
    /* 58C9C 8006A48C 0800E003 */  jr         $ra
    /* 58CA0 8006A490 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006A460
