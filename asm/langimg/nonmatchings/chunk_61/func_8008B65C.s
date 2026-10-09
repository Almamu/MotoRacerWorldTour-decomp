/* Handwritten function */
nonmatching func_8008B65C, 0x19C

glabel func_8008B65C
    /* 79E6C 8008B65C 2158A000 */  addu       $t3, $a1, $zero
    /* 79E70 8008B660 801F0D3C */  lui        $t5, (0x1F800000 >> 16)
    /* 79E74 8008B664 F0F01834 */  ori        $t8, $zero, 0xF0F0
    /* 79E78 8008B668 0D80023C */  lui        $v0, %hi(D_800CBDC4)
    /* 79E7C 8008B66C C4BD428C */  lw         $v0, %lo(D_800CBDC4)($v0)
    /* 79E80 8008B670 0D80033C */  lui        $v1, %hi(D_800CBDC0)
    /* 79E84 8008B674 C0BD638C */  lw         $v1, %lo(D_800CBDC0)($v1)
    /* 79E88 8008B678 0400448C */  lw         $a0, 0x4($v0)
    /* 79E8C 8008B67C 04006F24 */  addiu      $t7, $v1, 0x4
    /* 79E90 8008B680 FEFF8E24 */  addiu      $t6, $a0, -0x2
  .L8008B684:
    /* 79E94 8008B684 0C00628D */  lw         $v0, 0xC($t3)
    /* 79E98 8008B688 00000000 */  nop
    /* 79E9C 8008B68C C0280200 */  sll        $a1, $v0, 3
    /* 79EA0 8008B690 FC03A530 */  andi       $a1, $a1, 0x3FC
    /* 79EA4 8008B694 2128A501 */  addu       $a1, $t5, $a1
    /* 79EA8 8008B698 42210200 */  srl        $a0, $v0, 5
    /* 79EAC 8008B69C FC038430 */  andi       $a0, $a0, 0x3FC
    /* 79EB0 8008B6A0 2120A401 */  addu       $a0, $t5, $a0
    /* 79EB4 8008B6A4 421B0200 */  srl        $v1, $v0, 13
    /* 79EB8 8008B6A8 FC036330 */  andi       $v1, $v1, 0x3FC
    /* 79EBC 8008B6AC 2118A301 */  addu       $v1, $t5, $v1
    /* 79EC0 8008B6B0 42150200 */  srl        $v0, $v0, 21
    /* 79EC4 8008B6B4 FC034230 */  andi       $v0, $v0, 0x3FC
    /* 79EC8 8008B6B8 2110A201 */  addu       $v0, $t5, $v0
    /* 79ECC 8008B6BC 0400B0C8 */  lwc2       $16, (0x1F800004 & 0xFFFF)($a1)
    /* 79ED0 8008B6C0 040091C8 */  lwc2       $17, (0x1F800004 & 0xFFFF)($a0)
    /* 79ED4 8008B6C4 040072C8 */  lwc2       $18, (0x1F800004 & 0xFFFF)($v1)
    /* 79ED8 8008B6C8 040053C8 */  lwc2       $19, (0x1F800004 & 0xFFFF)($v0)
    /* 79EDC 8008B6CC 0000A58C */  lw         $a1, (0x1F800000 & 0xFFFF)($a1)
    /* 79EE0 8008B6D0 0000848C */  lw         $a0, (0x1F800000 & 0xFFFF)($a0)
    /* 79EE4 8008B6D4 2E00684B */  avsz4
    /* 79EE8 8008B6D8 0000638C */  lw         $v1, (0x1F800000 & 0xFFFF)($v1)
    /* 79EEC 8008B6DC 0000478C */  lw         $a3, (0x1F800000 & 0xFFFF)($v0)
    /* 79EF0 8008B6E0 00608548 */  mtc2       $a1, $12 /* handwritten instruction */
    /* 79EF4 8008B6E4 00688448 */  mtc2       $a0, $13 /* handwritten instruction */
    /* 79EF8 8008B6E8 00708748 */  mtc2       $a3, $14 /* handwritten instruction */
    /* 79EFC 8008B6EC 00380848 */  mfc2       $t0, $7 /* handwritten instruction */
    /* 79F00 8008B6F0 00000000 */  nop
    /* 79F04 8008B6F4 0600404B */  nclip
    /* 79F08 8008B6F8 10006925 */  addiu      $t1, $t3, 0x10
    /* 79F0C 8008B6FC 08006A8D */  lw         $t2, 0x8($t3)
    /* 79F10 8008B700 00C00648 */  mfc2       $a2, $24 /* handwritten instruction */
    /* 79F14 8008B704 00608348 */  mtc2       $v1, $12 /* handwritten instruction */
    /* 79F18 8008B708 00000000 */  nop
    /* 79F1C 8008B70C 00000000 */  nop
    /* 79F20 8008B710 0600404B */  nclip
    /* 79F24 8008B714 04006C8D */  lw         $t4, 0x4($t3)
    /* 79F28 8008B718 10004231 */  andi       $v0, $t2, 0x10
    /* 79F2C 8008B71C 07004014 */  bnez       $v0, .L8008B73C
    /* 79F30 8008B720 03140A00 */   sra       $v0, $t2, 16
    /* 79F34 8008B724 0600C104 */  bgez       $a2, .L8008B740
    /* 79F38 8008B728 21300201 */   addu      $a2, $t0, $v0
    /* 79F3C 8008B72C 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 79F40 8008B730 00000000 */  nop
    /* 79F44 8008B734 2B00401C */  bgtz       $v0, .L8008B7E4
    /* 79F48 8008B738 03140A00 */   sra       $v0, $t2, 16
  .L8008B73C:
    /* 79F4C 8008B73C 21300201 */  addu       $a2, $t0, $v0
  .L8008B740:
    /* 79F50 8008B740 2A10C601 */  slt        $v0, $t6, $a2
    /* 79F54 8008B744 080025AD */  sw         $a1, 0x8($t1)
    /* 79F58 8008B748 100024AD */  sw         $a0, 0x10($t1)
    /* 79F5C 8008B74C 200023AD */  sw         $v1, 0x20($t1)
    /* 79F60 8008B750 02004010 */  beqz       $v0, .L8008B75C
    /* 79F64 8008B754 180027AD */   sw        $a3, 0x18($t1)
    /* 79F68 8008B758 2130C001 */  addu       $a2, $t6, $zero
  .L8008B75C:
    /* 79F6C 8008B75C 80100600 */  sll        $v0, $a2, 2
    /* 79F70 8008B760 2110E201 */  addu       $v0, $t7, $v0
    /* 79F74 8008B764 02004588 */  lwl        $a1, 0x2($v0)
    /* 79F78 8008B768 00220900 */  sll        $a0, $t1, 8
    /* 79F7C 8008B76C 020025A9 */  swl        $a1, 0x2($t1)
    /* 79F80 8008B770 020044A8 */  swl        $a0, 0x2($v0)
    /* 79F84 8008B774 20004331 */  andi       $v1, $t2, 0x20
    /* 79F88 8008B778 1A006010 */  beqz       $v1, .L8008B7E4
    /* 79F8C 8008B77C 433A0800 */   sra       $a3, $t0, 9
    /* 79F90 8008B780 0F004231 */  andi       $v0, $t2, 0xF
    /* 79F94 8008B784 17004710 */  beq        $v0, $a3, .L8008B7E4
    /* 79F98 8008B788 00000000 */   nop
    /* 79F9C 8008B78C F0FF0820 */  addi       $t0, $zero, -0x10 /* handwritten instruction */
    /* 79FA0 8008B790 24104801 */  and        $v0, $t2, $t0
    /* 79FA4 8008B794 25504700 */  or         $t2, $v0, $a3
    /* 79FA8 8008B798 0720F800 */  srav       $a0, $t8, $a3
    /* 79FAC 8008B79C 0000638D */  lw         $v1, 0x0($t3)
    /* 79FB0 8008B7A0 0F0F8834 */  ori        $t0, $a0, 0xF0F
    /* 79FB4 8008B7A4 00006594 */  lhu        $a1, 0x0($v1)
    /* 79FB8 8008B7A8 04006694 */  lhu        $a2, 0x4($v1)
    /* 79FBC 8008B7AC 0800648C */  lw         $a0, 0x8($v1)
    /* 79FC0 8008B7B0 0628E500 */  srlv       $a1, $a1, $a3
    /* 79FC4 8008B7B4 0630E600 */  srlv       $a2, $a2, $a3
    /* 79FC8 8008B7B8 0620E400 */  srlv       $a0, $a0, $a3
    /* 79FCC 8008B7BC 2428A800 */  and        $a1, $a1, $t0
    /* 79FD0 8008B7C0 2430C800 */  and        $a2, $a2, $t0
    /* 79FD4 8008B7C4 02140400 */  srl        $v0, $a0, 16
    /* 79FD8 8008B7C8 24384800 */  and        $a3, $v0, $t0
    /* 79FDC 8008B7CC 24208800 */  and        $a0, $a0, $t0
    /* 79FE0 8008B7D0 0C0025A5 */  sh         $a1, 0xC($t1)
    /* 79FE4 8008B7D4 140026A5 */  sh         $a2, 0x14($t1)
    /* 79FE8 8008B7D8 1C0027A5 */  sh         $a3, 0x1C($t1)
    /* 79FEC 8008B7DC 240024A5 */  sh         $a0, 0x24($t1)
    /* 79FF0 8008B7E0 08006AAD */  sw         $t2, 0x8($t3)
  .L8008B7E4:
    /* 79FF4 8008B7E4 21588001 */  addu       $t3, $t4, $zero
    /* 79FF8 8008B7E8 A6FF6015 */  bnez       $t3, .L8008B684
    /* 79FFC 8008B7EC 00000000 */   nop
    /* 7A000 8008B7F0 0800E003 */  jr         $ra
    /* 7A004 8008B7F4 00000000 */   nop
endlabel func_8008B65C
