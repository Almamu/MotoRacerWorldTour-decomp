nonmatching func_8008D0FC, 0x24

glabel func_8008D0FC
    /* 7B90C 8008D0FC 0600A010 */  beqz       $a1, .L8008D118
    /* 7B910 8008D100 00000000 */   nop
  .L8008D104:
    /* 7B914 8008D104 000080AC */  sw         $zero, 0x0($a0)
    /* 7B918 8008D108 040080A4 */  sh         $zero, 0x4($a0)
    /* 7B91C 8008D10C FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 7B920 8008D110 FCFFA014 */  bnez       $a1, .L8008D104
    /* 7B924 8008D114 08008424 */   addiu     $a0, $a0, 0x8
  .L8008D118:
    /* 7B928 8008D118 0800E003 */  jr         $ra
    /* 7B92C 8008D11C 00000000 */   nop
endlabel func_8008D0FC
