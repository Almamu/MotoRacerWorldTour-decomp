nonmatching func_8009CCEC, 0x38

glabel func_8009CCEC
    /* 8B4FC 8009CCEC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8B500 8009CCF0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8B504 8009CCF4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8B508 8009CCF8 ECED000C */  jal        func_8003B7B0
    /* 8B50C 8009CCFC 21808000 */   addu      $s0, $a0, $zero
    /* 8B510 8009CD00 01000424 */  addiu      $a0, $zero, 0x1
    /* 8B514 8009CD04 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8B518 8009CD08 700102AE */  sw         $v0, 0x170($s0)
    /* 8B51C 8009CD0C FA99020C */  jal        func_800A67E8
    /* 8B520 8009CD10 740100AE */   sw        $zero, 0x174($s0)
    /* 8B524 8009CD14 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8B528 8009CD18 1000B08F */  lw         $s0, 0x10($sp)
    /* 8B52C 8009CD1C 0800E003 */  jr         $ra
    /* 8B530 8009CD20 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009CCEC
