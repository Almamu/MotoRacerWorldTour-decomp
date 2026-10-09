nonmatching func_80089508, 0x48

glabel func_80089508
    /* 77D18 80089508 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 77D1C 8008950C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 77D20 80089510 21808000 */  addu       $s0, $a0, $zero
    /* 77D24 80089514 0D80023C */  lui        $v0, %hi(D_800C8C7C)
    /* 77D28 80089518 7C8C4224 */  addiu      $v0, $v0, %lo(D_800C8C7C)
    /* 77D2C 8008951C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 77D30 80089520 140002AE */  sw         $v0, 0x14($s0)
    /* 77D34 80089524 7C4580AF */  sw         $zero, %gp_rel(D_800C8C6C)($gp)
    /* 77D38 80089528 100000AE */  sw         $zero, 0x10($s0)
    /* 77D3C 8008952C 040000AE */  sw         $zero, 0x4($s0)
    /* 77D40 80089530 080000AE */  sw         $zero, 0x8($s0)
    /* 77D44 80089534 7625020C */  jal        func_800895D8
    /* 77D48 80089538 0C0000AE */   sw        $zero, 0xC($s0)
    /* 77D4C 8008953C 21100002 */  addu       $v0, $s0, $zero
    /* 77D50 80089540 1400BF8F */  lw         $ra, 0x14($sp)
    /* 77D54 80089544 1000B08F */  lw         $s0, 0x10($sp)
    /* 77D58 80089548 0800E003 */  jr         $ra
    /* 77D5C 8008954C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80089508
