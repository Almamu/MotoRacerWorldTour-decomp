nonmatching func_8006BFC0, 0x2C

glabel func_8006BFC0
    /* 5A7D0 8006BFC0 0C04858C */  lw         $a1, 0x40C($a0)
    /* 5A7D4 8006BFC4 1004828C */  lw         $v0, 0x410($a0)
    /* 5A7D8 8006BFC8 00000000 */  nop
    /* 5A7DC 8006BFCC 2B10A200 */  sltu       $v0, $a1, $v0
    /* 5A7E0 8006BFD0 04004010 */  beqz       $v0, .L8006BFE4
    /* 5A7E4 8006BFD4 21180000 */   addu      $v1, $zero, $zero
    /* 5A7E8 8006BFD8 80100500 */  sll        $v0, $a1, 2
    /* 5A7EC 8006BFDC 0C004224 */  addiu      $v0, $v0, 0xC
    /* 5A7F0 8006BFE0 21188200 */  addu       $v1, $a0, $v0
  .L8006BFE4:
    /* 5A7F4 8006BFE4 0800E003 */  jr         $ra
    /* 5A7F8 8006BFE8 21106000 */   addu      $v0, $v1, $zero
endlabel func_8006BFC0
