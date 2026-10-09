/* Handwritten function */
nonmatching func_8007AC90, 0x240

glabel func_8007AC90
    /* 694A0 8007AC90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 694A4 8007AC94 21388000 */  addu       $a3, $a0, $zero
    /* 694A8 8007AC98 40180600 */  sll        $v1, $a2, 1
    /* 694AC 8007AC9C 21186600 */  addu       $v1, $v1, $a2
    /* 694B0 8007ACA0 0D80083C */  lui        $t0, %hi(D_800C8C70)
    /* 694B4 8007ACA4 708C088D */  lw         $t0, %lo(D_800C8C70)($t0)
    /* 694B8 8007ACA8 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 694BC 8007ACAC 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 694C0 8007ACB0 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 694C4 8007ACB4 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 694C8 8007ACB8 40180300 */  sll        $v1, $v1, 1
    /* 694CC 8007ACBC 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 694D0 8007ACC0 1800B6AF */  sw         $s6, 0x18($sp)
    /* 694D4 8007ACC4 1400B5AF */  sw         $s5, 0x14($sp)
    /* 694D8 8007ACC8 1000B4AF */  sw         $s4, 0x10($sp)
    /* 694DC 8007ACCC 0C00B3AF */  sw         $s3, 0xC($sp)
    /* 694E0 8007ACD0 0800B2AF */  sw         $s2, 0x8($sp)
    /* 694E4 8007ACD4 0400B1AF */  sw         $s1, 0x4($sp)
    /* 694E8 8007ACD8 23100201 */  subu       $v0, $t0, $v0
    /* 694EC 8007ACDC 0C004224 */  addiu      $v0, $v0, 0xC
    /* 694F0 8007ACE0 21104300 */  addu       $v0, $v0, $v1
    /* 694F4 8007ACE4 2A104400 */  slt        $v0, $v0, $a0
    /* 694F8 8007ACE8 6F004010 */  beqz       $v0, .L8007AEA8
    /* 694FC 8007ACEC 0000B0AF */   sw        $s0, 0x0($sp)
    /* 69500 8007ACF0 21480001 */  addu       $t1, $t0, $zero
    /* 69504 8007ACF4 C77F113C */  lui        $s1, (0x7FC7E000 >> 16)
    /* 69508 8007ACF8 2170E000 */  addu       $t6, $a3, $zero
    /* 6950C 8007ACFC 00E03136 */  ori        $s1, $s1, (0x7FC7E000 & 0xFFFF)
    /* 69510 8007AD00 0000C38D */  lw         $v1, 0x0($t6)
    /* 69514 8007AD04 0D80043C */  lui        $a0, %hi(D_800CBDC4)
    /* 69518 8007AD08 C4BD848C */  lw         $a0, %lo(D_800CBDC4)($a0)
    /* 6951C 8007AD0C 0D80143C */  lui        $s4, %hi(D_800CBDC0)
    /* 69520 8007AD10 C0BD948E */  lw         $s4, %lo(D_800CBDC0)($s4)
    /* 69524 8007AD14 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 69528 8007AD18 C0100200 */  sll        $v0, $v0, 3
    /* 6952C 8007AD1C 21C8A200 */  addu       $t9, $a1, $v0
    /* 69530 8007AD20 021C0300 */  srl        $v1, $v1, 16
    /* 69534 8007AD24 C0180300 */  sll        $v1, $v1, 3
    /* 69538 8007AD28 21C0A300 */  addu       $t8, $a1, $v1
    /* 6953C 8007AD2C 0400C295 */  lhu        $v0, 0x4($t6)
    /* 69540 8007AD30 0400928C */  lw         $s2, 0x4($a0)
    /* 69544 8007AD34 C0100200 */  sll        $v0, $v0, 3
    /* 69548 8007AD38 5900C010 */  beqz       $a2, .L8007AEA0
    /* 6954C 8007AD3C 2178A200 */   addu      $t7, $a1, $v0
    /* 69550 8007AD40 0008173C */  lui        $s7, (0x8000000 >> 16)
    /* 69554 8007AD44 00E1103C */  lui        $s0, (0xE1000600 >> 16)
    /* 69558 8007AD48 00061036 */  ori        $s0, $s0, (0xE1000600 & 0xFFFF)
    /* 6955C 8007AD4C 0019163C */  lui        $s6, (0x19000000 >> 16)
    /* 69560 8007AD50 00C0153C */  lui        $s5, (0xC0000000 >> 16)
    /* 69564 8007AD54 FBFF5326 */  addiu      $s3, $s2, -0x5
    /* 69568 8007AD58 1C002D25 */  addiu      $t5, $t1, 0x1C
    /* 6956C 8007AD5C 14002825 */  addiu      $t0, $t1, 0x14
  .L8007AD60:
    /* 69570 8007AD60 000020CB */  lwc2       $0, 0x0($t9)
    /* 69574 8007AD64 040021CB */  lwc2       $1, 0x4($t9)
    /* 69578 8007AD68 000002CB */  lwc2       $2, 0x0($t8)
    /* 6957C 8007AD6C 040003CB */  lwc2       $3, 0x4($t8)
    /* 69580 8007AD70 0000E4C9 */  lwc2       $4, 0x0($t7)
    /* 69584 8007AD74 0400E5C9 */  lwc2       $5, 0x4($t7)
    /* 69588 8007AD78 2138C001 */  addu       $a3, $t6, $zero
    /* 6958C 8007AD7C 1C00EE24 */  addiu      $t6, $a3, 0x1C
    /* 69590 8007AD80 3000284A */  rtpt
    /* 69594 8007AD84 1C00E38C */  lw         $v1, 0x1C($a3)
    /* 69598 8007AD88 1800E48C */  lw         $a0, 0x18($a3)
    /* 6959C 8007AD8C FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 695A0 8007AD90 C0100200 */  sll        $v0, $v0, 3
    /* 695A4 8007AD94 21C8A200 */  addu       $t9, $a1, $v0
    /* 695A8 8007AD98 021C0300 */  srl        $v1, $v1, 16
    /* 695AC 8007AD9C C0180300 */  sll        $v1, $v1, 3
    /* 695B0 8007ADA0 21C0A300 */  addu       $t8, $a1, $v1
    /* 695B4 8007ADA4 0400C295 */  lhu        $v0, 0x4($t6)
    /* 695B8 8007ADA8 0800E38C */  lw         $v1, 0x8($a3)
    /* 695BC 8007ADAC C0100200 */  sll        $v0, $v0, 3
    /* 695C0 8007ADB0 2178A200 */  addu       $t7, $a1, $v0
    /* 695C4 8007ADB4 00006A8C */  lw         $t2, 0x0($v1)
    /* 695C8 8007ADB8 04006B8C */  lw         $t3, 0x4($v1)
    /* 695CC 8007ADBC 08006C8C */  lw         $t4, 0x8($v1)
    /* 695D0 8007ADC0 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 695D4 8007ADC4 00000000 */  nop
    /* 695D8 8007ADC8 24105100 */  and        $v0, $v0, $s1
    /* 695DC 8007ADCC 31004014 */  bnez       $v0, .L8007AE94
    /* 695E0 8007ADD0 00000000 */   nop
    /* 695E4 8007ADD4 0600404B */  nclip
    /* 695E8 8007ADD8 60008230 */  andi       $v0, $a0, 0x60
    /* 695EC 8007ADDC 21105000 */  addu       $v0, $v0, $s0
    /* 695F0 8007ADE0 08002725 */  addiu      $a3, $t1, 0x8
    /* 695F4 8007ADE4 000037AD */  sw         $s7, 0x0($t1)
    /* 695F8 8007ADE8 F4FF00AD */  sw         $zero, -0xC($t0)
    /* 695FC 8007ADEC F0FF02AD */  sw         $v0, -0x10($t0)
    /* 69600 8007ADF0 F8FF0AAD */  sw         $t2, -0x8($t0)
    /* 69604 8007ADF4 00000BAD */  sw         $t3, 0x0($t0)
    /* 69608 8007ADF8 0000ACAD */  sw         $t4, 0x0($t5)
    /* 6960C 8007ADFC 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 69610 8007AE00 00000000 */  nop
    /* 69614 8007AE04 0C004104 */  bgez       $v0, .L8007AE38
    /* 69618 8007AE08 83170400 */   sra       $v0, $a0, 30
    /* 6961C 8007AE0C 01004230 */  andi       $v0, $v0, 0x1
    /* 69620 8007AE10 20004010 */  beqz       $v0, .L8007AE94
    /* 69624 8007AE14 80008230 */   andi      $v0, $a0, 0x80
    /* 69628 8007AE18 07004010 */  beqz       $v0, .L8007AE38
    /* 6962C 8007AE1C 42100A00 */   srl       $v0, $t2, 1
    /* 69630 8007AE20 21105600 */  addu       $v0, $v0, $s6
    /* 69634 8007AE24 42180B00 */  srl        $v1, $t3, 1
    /* 69638 8007AE28 F8FF02AD */  sw         $v0, -0x8($t0)
    /* 6963C 8007AE2C 42100C00 */  srl        $v0, $t4, 1
    /* 69640 8007AE30 000003AD */  sw         $v1, 0x0($t0)
    /* 69644 8007AE34 0000A2AD */  sw         $v0, 0x0($t5)
  .L8007AE38:
    /* 69648 8007AE38 0800ECE8 */  swc2       $12, 0x8($a3)
    /* 6964C 8007AE3C 1000EDE8 */  swc2       $13, 0x10($a3)
    /* 69650 8007AE40 1800EEE8 */  swc2       $14, 0x18($a3)
    /* 69654 8007AE44 2D00584B */  avsz3
    /* 69658 8007AE48 C0140400 */  sll        $v0, $a0, 19
    /* 6965C 8007AE4C 24105500 */  and        $v0, $v0, $s5
    /* 69660 8007AE50 43160200 */  sra        $v0, $v0, 25
    /* 69664 8007AE54 00380348 */  mfc2       $v1, $7 /* handwritten instruction */
    /* 69668 8007AE58 00000000 */  nop
    /* 6966C 8007AE5C 21104300 */  addu       $v0, $v0, $v1
    /* 69670 8007AE60 2A205300 */  slt        $a0, $v0, $s3
    /* 69674 8007AE64 03008014 */  bnez       $a0, .L8007AE74
    /* 69678 8007AE68 80100200 */   sll       $v0, $v0, 2
    /* 6967C 8007AE6C FAFF4226 */  addiu      $v0, $s2, -0x6
    /* 69680 8007AE70 80100200 */  sll        $v0, $v0, 2
  .L8007AE74:
    /* 69684 8007AE74 21108202 */  addu       $v0, $s4, $v0
    /* 69688 8007AE78 02004488 */  lwl        $a0, 0x2($v0)
    /* 6968C 8007AE7C 001A0900 */  sll        $v1, $t1, 8
    /* 69690 8007AE80 020024A9 */  swl        $a0, 0x2($t1)
    /* 69694 8007AE84 020043A8 */  swl        $v1, 0x2($v0)
    /* 69698 8007AE88 24000825 */  addiu      $t0, $t0, 0x24
    /* 6969C 8007AE8C 2400AD25 */  addiu      $t5, $t5, 0x24
    /* 696A0 8007AE90 24002925 */  addiu      $t1, $t1, 0x24
  .L8007AE94:
    /* 696A4 8007AE94 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 696A8 8007AE98 B1FFC014 */  bnez       $a2, .L8007AD60
    /* 696AC 8007AE9C 00000000 */   nop
  .L8007AEA0:
    /* 696B0 8007AEA0 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 696B4 8007AEA4 708C29AC */  sw         $t1, %lo(D_800C8C70)($at)
  .L8007AEA8:
    /* 696B8 8007AEA8 1C00B78F */  lw         $s7, 0x1C($sp)
    /* 696BC 8007AEAC 1800B68F */  lw         $s6, 0x18($sp)
    /* 696C0 8007AEB0 1400B58F */  lw         $s5, 0x14($sp)
    /* 696C4 8007AEB4 1000B48F */  lw         $s4, 0x10($sp)
    /* 696C8 8007AEB8 0C00B38F */  lw         $s3, 0xC($sp)
    /* 696CC 8007AEBC 0800B28F */  lw         $s2, 0x8($sp)
    /* 696D0 8007AEC0 0400B18F */  lw         $s1, 0x4($sp)
    /* 696D4 8007AEC4 0000B08F */  lw         $s0, 0x0($sp)
    /* 696D8 8007AEC8 0800E003 */  jr         $ra
    /* 696DC 8007AECC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8007AC90
