nonmatching func_8008D148, 0x20

glabel func_8008D148
    /* 7B958 8008D148 0500A010 */  beqz       $a1, .L8008D160
    /* 7B95C 8008D14C 00000000 */   nop
  .L8008D150:
    /* 7B960 8008D150 000080AC */  sw         $zero, 0x0($a0)
    /* 7B964 8008D154 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 7B968 8008D158 FDFFA014 */  bnez       $a1, .L8008D150
    /* 7B96C 8008D15C 04008424 */   addiu     $a0, $a0, 0x4
  .L8008D160:
    /* 7B970 8008D160 0800E003 */  jr         $ra
    /* 7B974 8008D164 00000000 */   nop
endlabel func_8008D148
