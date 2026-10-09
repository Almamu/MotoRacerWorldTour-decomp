nonmatching func_800AEC38, 0x4C

glabel func_800AEC38
    /* 9D448 800AEC38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9D44C 800AEC3C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9D450 800AEC40 0C80103C */  lui        $s0, %hi(D_800C3BB0)
    /* 9D454 800AEC44 B03B028E */  lw         $v0, %lo(D_800C3BB0)($s0)
    /* 9D458 800AEC48 00000000 */  nop
    /* 9D45C 800AEC4C 08004010 */  beqz       $v0, .L800AEC70
    /* 9D460 800AEC50 1400BFAF */   sw        $ra, 0x14($sp)
    /* 9D464 800AEC54 4EBB020C */  jal        func_800AED38
    /* 9D468 800AEC58 00000000 */   nop
    /* 9D46C 800AEC5C 17C1020C */  jal        func_800B045C
    /* 9D470 800AEC60 00000000 */   nop
    /* 9D474 800AEC64 B03B00AE */  sw         $zero, %lo(D_800C3BB0)($s0)
    /* 9D478 800AEC68 1DBB0208 */  j          .L800AEC74
    /* 9D47C 800AEC6C 01000224 */   addiu     $v0, $zero, 0x1
  .L800AEC70:
    /* 9D480 800AEC70 21100000 */  addu       $v0, $zero, $zero
  .L800AEC74:
    /* 9D484 800AEC74 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9D488 800AEC78 1000B08F */  lw         $s0, 0x10($sp)
    /* 9D48C 800AEC7C 0800E003 */  jr         $ra
    /* 9D490 800AEC80 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AEC38
