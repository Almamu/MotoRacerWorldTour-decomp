nonmatching func_8006E088, 0x38

glabel func_8006E088
    /* 5C898 8006E088 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5C89C 8006E08C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5C8A0 8006E090 0C00868C */  lw         $a2, 0xC($a0)
    /* 5C8A4 8006E094 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5C8A8 8006E098 040082AC */  sw         $v0, 0x4($a0)
    /* 5C8AC 8006E09C 1000C384 */  lh         $v1, 0x10($a2)
    /* 5C8B0 8006E0A0 1400C58C */  lw         $a1, 0x14($a2)
    /* 5C8B4 8006E0A4 00000000 */  nop
    /* 5C8B8 8006E0A8 09F8A000 */  jalr       $a1
    /* 5C8BC 8006E0AC 21208300 */   addu      $a0, $a0, $v1
    /* 5C8C0 8006E0B0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5C8C4 8006E0B4 00000000 */  nop
    /* 5C8C8 8006E0B8 0800E003 */  jr         $ra
    /* 5C8CC 8006E0BC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006E088
