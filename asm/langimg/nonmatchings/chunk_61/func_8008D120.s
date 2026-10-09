nonmatching func_8008D120, 0x28

glabel func_8008D120
    /* 7B930 8008D120 0700C010 */  beqz       $a2, .L8008D140
    /* 7B934 8008D124 00000000 */   nop
  .L8008D128:
    /* 7B938 8008D128 0000A28C */  lw         $v0, 0x0($a1)
    /* 7B93C 8008D12C 0400A524 */  addiu      $a1, $a1, 0x4
    /* 7B940 8008D130 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 7B944 8008D134 000082AC */  sw         $v0, 0x0($a0)
    /* 7B948 8008D138 FBFFC014 */  bnez       $a2, .L8008D128
    /* 7B94C 8008D13C 04008424 */   addiu     $a0, $a0, 0x4
  .L8008D140:
    /* 7B950 8008D140 0800E003 */  jr         $ra
    /* 7B954 8008D144 00000000 */   nop
endlabel func_8008D120
