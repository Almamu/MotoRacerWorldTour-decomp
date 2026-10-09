nonmatching func_8003FD5C, 0x78

glabel func_8003FD5C
    /* 2E56C 8003FD5C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2E570 8003FD60 21308000 */  addu       $a2, $a0, $zero
    /* 2E574 8003FD64 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2E578 8003FD68 1800C38C */  lw         $v1, 0x18($a2)
    /* 2E57C 8003FD6C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2E580 8003FD70 14006214 */  bne        $v1, $v0, .L8003FDC4
    /* 2E584 8003FD74 21380000 */   addu      $a3, $zero, $zero
    /* 2E588 8003FD78 1200A004 */  bltz       $a1, .L8003FDC4
    /* 2E58C 8003FD7C 00000000 */   nop
    /* 2E590 8003FD80 1000A01C */  bgtz       $a1, .L8003FDC4
    /* 2E594 8003FD84 80100500 */   sll       $v0, $a1, 2
    /* 2E598 8003FD88 0D80033C */  lui        $v1, %hi(D_800CBC94)
    /* 2E59C 8003FD8C 94BC6324 */  addiu      $v1, $v1, %lo(D_800CBC94)
    /* 2E5A0 8003FD90 21104300 */  addu       $v0, $v0, $v1
    /* 2E5A4 8003FD94 0000448C */  lw         $a0, 0x0($v0)
    /* 2E5A8 8003FD98 00000000 */  nop
    /* 2E5AC 8003FD9C 09008010 */  beqz       $a0, .L8003FDC4
    /* 2E5B0 8003FDA0 00000000 */   nop
    /* 2E5B4 8003FDA4 6800C38C */  lw         $v1, 0x68($a2)
    /* 2E5B8 8003FDA8 1800C5AC */  sw         $a1, 0x18($a2)
    /* 2E5BC 8003FDAC 90006484 */  lh         $a0, 0x90($v1)
    /* 2E5C0 8003FDB0 9400628C */  lw         $v0, 0x94($v1)
    /* 2E5C4 8003FDB4 00000000 */  nop
    /* 2E5C8 8003FDB8 09F84000 */  jalr       $v0
    /* 2E5CC 8003FDBC 2120C400 */   addu      $a0, $a2, $a0
    /* 2E5D0 8003FDC0 21384000 */  addu       $a3, $v0, $zero
  .L8003FDC4:
    /* 2E5D4 8003FDC4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2E5D8 8003FDC8 2110E000 */  addu       $v0, $a3, $zero
    /* 2E5DC 8003FDCC 0800E003 */  jr         $ra
    /* 2E5E0 8003FDD0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003FD5C
