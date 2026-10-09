nonmatching func_8001AD78, 0x24

glabel func_8001AD78
    /* 9588 8001AD78 0600A610 */  beq        $a1, $a2, .L8001AD94
    /* 958C 8001AD7C 001B0500 */   sll       $v1, $a1, 12
    /* 9590 8001AD80 2310A600 */  subu       $v0, $a1, $a2
    /* 9594 8001AD84 1A006200 */  div        $zero, $v1, $v0
    /* 9598 8001AD88 12100000 */  mflo       $v0
    /* 959C 8001AD8C 0800E003 */  jr         $ra
    /* 95A0 8001AD90 00000000 */   nop
  .L8001AD94:
    /* 95A4 8001AD94 0800E003 */  jr         $ra
    /* 95A8 8001AD98 21100000 */   addu      $v0, $zero, $zero
endlabel func_8001AD78
