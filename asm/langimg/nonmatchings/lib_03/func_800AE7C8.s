nonmatching func_800AE7C8, 0x38

glabel func_800AE7C8
    /* 9CFD8 800AE7C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9CFDC 800AE7CC 0E80023C */  lui        $v0, %hi(D_800DE358)
    /* 9CFE0 800AE7D0 58E34224 */  addiu      $v0, $v0, %lo(D_800DE358)
    /* 9CFE4 800AE7D4 80200400 */  sll        $a0, $a0, 2
    /* 9CFE8 800AE7D8 21208200 */  addu       $a0, $a0, $v0
    /* 9CFEC 800AE7DC 03000524 */  addiu      $a1, $zero, 0x3
    /* 9CFF0 800AE7E0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9CFF4 800AE7E4 0000848C */  lw         $a0, 0x0($a0)
    /* 9CFF8 800AE7E8 4FC1020C */  jal        PadInfoMode
    /* 9CFFC 800AE7EC 21300000 */   addu      $a2, $zero, $zero
    /* 9D000 800AE7F0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9D004 800AE7F4 00000000 */  nop
    /* 9D008 800AE7F8 0800E003 */  jr         $ra
    /* 9D00C 800AE7FC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AE7C8
