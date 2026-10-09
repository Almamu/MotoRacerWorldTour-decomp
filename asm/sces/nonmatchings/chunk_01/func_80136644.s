/* Handwritten function */
nonmatching func_80136644, 0x140

glabel func_80136644
    /* 3B10 80136644 FCFFBD23 */  addi       $sp, $sp, -0x4 /* handwritten instruction */
    /* 3B14 80136648 0000BFAF */  sw         $ra, 0x0($sp)
    /* 3B18 8013664C 1A800E3C */  lui        $t6, %hi(D_8019DC4C)
    /* 3B1C 80136650 4CDCCE25 */  addiu      $t6, $t6, %lo(D_8019DC4C)
    /* 3B20 80136654 0000CC8D */  lw         $t4, 0x0($t6)
    /* 3B24 80136658 801F073C */  lui        $a3, (0x1F800000 >> 16)
    /* 3B28 8013665C 15008014 */  bnez       $a0, .L801366B4
    /* 3B2C 80136660 40600C00 */   sll       $t4, $t4, 1
    /* 3B30 80136664 1A800E3C */  lui        $t6, %hi(D_8019DC50)
    /* 3B34 80136668 50DCCE25 */  addiu      $t6, $t6, %lo(D_8019DC50)
    /* 3B38 8013666C 0000C28D */  lw         $v0, 0x0($t6)
    /* 3B3C 80136670 0400C38D */  lw         $v1, 0x4($t6)
    /* 3B40 80136674 0800C88D */  lw         $t0, 0x8($t6)
    /* 3B44 80136678 0C00C48D */  lw         $a0, 0xC($t6)
    /* 3B48 8013667C 1000C58D */  lw         $a1, 0x10($t6)
    /* 3B4C 80136680 1400C68D */  lw         $a2, 0x14($t6)
    /* 3B50 80136684 1800CA8D */  lw         $t2, 0x18($t6)
    /* 3B54 80136688 1C00CB8D */  lw         $t3, 0x1C($t6)
    /* 3B58 8013668C 2000CD8D */  lw         $t5, 0x20($t6)
    /* 3B5C 80136690 2400CF8D */  lw         $t7, 0x24($t6)
    /* 3B60 80136694 2800D88D */  lw         $t8, 0x28($t6)
    /* 3B64 80136698 2C00D98D */  lw         $t9, 0x2C($t6)
    /* 3B68 8013669C 3000DF8D */  lw         $ra, 0x30($t6)
    /* 3B6C 801366A0 20608501 */  add        $t4, $t4, $a1 /* handwritten instruction */
    /* 3B70 801366A4 2800E017 */  bnez       $ra, .L80136748
    /* 3B74 801366A8 00000000 */   nop
    /* 3B78 801366AC FF000104 */  bgez       $zero, .L80136AAC
    /* 3B7C 801366B0 00000000 */   nop
  .L801366B4:
    /* 3B80 801366B4 20608501 */  add        $t4, $t4, $a1 /* handwritten instruction */
    /* 3B84 801366B8 0000888C */  lw         $t0, 0x0($a0)
    /* 3B88 801366BC 04008B8C */  lw         $t3, 0x4($a0)
    /* 3B8C 801366C0 0800828C */  lw         $v0, 0x8($a0)
    /* 3B90 801366C4 0C00838C */  lw         $v1, 0xC($a0)
    /* 3B94 801366C8 1000868C */  lw         $a2, 0x10($a0)
    /* 3B98 801366CC 25500000 */  or         $t2, $zero, $zero
    /* 3B9C 801366D0 25780000 */  or         $t7, $zero, $zero
    /* 3BA0 801366D4 25C00000 */  or         $t8, $zero, $zero
    /* 3BA4 801366D8 25C80000 */  or         $t9, $zero, $zero
    /* 3BA8 801366DC 000C0200 */  sll        $at, $v0, 16
    /* 3BAC 801366E0 02140200 */  srl        $v0, $v0, 16
    /* 3BB0 801366E4 25104100 */  or         $v0, $v0, $at
    /* 3BB4 801366E8 000C0300 */  sll        $at, $v1, 16
    /* 3BB8 801366EC 021C0300 */  srl        $v1, $v1, 16
    /* 3BBC 801366F0 25186100 */  or         $v1, $v1, $at
    /* 3BC0 801366F4 0000A8AC */  sw         $t0, 0x0($a1)
    /* 3BC4 801366F8 0400A520 */  addi       $a1, $a1, 0x4 /* handwritten instruction */
    /* 3BC8 801366FC 14008420 */  addi       $a0, $a0, 0x14 /* handwritten instruction */
    /* 3BCC 80136700 FFFF0831 */  andi       $t0, $t0, 0xFFFF
    /* 3BD0 80136704 80400800 */  sll        $t0, $t0, 2
    /* 3BD4 80136708 2068A800 */  add        $t5, $a1, $t0 /* handwritten instruction */
    /* 3BD8 8013670C 020C0B00 */  srl        $at, $t3, 16
    /* 3BDC 80136710 03002138 */  xori       $at, $at, 0x3
    /* 3BE0 80136714 3F006B31 */  andi       $t3, $t3, 0x3F
    /* 3BE4 80136718 A4002010 */  beqz       $at, .L801369AC
    /* 3BE8 8013671C 805A0B00 */   sll       $t3, $t3, 10
    /* 3BEC 80136720 82450200 */  srl        $t0, $v0, 22
    /* 3BF0 80136724 25400B01 */  or         $t0, $t0, $t3
    /* 3BF4 80136728 E1D9040C */  jal        func_80136784
    /* 3BF8 8013672C 0A000934 */   ori       $t1, $zero, 0xA
    /* 3BFC 80136730 82450800 */  srl        $t0, $t0, 22
    /* 3C00 80136734 FF010139 */  xori       $at, $t0, 0x1FF
    /* 3C04 80136738 E3002010 */  beqz       $at, .L80136AC8
    /* 3C08 8013673C 2308AC00 */   subu      $at, $a1, $t4
    /* 3C0C 80136740 EC002104 */  bgez       $at, .L80136AF4
    /* 3C10 80136744 25400B01 */   or        $t0, $t0, $t3
  .L80136748:
    /* 3C14 80136748 0E000104 */  bgez       $zero, func_80136784
    /* 3C18 8013674C 0C000934 */   ori       $t1, $zero, 0xC
  .L80136750:
    /* 3C1C 80136750 23004104 */  bgez       $v0, .L801367E0
    /* 3C20 80136754 40080200 */   sll       $at, $v0, 1
    /* 3C24 80136758 06002004 */  bltz       $at, .L80136774
    /* 3C28 8013675C 80080200 */   sll       $at, $v0, 2
    /* 3C2C 80136760 00FE0834 */  ori        $t0, $zero, 0xFE00
    /* 3C30 80136764 0000A8A4 */  sh         $t0, 0x0($a1)
    /* 3C34 80136768 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
    /* 3C38 8013676C 0800E003 */  jr         $ra
    /* 3C3C 80136770 80400200 */   sll       $t0, $v0, 2
  .L80136774:
    /* 3C40 80136774 03000934 */  ori        $t1, $zero, 0x3
    /* 3C44 80136778 02002104 */  bgez       $at, func_80136784
    /* 3C48 8013677C 01000834 */   ori       $t0, $zero, 0x1
    /* 3C4C 80136780 FF030834 */  ori        $t0, $zero, 0x3FF
endlabel func_80136644
