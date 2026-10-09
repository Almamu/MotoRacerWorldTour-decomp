nonmatching func_80062DB4, 0x8C

glabel func_80062DB4
    /* 515C4 80062DB4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 515C8 80062DB8 286D828F */  lw         $v0, %gp_rel(D_800CB418)($gp)
    /* 515CC 80062DBC 01000324 */  addiu      $v1, $zero, 0x1
    /* 515D0 80062DC0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 515D4 80062DC4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 515D8 80062DC8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 515DC 80062DCC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 515E0 80062DD0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 515E4 80062DD4 01004224 */  addiu      $v0, $v0, 0x1
    /* 515E8 80062DD8 286D82AF */  sw         $v0, %gp_rel(D_800CB418)($gp)
    /* 515EC 80062DDC 11004314 */  bne        $v0, $v1, .L80062E24
    /* 515F0 80062DE0 21900000 */   addu      $s2, $zero, $zero
    /* 515F4 80062DE4 0680133C */  lui        $s3, %hi(func_8006095C)
    /* 515F8 80062DE8 0C80113C */  lui        $s1, %hi(D_800C75D8)
    /* 515FC 80062DEC D8753126 */  addiu      $s1, $s1, %lo(D_800C75D8)
    /* 51600 80062DF0 0C80103C */  lui        $s0, %hi(D_800C75D4)
    /* 51604 80062DF4 D4751026 */  addiu      $s0, $s0, %lo(D_800C75D4)
  .L80062DF8:
    /* 51608 80062DF8 0000258E */  lw         $a1, 0x0($s1)
    /* 5160C 80062DFC 08003126 */  addiu      $s1, $s1, 0x8
    /* 51610 80062E00 0000048E */  lw         $a0, 0x0($s0)
    /* 51614 80062E04 08001026 */  addiu      $s0, $s0, 0x8
    /* 51618 80062E08 01005226 */  addiu      $s2, $s2, 0x1
    /* 5161C 80062E0C 04000624 */  addiu      $a2, $zero, 0x4
    /* 51620 80062E10 62D8020C */  jal        qsort
    /* 51624 80062E14 5C096726 */   addiu     $a3, $s3, %lo(func_8006095C)
    /* 51628 80062E18 0400422E */  sltiu      $v0, $s2, 0x4
    /* 5162C 80062E1C F6FF4014 */  bnez       $v0, .L80062DF8
    /* 51630 80062E20 00000000 */   nop
  .L80062E24:
    /* 51634 80062E24 2000BF8F */  lw         $ra, 0x20($sp)
    /* 51638 80062E28 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5163C 80062E2C 1800B28F */  lw         $s2, 0x18($sp)
    /* 51640 80062E30 1400B18F */  lw         $s1, 0x14($sp)
    /* 51644 80062E34 1000B08F */  lw         $s0, 0x10($sp)
    /* 51648 80062E38 0800E003 */  jr         $ra
    /* 5164C 80062E3C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80062DB4
