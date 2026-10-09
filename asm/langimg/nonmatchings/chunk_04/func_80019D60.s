nonmatching func_80019D60, 0x60

glabel func_80019D60
    /* 8570 80019D60 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8574 80019D64 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8578 80019D68 21888000 */  addu       $s1, $a0, $zero
    /* 857C 80019D6C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8580 80019D70 4000B08F */  lw         $s0, 0x40($sp)
    /* 8584 80019D74 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8588 80019D78 2190C000 */  addu       $s2, $a2, $zero
    /* 858C 80019D7C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8590 80019D80 2800BFAF */  sw         $ra, 0x28($sp)
    /* 8594 80019D84 1E67000C */  jal        func_80019C78
    /* 8598 80019D88 2198E000 */   addu      $s3, $a3, $zero
    /* 859C 80019D8C 21202002 */  addu       $a0, $s1, $zero
    /* 85A0 80019D90 21284000 */  addu       $a1, $v0, $zero
    /* 85A4 80019D94 21304002 */  addu       $a2, $s2, $zero
    /* 85A8 80019D98 21386002 */  addu       $a3, $s3, $zero
    /* 85AC 80019D9C 4367000C */  jal        func_80019D0C
    /* 85B0 80019DA0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 85B4 80019DA4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 85B8 80019DA8 2400B38F */  lw         $s3, 0x24($sp)
    /* 85BC 80019DAC 2000B28F */  lw         $s2, 0x20($sp)
    /* 85C0 80019DB0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 85C4 80019DB4 1800B08F */  lw         $s0, 0x18($sp)
    /* 85C8 80019DB8 0800E003 */  jr         $ra
    /* 85CC 80019DBC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_80019D60
