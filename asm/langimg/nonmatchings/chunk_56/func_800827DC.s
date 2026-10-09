/* Handwritten function */
nonmatching func_800827DC, 0x30

glabel func_800827DC
    /* 70FEC 800827DC 00F08548 */  mtc2       $a1, $30 /* handwritten instruction */
    /* 70FF0 800827E0 00000000 */  nop
    /* 70FF4 800827E4 00000000 */  nop
    /* 70FF8 800827E8 00F80448 */  mfc2       $a0, $31 /* handwritten instruction */
    /* 70FFC 800827EC 20000324 */  addiu      $v1, $zero, 0x20
    /* 71000 800827F0 23186400 */  subu       $v1, $v1, $a0
    /* 71004 800827F4 C0100300 */  sll        $v0, $v1, 3
    /* 71008 800827F8 21104300 */  addu       $v0, $v0, $v1
    /* 7100C 800827FC 2130C200 */  addu       $a2, $a2, $v0
    /* 71010 80082800 40300600 */  sll        $a2, $a2, 1
    /* 71014 80082804 0800E003 */  jr         $ra
    /* 71018 80082808 2110C700 */   addu      $v0, $a2, $a3
endlabel func_800827DC
