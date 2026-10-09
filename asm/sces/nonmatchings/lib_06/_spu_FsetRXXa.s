nonmatching _spu_FsetRXXa, 0xA4

glabel _spu_FsetRXXa
    /* 10A38 8014356C 1C80023C */  lui        $v0, %hi(D_801BFF38)
    /* 10A3C 80143570 38FF428C */  lw         $v0, %lo(D_801BFF38)($v0)
    /* 10A40 80143574 00000000 */  nop
    /* 10A44 80143578 10004010 */  beqz       $v0, .L801435BC
    /* 10A48 8014357C 21308000 */   addu      $a2, $a0, $zero
    /* 10A4C 80143580 1C80043C */  lui        $a0, %hi(D_801BFF40)
    /* 10A50 80143584 40FF848C */  lw         $a0, %lo(D_801BFF40)($a0)
    /* 10A54 80143588 00000000 */  nop
    /* 10A58 8014358C 1B00A400 */  divu       $zero, $a1, $a0
    /* 10A5C 80143590 02008014 */  bnez       $a0, .L8014359C
    /* 10A60 80143594 00000000 */   nop
    /* 10A64 80143598 0D000700 */  break      7
  .L8014359C:
    /* 10A68 8014359C 10100000 */  mfhi       $v0
    /* 10A6C 801435A0 06004010 */  beqz       $v0, .L801435BC
    /* 10A70 801435A4 00000000 */   nop
    /* 10A74 801435A8 1C80023C */  lui        $v0, %hi(_spu_mem_mode_unitM)
    /* 10A78 801435AC 44FF428C */  lw         $v0, %lo(_spu_mem_mode_unitM)($v0)
    /* 10A7C 801435B0 2128A400 */  addu       $a1, $a1, $a0
    /* 10A80 801435B4 27100200 */  nor        $v0, $zero, $v0
    /* 10A84 801435B8 2428A200 */  and        $a1, $a1, $v0
  .L801435BC:
    /* 10A88 801435BC 1C80023C */  lui        $v0, %hi(_spu_mem_mode_plus)
    /* 10A8C 801435C0 3CFF428C */  lw         $v0, %lo(_spu_mem_mode_plus)($v0)
    /* 10A90 801435C4 00000000 */  nop
    /* 10A94 801435C8 06384500 */  srlv       $a3, $a1, $v0
    /* 10A98 801435CC FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 10A9C 801435D0 0600C210 */  beq        $a2, $v0, .L801435EC
    /* 10AA0 801435D4 2118E000 */   addu      $v1, $a3, $zero
    /* 10AA4 801435D8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 10AA8 801435DC 0500C214 */  bne        $a2, $v0, .L801435F4
    /* 10AAC 801435E0 2110A000 */   addu      $v0, $a1, $zero
    /* 10AB0 801435E4 820D0508 */  j          .L80143608
    /* 10AB4 801435E8 FFFF6230 */   andi      $v0, $v1, 0xFFFF
  .L801435EC:
    /* 10AB8 801435EC 820D0508 */  j          .L80143608
    /* 10ABC 801435F0 2110A000 */   addu      $v0, $a1, $zero
  .L801435F4:
    /* 10AC0 801435F4 1C80043C */  lui        $a0, %hi(_spu_RXX)
    /* 10AC4 801435F8 14FF848C */  lw         $a0, %lo(_spu_RXX)($a0)
    /* 10AC8 801435FC 40180600 */  sll        $v1, $a2, 1
    /* 10ACC 80143600 21186400 */  addu       $v1, $v1, $a0
    /* 10AD0 80143604 000067A4 */  sh         $a3, 0x0($v1)
  .L80143608:
    /* 10AD4 80143608 0800E003 */  jr         $ra
    /* 10AD8 8014360C 00000000 */   nop
endlabel _spu_FsetRXXa
