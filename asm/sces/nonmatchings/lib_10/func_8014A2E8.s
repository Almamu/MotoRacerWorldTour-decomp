nonmatching func_8014A2E8, 0x28

glabel func_8014A2E8
    /* 177B4 8014A2E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 177B8 8014A2EC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 177BC 8014A2F0 00240400 */  sll        $a0, $a0, 16
    /* 177C0 8014A2F4 C628050C */  jal        func_8014A318
    /* 177C4 8014A2F8 03240400 */   sra       $a0, $a0, 16
    /* 177C8 8014A2FC 00140200 */  sll        $v0, $v0, 16
    /* 177CC 8014A300 1000BF8F */  lw         $ra, 0x10($sp)
    /* 177D0 8014A304 03140200 */  sra        $v0, $v0, 16
    /* 177D4 8014A308 0800E003 */  jr         $ra
    /* 177D8 8014A30C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8014A2E8
    /* 177DC 8014A310 00000000 */  nop
    /* 177E0 8014A314 00000000 */  nop
