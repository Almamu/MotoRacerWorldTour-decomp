nonmatching func_80050E88, 0x34

glabel func_80050E88
    /* 3F698 80050E88 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3F69C 80050E8C 0D80023C */  lui        $v0, %hi(D_800C9EF0)
    /* 3F6A0 80050E90 F09E428C */  lw         $v0, %lo(D_800C9EF0)($v0)
    /* 3F6A4 80050E94 80200400 */  sll        $a0, $a0, 2
    /* 3F6A8 80050E98 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3F6AC 80050E9C 21208200 */  addu       $a0, $a0, $v0
    /* 3F6B0 80050EA0 0000848C */  lw         $a0, 0x0($a0)
    /* 3F6B4 80050EA4 AF43010C */  jal        func_80050EBC
    /* 3F6B8 80050EA8 00000000 */   nop
    /* 3F6BC 80050EAC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3F6C0 80050EB0 00000000 */  nop
    /* 3F6C4 80050EB4 0800E003 */  jr         $ra
    /* 3F6C8 80050EB8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80050E88
