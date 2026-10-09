nonmatching func_8009FD60, 0x88

glabel func_8009FD60
    /* 8E570 8009FD60 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8E574 8009FD64 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8E578 8009FD68 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8E57C 8009FD6C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8E580 8009FD70 800A858C */  lw         $a1, 0xA80($a0)
    /* 8E584 8009FD74 00000000 */  nop
    /* 8E588 8009FD78 6000B08C */  lw         $s0, 0x60($a1)
    /* 8E58C 8009FD7C A7AF020C */  jal        DrawSync
    /* 8E590 8009FD80 21200000 */   addu      $a0, $zero, $zero
    /* 8E594 8009FD84 3001038E */  lw         $v1, 0x130($s0)
    /* 8E598 8009FD88 01000624 */  addiu      $a2, $zero, 0x1
    /* 8E59C 8009FD8C 1000A3AF */  sw         $v1, 0x10($sp)
    /* 8E5A0 8009FD90 0801028E */  lw         $v0, 0x108($s0)
    /* 8E5A4 8009FD94 20011126 */  addiu      $s1, $s0, 0x120
    /* 8E5A8 8009FD98 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8E5AC 8009FD9C 7800058E */  lw         $a1, 0x78($s0)
    /* 8E5B0 8009FDA0 2C01078E */  lw         $a3, 0x12C($s0)
    /* 8E5B4 8009FDA4 1A1D020C */  jal        func_80087468
    /* 8E5B8 8009FDA8 21202002 */   addu      $a0, $s1, $zero
    /* 8E5BC 8009FDAC 3801038E */  lw         $v1, 0x138($s0)
    /* 8E5C0 8009FDB0 00000000 */  nop
    /* 8E5C4 8009FDB4 1000A3AF */  sw         $v1, 0x10($sp)
    /* 8E5C8 8009FDB8 0401028E */  lw         $v0, 0x104($s0)
    /* 8E5CC 8009FDBC 21202002 */  addu       $a0, $s1, $zero
    /* 8E5D0 8009FDC0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8E5D4 8009FDC4 7400058E */  lw         $a1, 0x74($s0)
    /* 8E5D8 8009FDC8 3401078E */  lw         $a3, 0x134($s0)
    /* 8E5DC 8009FDCC 1A1D020C */  jal        func_80087468
    /* 8E5E0 8009FDD0 01000624 */   addiu     $a2, $zero, 0x1
    /* 8E5E4 8009FDD4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8E5E8 8009FDD8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8E5EC 8009FDDC 1800B08F */  lw         $s0, 0x18($sp)
    /* 8E5F0 8009FDE0 0800E003 */  jr         $ra
    /* 8E5F4 8009FDE4 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8009FD60
