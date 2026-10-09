nonmatching CdGetSector2, 0x20

glabel CdGetSector2
    /* 4778 801372AC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 477C 801372B0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4780 801372B4 54E2040C */  jal        CD_getsector2
    /* 4784 801372B8 00000000 */   nop
    /* 4788 801372BC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 478C 801372C0 0100422C */  sltiu      $v0, $v0, 0x1
    /* 4790 801372C4 0800E003 */  jr         $ra
    /* 4794 801372C8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel CdGetSector2
