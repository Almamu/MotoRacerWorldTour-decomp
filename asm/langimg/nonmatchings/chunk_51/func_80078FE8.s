nonmatching func_80078FE8, 0x14

glabel func_80078FE8
    /* 677F8 80078FE8 0200A014 */  bnez       $a1, .L80078FF4
    /* 677FC 80078FEC 21100000 */   addu      $v0, $zero, $zero
    /* 67800 80078FF0 0000828C */  lw         $v0, 0x0($a0)
  .L80078FF4:
    /* 67804 80078FF4 0800E003 */  jr         $ra
    /* 67808 80078FF8 00000000 */   nop
endlabel func_80078FE8
