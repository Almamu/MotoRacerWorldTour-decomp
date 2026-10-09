nonmatching func_8009D3B8, 0x2C

glabel func_8009D3B8
    /* 8BBC8 8009D3B8 6C4C848F */  lw         $a0, %gp_rel(D_800C935C)($gp)
    /* 8BBCC 8009D3BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8BBD0 8009D3C0 04008010 */  beqz       $a0, .L8009D3D4
    /* 8BBD4 8009D3C4 1000BFAF */   sw        $ra, 0x10($sp)
    /* 8BBD8 8009D3C8 679C020C */  jal        __builtin_delete
    /* 8BBDC 8009D3CC 00000000 */   nop
    /* 8BBE0 8009D3D0 6C4C80AF */  sw         $zero, %gp_rel(D_800C935C)($gp)
  .L8009D3D4:
    /* 8BBE4 8009D3D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8BBE8 8009D3D8 00000000 */  nop
    /* 8BBEC 8009D3DC 0800E003 */  jr         $ra
    /* 8BBF0 8009D3E0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009D3B8
