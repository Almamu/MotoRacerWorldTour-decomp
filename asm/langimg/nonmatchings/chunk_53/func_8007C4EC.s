/* Handwritten function */
nonmatching func_8007C4EC, 0x294

glabel func_8007C4EC
    /* 6ACFC 8007C4EC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6AD00 8007C4F0 21388000 */  addu       $a3, $a0, $zero
    /* 6AD04 8007C4F4 80180600 */  sll        $v1, $a2, 2
    /* 6AD08 8007C4F8 0D80083C */  lui        $t0, %hi(D_800C8C70)
    /* 6AD0C 8007C4FC 708C088D */  lw         $t0, %lo(D_800C8C70)($t0)
    /* 6AD10 8007C500 0D80023C */  lui        $v0, %hi(D_800C8C6C)
    /* 6AD14 8007C504 6C8C428C */  lw         $v0, %lo(D_800C8C6C)($v0)
    /* 6AD18 8007C508 0D80043C */  lui        $a0, %hi(D_800C8C78)
    /* 6AD1C 8007C50C 788C848C */  lw         $a0, %lo(D_800C8C78)($a0)
    /* 6AD20 8007C510 21186600 */  addu       $v1, $v1, $a2
    /* 6AD24 8007C514 2000BEAF */  sw         $fp, 0x20($sp)
    /* 6AD28 8007C518 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 6AD2C 8007C51C 1800B6AF */  sw         $s6, 0x18($sp)
    /* 6AD30 8007C520 1400B5AF */  sw         $s5, 0x14($sp)
    /* 6AD34 8007C524 1000B4AF */  sw         $s4, 0x10($sp)
    /* 6AD38 8007C528 0C00B3AF */  sw         $s3, 0xC($sp)
    /* 6AD3C 8007C52C 0800B2AF */  sw         $s2, 0x8($sp)
    /* 6AD40 8007C530 0400B1AF */  sw         $s1, 0x4($sp)
    /* 6AD44 8007C534 23100201 */  subu       $v0, $t0, $v0
    /* 6AD48 8007C538 0C004224 */  addiu      $v0, $v0, 0xC
    /* 6AD4C 8007C53C 21104300 */  addu       $v0, $v0, $v1
    /* 6AD50 8007C540 2A104400 */  slt        $v0, $v0, $a0
    /* 6AD54 8007C544 83004010 */  beqz       $v0, .L8007C754
    /* 6AD58 8007C548 0000B0AF */   sw        $s0, 0x0($sp)
    /* 6AD5C 8007C54C 21480001 */  addu       $t1, $t0, $zero
    /* 6AD60 8007C550 C77F103C */  lui        $s0, (0x7FC7E000 >> 16)
    /* 6AD64 8007C554 2170E000 */  addu       $t6, $a3, $zero
    /* 6AD68 8007C558 00E01036 */  ori        $s0, $s0, (0x7FC7E000 & 0xFFFF)
    /* 6AD6C 8007C55C 0000C38D */  lw         $v1, 0x0($t6)
    /* 6AD70 8007C560 0400C48D */  lw         $a0, 0x4($t6)
    /* 6AD74 8007C564 0D80153C */  lui        $s5, %hi(D_800CBDC0)
    /* 6AD78 8007C568 C0BDB58E */  lw         $s5, %lo(D_800CBDC0)($s5)
    /* 6AD7C 8007C56C FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6AD80 8007C570 C0100200 */  sll        $v0, $v0, 3
    /* 6AD84 8007C574 21C8A200 */  addu       $t9, $a1, $v0
    /* 6AD88 8007C578 021C0300 */  srl        $v1, $v1, 16
    /* 6AD8C 8007C57C C0180300 */  sll        $v1, $v1, 3
    /* 6AD90 8007C580 21C0A300 */  addu       $t8, $a1, $v1
    /* 6AD94 8007C584 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6AD98 8007C588 C0100200 */  sll        $v0, $v0, 3
    /* 6AD9C 8007C58C 2188A200 */  addu       $s1, $a1, $v0
    /* 6ADA0 8007C590 02240400 */  srl        $a0, $a0, 16
    /* 6ADA4 8007C594 C0200400 */  sll        $a0, $a0, 3
    /* 6ADA8 8007C598 0D80023C */  lui        $v0, %hi(D_800CBDC4)
    /* 6ADAC 8007C59C C4BD428C */  lw         $v0, %lo(D_800CBDC4)($v0)
    /* 6ADB0 8007C5A0 00000000 */  nop
    /* 6ADB4 8007C5A4 0400538C */  lw         $s3, 0x4($v0)
    /* 6ADB8 8007C5A8 6800C010 */  beqz       $a2, .L8007C74C
    /* 6ADBC 8007C5AC 2178A400 */   addu      $t7, $a1, $a0
    /* 6ADC0 8007C5B0 00071E3C */  lui        $fp, (0x7000000 >> 16)
    /* 6ADC4 8007C5B4 00E1123C */  lui        $s2, (0xE1000600 >> 16)
    /* 6ADC8 8007C5B8 00065236 */  ori        $s2, $s2, (0xE1000600 & 0xFFFF)
    /* 6ADCC 8007C5BC 0015173C */  lui        $s7, (0x15000000 >> 16)
    /* 6ADD0 8007C5C0 00C0163C */  lui        $s6, (0xC0000000 >> 16)
    /* 6ADD4 8007C5C4 FBFF7426 */  addiu      $s4, $s3, -0x5
    /* 6ADD8 8007C5C8 0C002D25 */  addiu      $t5, $t1, 0xC
    /* 6ADDC 8007C5CC 04002C25 */  addiu      $t4, $t1, 0x4
  .L8007C5D0:
    /* 6ADE0 8007C5D0 000020CB */  lwc2       $0, 0x0($t9)
    /* 6ADE4 8007C5D4 040021CB */  lwc2       $1, 0x4($t9)
    /* 6ADE8 8007C5D8 000002CB */  lwc2       $2, 0x0($t8)
    /* 6ADEC 8007C5DC 040003CB */  lwc2       $3, 0x4($t8)
    /* 6ADF0 8007C5E0 0000E4C9 */  lwc2       $4, 0x0($t7)
    /* 6ADF4 8007C5E4 0400E5C9 */  lwc2       $5, 0x4($t7)
    /* 6ADF8 8007C5E8 2138C001 */  addu       $a3, $t6, $zero
    /* 6ADFC 8007C5EC 1C00EE24 */  addiu      $t6, $a3, 0x1C
    /* 6AE00 8007C5F0 21582002 */  addu       $t3, $s1, $zero
    /* 6AE04 8007C5F4 3000284A */  rtpt
    /* 6AE08 8007C5F8 1C00E38C */  lw         $v1, 0x1C($a3)
    /* 6AE0C 8007C5FC 0400C48D */  lw         $a0, 0x4($t6)
    /* 6AE10 8007C600 1800E88C */  lw         $t0, 0x18($a3)
    /* 6AE14 8007C604 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 6AE18 8007C608 C0100200 */  sll        $v0, $v0, 3
    /* 6AE1C 8007C60C 21C8A200 */  addu       $t9, $a1, $v0
    /* 6AE20 8007C610 021C0300 */  srl        $v1, $v1, 16
    /* 6AE24 8007C614 C0180300 */  sll        $v1, $v1, 3
    /* 6AE28 8007C618 21C0A300 */  addu       $t8, $a1, $v1
    /* 6AE2C 8007C61C FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 6AE30 8007C620 C0100200 */  sll        $v0, $v0, 3
    /* 6AE34 8007C624 2188A200 */  addu       $s1, $a1, $v0
    /* 6AE38 8007C628 02240400 */  srl        $a0, $a0, 16
    /* 6AE3C 8007C62C C0200400 */  sll        $a0, $a0, 3
    /* 6AE40 8007C630 2178A400 */  addu       $t7, $a1, $a0
    /* 6AE44 8007C634 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6AE48 8007C638 00000000 */  nop
    /* 6AE4C 8007C63C 24105000 */  and        $v0, $v0, $s0
    /* 6AE50 8007C640 3F004014 */  bnez       $v0, .L8007C740
    /* 6AE54 8007C644 00000000 */   nop
    /* 6AE58 8007C648 0600404B */  nclip
    /* 6AE5C 8007C64C 60000231 */  andi       $v0, $t0, 0x60
    /* 6AE60 8007C650 21105200 */  addu       $v0, $v0, $s2
    /* 6AE64 8007C654 08002325 */  addiu      $v1, $t1, 0x8
    /* 6AE68 8007C658 00003EAD */  sw         $fp, 0x0($t1)
    /* 6AE6C 8007C65C 040080AD */  sw         $zero, 0x4($t4)
    /* 6AE70 8007C660 000082AD */  sw         $v0, 0x0($t4)
    /* 6AE74 8007C664 00C00A48 */  mfc2       $t2, $24 /* handwritten instruction */
    /* 6AE78 8007C668 08006CE8 */  swc2       $12, 0x8($v1)
    /* 6AE7C 8007C66C 0C006DE8 */  swc2       $13, 0xC($v1)
    /* 6AE80 8007C670 10006EE8 */  swc2       $14, 0x10($v1)
    /* 6AE84 8007C674 000060C9 */  lwc2       $0, 0x0($t3)
    /* 6AE88 8007C678 040061C9 */  lwc2       $1, 0x4($t3)
    /* 6AE8C 8007C67C 00000000 */  nop
    /* 6AE90 8007C680 00000000 */  nop
    /* 6AE94 8007C684 0100184A */  rtps
    /* 6AE98 8007C688 0800E48C */  lw         $a0, 0x8($a3)
    /* 6AE9C 8007C68C 00000000 */  nop
    /* 6AEA0 8007C690 0000A4AD */  sw         $a0, 0x0($t5)
    /* 6AEA4 8007C694 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* 6AEA8 8007C698 00000000 */  nop
    /* 6AEAC 8007C69C 24105000 */  and        $v0, $v0, $s0
    /* 6AEB0 8007C6A0 27004014 */  bnez       $v0, .L8007C740
    /* 6AEB4 8007C6A4 00000000 */   nop
    /* 6AEB8 8007C6A8 14006EE8 */  swc2       $14, 0x14($v1)
    /* 6AEBC 8007C6AC 10004105 */  bgez       $t2, .L8007C6F0
    /* 6AEC0 8007C6B0 00000000 */   nop
    /* 6AEC4 8007C6B4 0600404B */  nclip
    /* 6AEC8 8007C6B8 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 6AECC 8007C6BC 00000000 */  nop
    /* 6AED0 8007C6C0 0B004018 */  blez       $v0, .L8007C6F0
    /* 6AED4 8007C6C4 83170800 */   sra       $v0, $t0, 30
    /* 6AED8 8007C6C8 01004230 */  andi       $v0, $v0, 0x1
    /* 6AEDC 8007C6CC 1C004010 */  beqz       $v0, .L8007C740
    /* 6AEE0 8007C6D0 00000000 */   nop
    /* 6AEE4 8007C6D4 1800E28C */  lw         $v0, 0x18($a3)
    /* 6AEE8 8007C6D8 00000000 */  nop
    /* 6AEEC 8007C6DC 80004230 */  andi       $v0, $v0, 0x80
    /* 6AEF0 8007C6E0 03004010 */  beqz       $v0, .L8007C6F0
    /* 6AEF4 8007C6E4 42100400 */   srl       $v0, $a0, 1
    /* 6AEF8 8007C6E8 21105700 */  addu       $v0, $v0, $s7
    /* 6AEFC 8007C6EC 0000A2AD */  sw         $v0, 0x0($t5)
  .L8007C6F0:
    /* 6AF00 8007C6F0 2E00684B */  avsz4
    /* 6AF04 8007C6F4 C0140800 */  sll        $v0, $t0, 19
    /* 6AF08 8007C6F8 24105600 */  and        $v0, $v0, $s6
    /* 6AF0C 8007C6FC 43160200 */  sra        $v0, $v0, 25
    /* 6AF10 8007C700 00380348 */  mfc2       $v1, $7 /* handwritten instruction */
    /* 6AF14 8007C704 00000000 */  nop
    /* 6AF18 8007C708 21104300 */  addu       $v0, $v0, $v1
    /* 6AF1C 8007C70C 2A205400 */  slt        $a0, $v0, $s4
    /* 6AF20 8007C710 03008014 */  bnez       $a0, .L8007C720
    /* 6AF24 8007C714 80100200 */   sll       $v0, $v0, 2
    /* 6AF28 8007C718 FAFF6226 */  addiu      $v0, $s3, -0x6
    /* 6AF2C 8007C71C 80100200 */  sll        $v0, $v0, 2
  .L8007C720:
    /* 6AF30 8007C720 2110A202 */  addu       $v0, $s5, $v0
    /* 6AF34 8007C724 02004488 */  lwl        $a0, 0x2($v0)
    /* 6AF38 8007C728 001A0900 */  sll        $v1, $t1, 8
    /* 6AF3C 8007C72C 020024A9 */  swl        $a0, 0x2($t1)
    /* 6AF40 8007C730 020043A8 */  swl        $v1, 0x2($v0)
    /* 6AF44 8007C734 20008C25 */  addiu      $t4, $t4, 0x20
    /* 6AF48 8007C738 2000AD25 */  addiu      $t5, $t5, 0x20
    /* 6AF4C 8007C73C 20002925 */  addiu      $t1, $t1, 0x20
  .L8007C740:
    /* 6AF50 8007C740 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6AF54 8007C744 A2FFC014 */  bnez       $a2, .L8007C5D0
    /* 6AF58 8007C748 00000000 */   nop
  .L8007C74C:
    /* 6AF5C 8007C74C 0D80013C */  lui        $at, %hi(D_800C8C70)
    /* 6AF60 8007C750 708C29AC */  sw         $t1, %lo(D_800C8C70)($at)
  .L8007C754:
    /* 6AF64 8007C754 2000BE8F */  lw         $fp, 0x20($sp)
    /* 6AF68 8007C758 1C00B78F */  lw         $s7, 0x1C($sp)
    /* 6AF6C 8007C75C 1800B68F */  lw         $s6, 0x18($sp)
    /* 6AF70 8007C760 1400B58F */  lw         $s5, 0x14($sp)
    /* 6AF74 8007C764 1000B48F */  lw         $s4, 0x10($sp)
    /* 6AF78 8007C768 0C00B38F */  lw         $s3, 0xC($sp)
    /* 6AF7C 8007C76C 0800B28F */  lw         $s2, 0x8($sp)
    /* 6AF80 8007C770 0400B18F */  lw         $s1, 0x4($sp)
    /* 6AF84 8007C774 0000B08F */  lw         $s0, 0x0($sp)
    /* 6AF88 8007C778 0800E003 */  jr         $ra
    /* 6AF8C 8007C77C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8007C4EC
