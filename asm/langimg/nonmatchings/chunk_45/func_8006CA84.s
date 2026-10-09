nonmatching func_8006CA84, 0xB4

glabel func_8006CA84
    /* 5B294 8006CA84 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5B298 8006CA88 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B29C 8006CA8C FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 5B2A0 8006CA90 21308000 */  addu       $a2, $a0, $zero
    /* 5B2A4 8006CA94 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B2A8 8006CA98 2190A000 */  addu       $s2, $a1, $zero
    /* 5B2AC 8006CA9C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5B2B0 8006CAA0 1E00D110 */  beq        $a2, $s1, .L8006CB1C
    /* 5B2B4 8006CAA4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 5B2B8 8006CAA8 3838858F */  lw         $a1, %gp_rel(D_800C7F28)($gp)
    /* 5B2BC 8006CAAC 00000000 */  nop
    /* 5B2C0 8006CAB0 0C00A010 */  beqz       $a1, .L8006CAE4
    /* 5B2C4 8006CAB4 40180600 */   sll       $v1, $a2, 1
    /* 5B2C8 8006CAB8 8809A28C */  lw         $v0, 0x988($a1)
    /* 5B2CC 8006CABC 00000000 */  nop
    /* 5B2D0 8006CAC0 21186200 */  addu       $v1, $v1, $v0
    /* 5B2D4 8006CAC4 00006484 */  lh         $a0, 0x0($v1)
    /* 5B2D8 8006CAC8 00000000 */  nop
    /* 5B2DC 8006CACC 05009110 */  beq        $a0, $s1, .L8006CAE4
    /* 5B2E0 8006CAD0 2120A000 */   addu      $a0, $a1, $zero
    /* 5B2E4 8006CAD4 08B5010C */  jal        func_8006D420
    /* 5B2E8 8006CAD8 2128C000 */   addu      $a1, $a2, $zero
    /* 5B2EC 8006CADC C8B20108 */  j          .L8006CB20
    /* 5B2F0 8006CAE0 21102002 */   addu      $v0, $s1, $zero
  .L8006CAE4:
    /* 5B2F4 8006CAE4 0D80103C */  lui        $s0, %hi(D_800D11D0)
    /* 5B2F8 8006CAE8 D0111026 */  addiu      $s0, $s0, %lo(D_800D11D0)
    /* 5B2FC 8006CAEC 21200002 */  addu       $a0, $s0, $zero
    /* 5B300 8006CAF0 2128C000 */  addu       $a1, $a2, $zero
    /* 5B304 8006CAF4 A652000C */  jal        func_80014A98
    /* 5B308 8006CAF8 21300000 */   addu      $a2, $zero, $zero
    /* 5B30C 8006CAFC 21884000 */  addu       $s1, $v0, $zero
    /* 5B310 8006CB00 21200002 */  addu       $a0, $s0, $zero
    /* 5B314 8006CB04 21282002 */  addu       $a1, $s1, $zero
    /* 5B318 8006CB08 DA50000C */  jal        func_80014368
    /* 5B31C 8006CB0C 21304002 */   addu      $a2, $s2, $zero
    /* 5B320 8006CB10 21200002 */  addu       $a0, $s0, $zero
    /* 5B324 8006CB14 C652000C */  jal        func_80014B18
    /* 5B328 8006CB18 21282002 */   addu      $a1, $s1, $zero
  .L8006CB1C:
    /* 5B32C 8006CB1C 21102002 */  addu       $v0, $s1, $zero
  .L8006CB20:
    /* 5B330 8006CB20 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5B334 8006CB24 1800B28F */  lw         $s2, 0x18($sp)
    /* 5B338 8006CB28 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B33C 8006CB2C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B340 8006CB30 0800E003 */  jr         $ra
    /* 5B344 8006CB34 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006CA84
