nonmatching func_8014B700, 0x50

glabel func_8014B700
    /* 18BCC 8014B700 11008010 */  beqz       $a0, .L8014B748
    /* 18BD0 8014B704 21100000 */   addu      $v0, $zero, $zero
    /* 18BD4 8014B708 0F00C018 */  blez       $a2, .L8014B748
    /* 18BD8 8014B70C 00000000 */   nop
    /* 18BDC 8014B710 C82D0508 */  j          .L8014B720
    /* 18BE0 8014B714 FFFFC624 */   addiu     $a2, $a2, -0x1
  .L8014B718:
    /* 18BE4 8014B718 D22D0508 */  j          .L8014B748
    /* 18BE8 8014B71C FFFF8224 */   addiu     $v0, $a0, -0x1
  .L8014B720:
    /* 18BEC 8014B720 0900C004 */  bltz       $a2, .L8014B748
    /* 18BF0 8014B724 21100000 */   addu      $v0, $zero, $zero
    /* 18BF4 8014B728 FF00A530 */  andi       $a1, $a1, 0xFF
  .L8014B72C:
    /* 18BF8 8014B72C 00008290 */  lbu        $v0, 0x0($a0)
    /* 18BFC 8014B730 00000000 */  nop
    /* 18C00 8014B734 F8FF4510 */  beq        $v0, $a1, .L8014B718
    /* 18C04 8014B738 01008424 */   addiu     $a0, $a0, 0x1
    /* 18C08 8014B73C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 18C0C 8014B740 FAFFC104 */  bgez       $a2, .L8014B72C
    /* 18C10 8014B744 21100000 */   addu      $v0, $zero, $zero
  .L8014B748:
    /* 18C14 8014B748 0800E003 */  jr         $ra
    /* 18C18 8014B74C 00000000 */   nop
endlabel func_8014B700
