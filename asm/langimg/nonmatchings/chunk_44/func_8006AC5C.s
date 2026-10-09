nonmatching func_8006AC5C, 0x54

glabel func_8006AC5C
    /* 5946C 8006AC5C 0400828C */  lw         $v0, 0x4($a0)
    /* 59470 8006AC60 0000868C */  lw         $a2, 0x0($a0)
    /* 59474 8006AC64 FFFF4724 */  addiu      $a3, $v0, -0x1
    /* 59478 8006AC68 80180700 */  sll        $v1, $a3, 2
    /* 5947C 8006AC6C 0E00E018 */  blez       $a3, .L8006ACA8
    /* 59480 8006AC70 2130C300 */   addu      $a2, $a2, $v1
  .L8006AC74:
    /* 59484 8006AC74 0000C28C */  lw         $v0, 0x0($a2)
    /* 59488 8006AC78 00000000 */  nop
    /* 5948C 8006AC7C 07004010 */  beqz       $v0, .L8006AC9C
    /* 59490 8006AC80 00000000 */   nop
    /* 59494 8006AC84 03004280 */  lb         $v0, 0x3($v0)
    /* 59498 8006AC88 00000000 */  nop
    /* 5949C 8006AC8C 04004514 */  bne        $v0, $a1, .L8006ACA0
    /* 594A0 8006AC90 FFFFE724 */   addiu     $a3, $a3, -0x1
    /* 594A4 8006AC94 0800E003 */  jr         $ra
    /* 594A8 8006AC98 01000224 */   addiu     $v0, $zero, 0x1
  .L8006AC9C:
    /* 594AC 8006AC9C FFFFE724 */  addiu      $a3, $a3, -0x1
  .L8006ACA0:
    /* 594B0 8006ACA0 F4FFE104 */  bgez       $a3, .L8006AC74
    /* 594B4 8006ACA4 FCFFC624 */   addiu     $a2, $a2, -0x4
  .L8006ACA8:
    /* 594B8 8006ACA8 0800E003 */  jr         $ra
    /* 594BC 8006ACAC 21100000 */   addu      $v0, $zero, $zero
endlabel func_8006AC5C
