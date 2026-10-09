nonmatching func_8006FCF8, 0x48

glabel func_8006FCF8
    /* 5E508 8006FCF8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5E50C 8006FCFC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 5E510 8006FD00 08009024 */  addiu      $s0, $a0, 0x8
    /* 5E514 8006FD04 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5E518 8006FD08 215A020C */  jal        func_80096884
    /* 5E51C 8006FD0C 21200002 */   addu      $a0, $s0, $zero
    /* 5E520 8006FD10 07004014 */  bnez       $v0, .L8006FD30
    /* 5E524 8006FD14 21200002 */   addu      $a0, $s0, $zero
    /* 5E528 8006FD18 00280524 */  addiu      $a1, $zero, 0x2800
    /* 5E52C 8006FD1C 21300000 */  addu       $a2, $zero, $zero
    /* 5E530 8006FD20 21380000 */  addu       $a3, $zero, $zero
    /* 5E534 8006FD24 1000A0AF */  sw         $zero, 0x10($sp)
    /* 5E538 8006FD28 D359020C */  jal        func_8009674C
    /* 5E53C 8006FD2C 1400A0AF */   sw        $zero, 0x14($sp)
  .L8006FD30:
    /* 5E540 8006FD30 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5E544 8006FD34 1800B08F */  lw         $s0, 0x18($sp)
    /* 5E548 8006FD38 0800E003 */  jr         $ra
    /* 5E54C 8006FD3C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006FCF8
