/* Handwritten function */
nonmatching func_800AE390, 0x80

glabel func_800AE390
    /* 9CBA0 800AE390 0C80013C */  lui        $at, %hi(D_800BF390)
    /* 9CBA4 800AE394 90F33FAC */  sw         $ra, %lo(D_800BF390)($at)
    /* 9CBA8 800AE398 BAB9020C */  jal        func_800AE6E8
    /* 9CBAC 800AE39C 00000000 */   nop
    /* 9CBB0 800AE3A0 0C801F3C */  lui        $ra, %hi(D_800BF390)
    /* 9CBB4 800AE3A4 90F3FF8F */  lw         $ra, %lo(D_800BF390)($ra)
    /* 9CBB8 800AE3A8 00000000 */  nop
    /* 9CBBC 800AE3AC 00600240 */  mfc0       $v0, $12 /* handwritten instruction */
    /* 9CBC0 800AE3B0 0040033C */  lui        $v1, (0x40000000 >> 16)
    /* 9CBC4 800AE3B4 25104300 */  or         $v0, $v0, $v1
    /* 9CBC8 800AE3B8 00608240 */  mtc0       $v0, $12 /* handwritten instruction */
    /* 9CBCC 800AE3BC 00000000 */  nop
    /* 9CBD0 800AE3C0 55010824 */  addiu      $t0, $zero, 0x155
    /* 9CBD4 800AE3C4 00E8C848 */  ctc2       $t0, $29 /* handwritten instruction */
    /* 9CBD8 800AE3C8 00000000 */  nop
    /* 9CBDC 800AE3CC 00010824 */  addiu      $t0, $zero, 0x100
    /* 9CBE0 800AE3D0 00F0C848 */  ctc2       $t0, $30 /* handwritten instruction */
    /* 9CBE4 800AE3D4 00000000 */  nop
    /* 9CBE8 800AE3D8 E8030824 */  addiu      $t0, $zero, 0x3E8
    /* 9CBEC 800AE3DC 00D0C848 */  ctc2       $t0, $26 /* handwritten instruction */
    /* 9CBF0 800AE3E0 00000000 */  nop
    /* 9CBF4 800AE3E4 9EEF0824 */  addiu      $t0, $zero, -0x1062
    /* 9CBF8 800AE3E8 00D8C848 */  ctc2       $t0, $27 /* handwritten instruction */
    /* 9CBFC 800AE3EC 00000000 */  nop
    /* 9CC00 800AE3F0 4001083C */  lui        $t0, (0x1400000 >> 16)
    /* 9CC04 800AE3F4 00E0C848 */  ctc2       $t0, $28 /* handwritten instruction */
    /* 9CC08 800AE3F8 00000000 */  nop
    /* 9CC0C 800AE3FC 00C0C048 */  ctc2       $zero, $24 /* handwritten instruction */
    /* 9CC10 800AE400 00C8C048 */  ctc2       $zero, $25 /* handwritten instruction */
    /* 9CC14 800AE404 00000000 */  nop
    /* 9CC18 800AE408 0800E003 */  jr         $ra
    /* 9CC1C 800AE40C 00000000 */   nop
endlabel func_800AE390
    /* 9CC20 800AE410 00000000 */  nop
    /* 9CC24 800AE414 00000000 */  nop
