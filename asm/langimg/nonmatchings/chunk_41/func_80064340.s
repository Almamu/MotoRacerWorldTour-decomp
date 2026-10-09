nonmatching func_80064340, 0x7C

glabel func_80064340
    /* 52B50 80064340 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 52B54 80064344 1000B0AF */  sw         $s0, 0x10($sp)
    /* 52B58 80064348 1400BFAF */  sw         $ra, 0x14($sp)
    /* 52B5C 8006434C 908B010C */  jal        func_80062E40
    /* 52B60 80064350 21808000 */   addu      $s0, $a0, $zero
    /* 52B64 80064354 0C80033C */  lui        $v1, %hi(D_800C7684)
    /* 52B68 80064358 84766324 */  addiu      $v1, $v1, %lo(D_800C7684)
    /* 52B6C 8006435C 07000224 */  addiu      $v0, $zero, 0x7
    /* 52B70 80064360 500003AE */  sw         $v1, 0x50($s0)
    /* 52B74 80064364 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 52B78 80064368 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8006436C:
    /* 52B7C 8006436C FFFF4314 */  bne        $v0, $v1, .L8006436C
    /* 52B80 80064370 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 52B84 80064374 21200002 */  addu       $a0, $s0, $zero
    /* 52B88 80064378 64000226 */  addiu      $v0, $s0, 0x64
    /* 52B8C 8006437C 70000326 */  addiu      $v1, $s0, 0x70
    /* 52B90 80064380 590000A2 */  sb         $zero, 0x59($s0)
    /* 52B94 80064384 5A0000A2 */  sb         $zero, 0x5A($s0)
    /* 52B98 80064388 640000AE */  sw         $zero, 0x64($s0)
    /* 52B9C 8006438C 040040AC */  sw         $zero, 0x4($v0)
    /* 52BA0 80064390 080040AC */  sw         $zero, 0x8($v0)
    /* 52BA4 80064394 700000A6 */  sh         $zero, 0x70($s0)
    /* 52BA8 80064398 020060A4 */  sh         $zero, 0x2($v1)
    /* 52BAC 8006439C F990010C */  jal        func_800643E4
    /* 52BB0 800643A0 040060A4 */   sh        $zero, 0x4($v1)
    /* 52BB4 800643A4 21100002 */  addu       $v0, $s0, $zero
    /* 52BB8 800643A8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 52BBC 800643AC 1000B08F */  lw         $s0, 0x10($sp)
    /* 52BC0 800643B0 5C6D80AF */  sw         $zero, %gp_rel(D_800CB44C)($gp)
    /* 52BC4 800643B4 0800E003 */  jr         $ra
    /* 52BC8 800643B8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80064340
