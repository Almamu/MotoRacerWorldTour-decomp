nonmatching func_8006E0C0, 0x3C

glabel func_8006E0C0
    /* 5C8D0 8006E0C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5C8D4 8006E0C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5C8D8 8006E0C8 0C00858C */  lw         $a1, 0xC($a0)
    /* 5C8DC 8006E0CC 000080AC */  sw         $zero, 0x0($a0)
    /* 5C8E0 8006E0D0 090080A0 */  sb         $zero, 0x9($a0)
    /* 5C8E4 8006E0D4 080080A0 */  sb         $zero, 0x8($a0)
    /* 5C8E8 8006E0D8 1800A284 */  lh         $v0, 0x18($a1)
    /* 5C8EC 8006E0DC 1C00A38C */  lw         $v1, 0x1C($a1)
    /* 5C8F0 8006E0E0 00000000 */  nop
    /* 5C8F4 8006E0E4 09F86000 */  jalr       $v1
    /* 5C8F8 8006E0E8 21208200 */   addu      $a0, $a0, $v0
    /* 5C8FC 8006E0EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5C900 8006E0F0 00000000 */  nop
    /* 5C904 8006E0F4 0800E003 */  jr         $ra
    /* 5C908 8006E0F8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006E0C0
