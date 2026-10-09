nonmatching func_800A968C, 0x20

glabel func_800A968C
    /* 97E9C 800A968C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 97EA0 800A9690 1000BFAF */  sw         $ra, 0x10($sp)
    /* 97EA4 800A9694 3ED9020C */  jal        strncmp
    /* 97EA8 800A9698 0C000624 */   addiu     $a2, $zero, 0xC
    /* 97EAC 800A969C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 97EB0 800A96A0 0100422C */  sltiu      $v0, $v0, 0x1
    /* 97EB4 800A96A4 0800E003 */  jr         $ra
    /* 97EB8 800A96A8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A968C
