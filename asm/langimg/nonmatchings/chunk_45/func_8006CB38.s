nonmatching func_8006CB38, 0x30

glabel func_8006CB38
    /* 5B348 8006CB38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5B34C 8006CB3C 21288000 */  addu       $a1, $a0, $zero
    /* 5B350 8006CB40 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5B354 8006CB44 0400A210 */  beq        $a1, $v0, .L8006CB58
    /* 5B358 8006CB48 1000BFAF */   sw        $ra, 0x10($sp)
    /* 5B35C 8006CB4C 0D80043C */  lui        $a0, %hi(D_800D11D0)
    /* 5B360 8006CB50 DD52000C */  jal        func_80014B74
    /* 5B364 8006CB54 D0118424 */   addiu     $a0, $a0, %lo(D_800D11D0)
  .L8006CB58:
    /* 5B368 8006CB58 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5B36C 8006CB5C 00000000 */  nop
    /* 5B370 8006CB60 0800E003 */  jr         $ra
    /* 5B374 8006CB64 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006CB38
