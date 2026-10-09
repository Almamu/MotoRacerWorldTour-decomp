nonmatching func_8003D8FC, 0x28

glabel func_8003D8FC
    /* 2C10C 8003D8FC 940A868C */  lw         $a2, 0xA94($a0)
    /* 2C110 8003D900 FCFFA38C */  lw         $v1, -0x4($a1)
    /* 2C114 8003D904 0001C230 */  andi       $v0, $a2, 0x100
    /* 2C118 8003D908 04004014 */  bnez       $v0, .L8003D91C
    /* 2C11C 8003D90C 00000000 */   nop
    /* 2C120 8003D910 02006010 */  beqz       $v1, .L8003D91C
    /* 2C124 8003D914 0401C234 */   ori       $v0, $a2, 0x104
    /* 2C128 8003D918 940A82AC */  sw         $v0, 0xA94($a0)
  .L8003D91C:
    /* 2C12C 8003D91C 0800E003 */  jr         $ra
    /* 2C130 8003D920 21106000 */   addu      $v0, $v1, $zero
endlabel func_8003D8FC
