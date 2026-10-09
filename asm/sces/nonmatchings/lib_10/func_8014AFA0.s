nonmatching func_8014AFA0, 0x80

glabel func_8014AFA0
    /* 1846C 8014AFA0 03008010 */  beqz       $a0, .L8014AFB0
    /* 18470 8014AFA4 00000000 */   nop
    /* 18474 8014AFA8 0700A014 */  bnez       $a1, .L8014AFC8
    /* 18478 8014AFAC 00000000 */   nop
  .L8014AFB0:
    /* 1847C 8014AFB0 19008510 */  beq        $a0, $a1, .L8014B018
    /* 18480 8014AFB4 21100000 */   addu      $v0, $zero, $zero
    /* 18484 8014AFB8 17008010 */  beqz       $a0, .L8014B018
    /* 18488 8014AFBC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1848C 8014AFC0 062C0508 */  j          .L8014B018
    /* 18490 8014AFC4 01000224 */   addiu     $v0, $zero, 0x1
  .L8014AFC8:
    /* 18494 8014AFC8 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 18498 8014AFCC 1200C004 */  bltz       $a2, .L8014B018
    /* 1849C 8014AFD0 21100000 */   addu      $v0, $zero, $zero
  .L8014AFD4:
    /* 184A0 8014AFD4 00008380 */  lb         $v1, 0x0($a0)
    /* 184A4 8014AFD8 0000A280 */  lb         $v0, 0x0($a1)
    /* 184A8 8014AFDC 00000000 */  nop
    /* 184AC 8014AFE0 06006214 */  bne        $v1, $v0, .L8014AFFC
    /* 184B0 8014AFE4 0100A524 */   addiu     $a1, $a1, 0x1
    /* 184B4 8014AFE8 0A006010 */  beqz       $v1, .L8014B014
    /* 184B8 8014AFEC 01008424 */   addiu     $a0, $a0, 0x1
    /* 184BC 8014AFF0 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 184C0 8014AFF4 F7FFC104 */  bgez       $a2, .L8014AFD4
    /* 184C4 8014AFF8 00000000 */   nop
  .L8014AFFC:
    /* 184C8 8014AFFC 0500C004 */  bltz       $a2, .L8014B014
    /* 184CC 8014B000 00000000 */   nop
    /* 184D0 8014B004 00008380 */  lb         $v1, 0x0($a0)
    /* 184D4 8014B008 FFFFA280 */  lb         $v0, -0x1($a1)
    /* 184D8 8014B00C 062C0508 */  j          .L8014B018
    /* 184DC 8014B010 23106200 */   subu      $v0, $v1, $v0
  .L8014B014:
    /* 184E0 8014B014 21100000 */  addu       $v0, $zero, $zero
  .L8014B018:
    /* 184E4 8014B018 0800E003 */  jr         $ra
    /* 184E8 8014B01C 00000000 */   nop
endlabel func_8014AFA0
