nonmatching func_8004C764, 0x88

glabel func_8004C764
    /* 3AF74 8004C764 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3AF78 8004C768 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3AF7C 8004C76C 21888000 */  addu       $s1, $a0, $zero
    /* 3AF80 8004C770 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3AF84 8004C774 2190A000 */  addu       $s2, $a1, $zero
    /* 3AF88 8004C778 80101200 */  sll        $v0, $s2, 2
    /* 3AF8C 8004C77C 21102202 */  addu       $v0, $s1, $v0
    /* 3AF90 8004C780 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3AF94 8004C784 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3AF98 8004C788 3C04508C */  lw         $s0, 0x43C($v0)
    /* 3AF9C 8004C78C A0E0010C */  jal        func_80078280
    /* 3AFA0 8004C790 21200002 */   addu      $a0, $s0, $zero
    /* 3AFA4 8004C794 21202002 */  addu       $a0, $s1, $zero
    /* 3AFA8 8004C798 5401028E */  lw         $v0, 0x154($s0)
    /* 3AFAC 8004C79C 086C838F */  lw         $v1, %gp_rel(D_800CB2F8)($gp)
    /* 3AFB0 8004C7A0 80100200 */  sll        $v0, $v0, 2
    /* 3AFB4 8004C7A4 21104300 */  addu       $v0, $v0, $v1
    /* 3AFB8 8004C7A8 0000468C */  lw         $a2, 0x0($v0)
    /* 3AFBC 8004C7AC 0831010C */  jal        func_8004C420
    /* 3AFC0 8004C7B0 21284002 */   addu      $a1, $s2, $zero
    /* 3AFC4 8004C7B4 7803228E */  lw         $v0, 0x378($s1)
    /* 3AFC8 8004C7B8 21202002 */  addu       $a0, $s1, $zero
    /* 3AFCC 8004C7BC 1000438C */  lw         $v1, 0x10($v0)
    /* 3AFD0 8004C7C0 21284002 */  addu       $a1, $s2, $zero
    /* 3AFD4 8004C7C4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3AFD8 8004C7C8 5C05668C */  lw         $a2, 0x55C($v1)
    /* 3AFDC 8004C7CC FF30010C */  jal        func_8004C3FC
    /* 3AFE0 8004C7D0 21380000 */   addu      $a3, $zero, $zero
    /* 3AFE4 8004C7D4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3AFE8 8004C7D8 2000B28F */  lw         $s2, 0x20($sp)
    /* 3AFEC 8004C7DC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3AFF0 8004C7E0 1800B08F */  lw         $s0, 0x18($sp)
    /* 3AFF4 8004C7E4 0800E003 */  jr         $ra
    /* 3AFF8 8004C7E8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8004C764
