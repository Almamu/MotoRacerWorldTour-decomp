nonmatching func_8003FE78, 0x4C

glabel func_8003FE78
    /* 2E688 8003FE78 1000A010 */  beqz       $a1, .L8003FEBC
    /* 2E68C 8003FE7C 21308000 */   addu      $a2, $a0, $zero
    /* 2E690 8003FE80 DFFF0424 */  addiu      $a0, $zero, -0x21
    /* 2E694 8003FE84 0100A230 */  andi       $v0, $a1, 0x1
    /* 2E698 8003FE88 0000C38C */  lw         $v1, 0x0($a2)
    /* 2E69C 8003FE8C 40110200 */  sll        $v0, $v0, 5
    /* 2E6A0 8003FE90 10006334 */  ori        $v1, $v1, 0x10
    /* 2E6A4 8003FE94 24186400 */  and        $v1, $v1, $a0
    /* 2E6A8 8003FE98 25186200 */  or         $v1, $v1, $v0
    /* 2E6AC 8003FE9C 0000C3AC */  sw         $v1, 0x0($a2)
    /* 2E6B0 8003FEA0 0D80043C */  lui        $a0, %hi(D_800CAE60)
    /* 2E6B4 8003FEA4 60AE848C */  lw         $a0, %lo(D_800CAE60)($a0)
    /* 2E6B8 8003FEA8 00000000 */  nop
    /* 2E6BC 8003FEAC 5C00C4AC */  sw         $a0, 0x5C($a2)
    /* 2E6C0 8003FEB0 01008424 */  addiu      $a0, $a0, 0x1
    /* 2E6C4 8003FEB4 0D80013C */  lui        $at, %hi(D_800CAE60)
    /* 2E6C8 8003FEB8 60AE24AC */  sw         $a0, %lo(D_800CAE60)($at)
  .L8003FEBC:
    /* 2E6CC 8003FEBC 0800E003 */  jr         $ra
    /* 2E6D0 8003FEC0 00000000 */   nop
endlabel func_8003FE78
