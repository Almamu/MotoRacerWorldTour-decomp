nonmatching func_8006CE68, 0x44

glabel func_8006CE68
    /* 5B678 8006CE68 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5B67C 8006CE6C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5B680 8006CE70 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B684 8006CE74 0800908C */  lw         $s0, 0x8($a0)
    /* 5B688 8006CE78 00000000 */  nop
    /* 5B68C 8006CE7C 07000012 */  beqz       $s0, .L8006CE9C
    /* 5B690 8006CE80 00000000 */   nop
  .L8006CE84:
    /* 5B694 8006CE84 F9B5010C */  jal        func_8006D7E4
    /* 5B698 8006CE88 21200002 */   addu      $a0, $s0, $zero
    /* 5B69C 8006CE8C 0800108E */  lw         $s0, 0x8($s0)
    /* 5B6A0 8006CE90 00000000 */  nop
    /* 5B6A4 8006CE94 FBFF0016 */  bnez       $s0, .L8006CE84
    /* 5B6A8 8006CE98 00000000 */   nop
  .L8006CE9C:
    /* 5B6AC 8006CE9C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5B6B0 8006CEA0 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B6B4 8006CEA4 0800E003 */  jr         $ra
    /* 5B6B8 8006CEA8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006CE68
