nonmatching func_800147A4, 0x24

glabel func_800147A4
    /* 2FB4 800147A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2FB8 800147A8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2FBC 800147AC 2048000C */  jal        func_80012080
    /* 2FC0 800147B0 2120A000 */   addu      $a0, $a1, $zero
    /* 2FC4 800147B4 00140200 */  sll        $v0, $v0, 16
    /* 2FC8 800147B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2FCC 800147BC 03140200 */  sra        $v0, $v0, 16
    /* 2FD0 800147C0 0800E003 */  jr         $ra
    /* 2FD4 800147C4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800147A4
