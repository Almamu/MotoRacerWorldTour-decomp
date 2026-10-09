/* Handwritten function */
nonmatching func_8001ABBC, 0x128

glabel func_8001ABBC
    /* 93CC 8001ABBC 2160C000 */  addu       $t4, $a2, $zero
    /* 93D0 8001ABC0 1C008A8C */  lw         $t2, 0x1C($a0)
    /* 93D4 8001ABC4 2000838C */  lw         $v1, 0x20($a0)
    /* 93D8 8001ABC8 2400868C */  lw         $a2, 0x24($a0)
    /* 93DC 8001ABCC 03140A00 */  sra        $v0, $t2, 16
    /* 93E0 8001ABD0 033C0300 */  sra        $a3, $v1, 16
    /* 93E4 8001ABD4 03440600 */  sra        $t0, $a2, 16
    /* 93E8 8001ABD8 0068C248 */  ctc2       $v0, $13 /* handwritten instruction */
    /* 93EC 8001ABDC 0070C748 */  ctc2       $a3, $14 /* handwritten instruction */
    /* 93F0 8001ABE0 0078C848 */  ctc2       $t0, $15 /* handwritten instruction */
    /* 93F4 8001ABE4 FF0F4231 */  andi       $v0, $t2, 0xFFF
    /* 93F8 8001ABE8 0C80093C */  lui        $t1, %hi(D_800BF3A0)
    /* 93FC 8001ABEC A0F32925 */  addiu      $t1, $t1, %lo(D_800BF3A0)
    /* 9400 8001ABF0 80100200 */  sll        $v0, $v0, 2
    /* 9404 8001ABF4 21104900 */  addu       $v0, $v0, $t1
    /* 9408 8001ABF8 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 940C 8001ABFC 80180300 */  sll        $v1, $v1, 2
    /* 9410 8001AC00 21186900 */  addu       $v1, $v1, $t1
    /* 9414 8001AC04 0000488C */  lw         $t0, 0x0($v0)
    /* 9418 8001AC08 FFFF023C */  lui        $v0, (0xFFFF0000 >> 16)
    /* 941C 8001AC0C FF0FC630 */  andi       $a2, $a2, 0xFFF
    /* 9420 8001AC10 80300600 */  sll        $a2, $a2, 2
    /* 9424 8001AC14 2130C900 */  addu       $a2, $a2, $t1
    /* 9428 8001AC18 0000678C */  lw         $a3, 0x0($v1)
    /* 942C 8001AC1C 025C0800 */  srl        $t3, $t0, 16
    /* 9430 8001AC20 FFFF0831 */  andi       $t0, $t0, 0xFFFF
    /* 9434 8001AC24 2410E200 */  and        $v0, $a3, $v0
    /* 9438 8001AC28 25400201 */  or         $t0, $t0, $v0
    /* 943C 8001AC2C 0000C28C */  lw         $v0, 0x0($a2)
    /* 9440 8001AC30 003C0700 */  sll        $a3, $a3, 16
    /* 9444 8001AC34 021C0200 */  srl        $v1, $v0, 16
    /* 9448 8001AC38 0040CB48 */  ctc2       $t3, $8 /* handwritten instruction */
    /* 944C 8001AC3C 0048C848 */  ctc2       $t0, $9 /* handwritten instruction */
    /* 9450 8001AC40 0050C748 */  ctc2       $a3, $10 /* handwritten instruction */
    /* 9454 8001AC44 0058C348 */  ctc2       $v1, $11 /* handwritten instruction */
    /* 9458 8001AC48 0060C248 */  ctc2       $v0, $12 /* handwritten instruction */
    /* 945C 8001AC4C 0000A0C8 */  lwc2       $0, 0x0($a1)
    /* 9460 8001AC50 0400A1C8 */  lwc2       $1, 0x4($a1)
    /* 9464 8001AC54 00000000 */  nop
    /* 9468 8001AC58 00000000 */  nop
    /* 946C 8001AC5C 12204A4A */  mvmva      1, 1, 0, 1, 0
    /* 9470 8001AC60 28008A8C */  lw         $t2, 0x28($a0)
    /* 9474 8001AC64 00000000 */  nop
    /* 9478 8001AC68 FF0F4231 */  andi       $v0, $t2, 0xFFF
    /* 947C 8001AC6C 80100200 */  sll        $v0, $v0, 2
    /* 9480 8001AC70 21104900 */  addu       $v0, $v0, $t1
    /* 9484 8001AC74 0000488C */  lw         $t0, 0x0($v0)
    /* 9488 8001AC78 00C80348 */  mfc2       $v1, $25 /* handwritten instruction */
    /* 948C 8001AC7C 00D00448 */  mfc2       $a0, $26 /* handwritten instruction */
    /* 9490 8001AC80 00D80548 */  mfc2       $a1, $27 /* handwritten instruction */
    /* 9494 8001AC84 00804231 */  andi       $v0, $t2, 0x8000
    /* 9498 8001AC88 09004014 */  bnez       $v0, .L8001ACB0
    /* 949C 8001AC8C 025C0800 */   srl       $t3, $t0, 16
    /* 94A0 8001AC90 FFFF0831 */  andi       $t0, $t0, 0xFFFF
    /* 94A4 8001AC94 03140A00 */  sra        $v0, $t2, 16
    /* 94A8 8001AC98 0040CB48 */  ctc2       $t3, $8 /* handwritten instruction */
    /* 94AC 8001AC9C 0048C848 */  ctc2       $t0, $9 /* handwritten instruction */
    /* 94B0 8001ACA0 0068C248 */  ctc2       $v0, $13 /* handwritten instruction */
    /* 94B4 8001ACA4 00000000 */  nop
    /* 94B8 8001ACA8 00000000 */  nop
    /* 94BC 8001ACAC 12204A4A */  mvmva      1, 1, 0, 1, 0
  .L8001ACB0:
    /* 94C0 8001ACB0 25106400 */  or         $v0, $v1, $a0
    /* 94C4 8001ACB4 04008011 */  beqz       $t4, .L8001ACC8
    /* 94C8 8001ACB8 25104500 */   or        $v0, $v0, $a1
    /* 94CC 8001ACBC 000083AD */  sw         $v1, 0x0($t4)
    /* 94D0 8001ACC0 040084AD */  sw         $a0, 0x4($t4)
    /* 94D4 8001ACC4 080085AD */  sw         $a1, 0x8($t4)
  .L8001ACC8:
    /* 94D8 8001ACC8 00C80348 */  mfc2       $v1, $25 /* handwritten instruction */
    /* 94DC 8001ACCC 02008011 */  beqz       $t4, .L8001ACD8
    /* 94E0 8001ACD0 25104300 */   or        $v0, $v0, $v1
    /* 94E4 8001ACD4 0C0083AD */  sw         $v1, 0xC($t4)
  .L8001ACD8:
    /* 94E8 8001ACD8 27100200 */  nor        $v0, $zero, $v0
    /* 94EC 8001ACDC 0800E003 */  jr         $ra
    /* 94F0 8001ACE0 C2170200 */   srl       $v0, $v0, 31
endlabel func_8001ABBC
