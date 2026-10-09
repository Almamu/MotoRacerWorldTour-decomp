nonmatching func_8009D3E4, 0x2C

glabel func_8009D3E4
    /* 8BBF4 8009D3E4 704C848F */  lw         $a0, %gp_rel(D_800C9360)($gp)
    /* 8BBF8 8009D3E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8BBFC 8009D3EC 04008010 */  beqz       $a0, .L8009D400
    /* 8BC00 8009D3F0 1000BFAF */   sw        $ra, 0x10($sp)
    /* 8BC04 8009D3F4 679C020C */  jal        __builtin_delete
    /* 8BC08 8009D3F8 00000000 */   nop
    /* 8BC0C 8009D3FC 704C80AF */  sw         $zero, %gp_rel(D_800C9360)($gp)
  .L8009D400:
    /* 8BC10 8009D400 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8BC14 8009D404 00000000 */  nop
    /* 8BC18 8009D408 0800E003 */  jr         $ra
    /* 8BC1C 8009D40C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009D3E4
