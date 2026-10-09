/* Handwritten function */
nonmatching func_8001ACE4, 0x94

glabel func_8001ACE4
    /* 94F4 8001ACE4 0C80023C */  lui        $v0, %hi(D_800BF3A0)
    /* 94F8 8001ACE8 A0F34224 */  addiu      $v0, $v0, %lo(D_800BF3A0)
    /* 94FC 8001ACEC 0000A88C */  lw         $t0, 0x0($a1)
    /* 9500 8001ACF0 21280000 */  addu       $a1, $zero, $zero
    /* 9504 8001ACF4 1000A98F */  lw         $t1, 0x10($sp)
    /* 9508 8001ACF8 FF0F0331 */  andi       $v1, $t0, 0xFFF
    /* 950C 8001ACFC 80180300 */  sll        $v1, $v1, 2
    /* 9510 8001AD00 21186200 */  addu       $v1, $v1, $v0
    /* 9514 8001AD04 0000648C */  lw         $a0, 0x0($v1)
    /* 9518 8001AD08 03440800 */  sra        $t0, $t0, 16
    /* 951C 8001AD0C 02140400 */  srl        $v0, $a0, 16
    /* 9520 8001AD10 00008248 */  mtc2       $v0, $0 /* handwritten instruction */
    /* 9524 8001AD14 00088448 */  mtc2       $a0, $1 /* handwritten instruction */
    /* 9528 8001AD18 0068C848 */  ctc2       $t0, $13 /* handwritten instruction */
    /* 952C 8001AD1C 0070C548 */  ctc2       $a1, $14 /* handwritten instruction */
    /* 9530 8001AD20 0078C848 */  ctc2       $t0, $15 /* handwritten instruction */
    /* 9534 8001AD24 0400C294 */  lhu        $v0, 0x4($a2)
    /* 9538 8001AD28 0000E38C */  lw         $v1, 0x0($a3)
    /* 953C 8001AD2C 0400E484 */  lh         $a0, 0x4($a3)
    /* 9540 8001AD30 0000C68C */  lw         $a2, 0x0($a2)
    /* 9544 8001AD34 00000000 */  nop
    /* 9548 8001AD38 0040C648 */  ctc2       $a2, $8 /* handwritten instruction */
    /* 954C 8001AD3C 0048C248 */  ctc2       $v0, $9 /* handwritten instruction */
    /* 9550 8001AD40 0050C548 */  ctc2       $a1, $10 /* handwritten instruction */
    /* 9554 8001AD44 0058C348 */  ctc2       $v1, $11 /* handwritten instruction */
    /* 9558 8001AD48 0060C448 */  ctc2       $a0, $12 /* handwritten instruction */
    /* 955C 8001AD4C 00000000 */  nop
    /* 9560 8001AD50 00000000 */  nop
    /* 9564 8001AD54 12204A4A */  mvmva      1, 1, 0, 1, 0
    /* 9568 8001AD58 00C80348 */  mfc2       $v1, $25 /* handwritten instruction */
    /* 956C 8001AD5C 00D80448 */  mfc2       $a0, $27 /* handwritten instruction */
    /* 9570 8001AD60 00000000 */  nop
    /* 9574 8001AD64 26106400 */  xor        $v0, $v1, $a0
    /* 9578 8001AD68 C2170200 */  srl        $v0, $v0, 31
    /* 957C 8001AD6C 000023AD */  sw         $v1, 0x0($t1)
    /* 9580 8001AD70 0800E003 */  jr         $ra
    /* 9584 8001AD74 040024AD */   sw        $a0, 0x4($t1)
endlabel func_8001ACE4
