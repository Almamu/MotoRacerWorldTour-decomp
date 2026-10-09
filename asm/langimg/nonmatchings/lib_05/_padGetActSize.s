nonmatching _padGetActSize, 0x38

glabel _padGetActSize
    /* 9FD98 800B1588 E3008290 */  lbu        $v0, 0xE3($a0)
    /* 9FD9C 800B158C E9008590 */  lbu        $a1, 0xE9($a0)
    /* 9FDA0 800B1590 EC00848C */  lw         $a0, 0xEC($a0)
    /* 9FDA4 800B1594 01004224 */  addiu      $v0, $v0, 0x1
    /* 9FDA8 800B1598 43100200 */  sra        $v0, $v0, 1
    /* 9FDAC 800B159C 80100200 */  sll        $v0, $v0, 2
    /* 9FDB0 800B15A0 80180500 */  sll        $v1, $a1, 2
    /* 9FDB4 800B15A4 21186500 */  addu       $v1, $v1, $a1
    /* 9FDB8 800B15A8 03006324 */  addiu      $v1, $v1, 0x3
    /* 9FDBC 800B15AC FC0F6330 */  andi       $v1, $v1, 0xFFC
    /* 9FDC0 800B15B0 04006324 */  addiu      $v1, $v1, 0x4
    /* 9FDC4 800B15B4 21104300 */  addu       $v0, $v0, $v1
    /* 9FDC8 800B15B8 0800E003 */  jr         $ra
    /* 9FDCC 800B15BC 21104400 */   addu      $v0, $v0, $a0
endlabel _padGetActSize
