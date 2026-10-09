nonmatching func_800B2E9C, 0x20

glabel func_800B2E9C
    /* A16AC 800B2E9C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A16B0 800B2EA0 1000BFAF */  sw         $ra, 0x10($sp)
    /* A16B4 800B2EA4 AFCB020C */  jal        func_800B2EBC
    /* A16B8 800B2EA8 21200000 */   addu      $a0, $zero, $zero
    /* A16BC 800B2EAC 1000BF8F */  lw         $ra, 0x10($sp)
    /* A16C0 800B2EB0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A16C4 800B2EB4 0800E003 */  jr         $ra
    /* A16C8 800B2EB8 00000000 */   nop
endlabel func_800B2E9C
