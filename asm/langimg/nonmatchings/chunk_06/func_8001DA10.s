nonmatching func_8001DA10, 0x34

glabel func_8001DA10
    /* C220 8001DA10 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C224 8001DA14 1000BFAF */  sw         $ra, 0x10($sp)
    /* C228 8001DA18 0800868C */  lw         $a2, 0x8($a0)
    /* C22C 8001DA1C 00000000 */  nop
    /* C230 8001DA20 0400C010 */  beqz       $a2, .L8001DA34
    /* C234 8001DA24 21280000 */   addu      $a1, $zero, $zero
    /* C238 8001DA28 0000848C */  lw         $a0, 0x0($a0)
    /* C23C 8001DA2C 56D8020C */  jal        memset
    /* C240 8001DA30 80300600 */   sll       $a2, $a2, 2
  .L8001DA34:
    /* C244 8001DA34 1000BF8F */  lw         $ra, 0x10($sp)
    /* C248 8001DA38 00000000 */  nop
    /* C24C 8001DA3C 0800E003 */  jr         $ra
    /* C250 8001DA40 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001DA10
