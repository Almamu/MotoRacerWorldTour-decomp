nonmatching func_800A9CB0, 0x68

glabel func_800A9CB0
    /* 984C0 800A9CB0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 984C4 800A9CB4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 984C8 800A9CB8 21888000 */  addu       $s1, $a0, $zero
    /* 984CC 800A9CBC 2120A000 */  addu       $a0, $a1, $zero
    /* 984D0 800A9CC0 1000A527 */  addiu      $a1, $sp, 0x10
    /* 984D4 800A9CC4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 984D8 800A9CC8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 984DC 800A9CCC C79E020C */  jal        func_800A7B1C
    /* 984E0 800A9CD0 2180C000 */   addu      $s0, $a2, $zero
    /* 984E4 800A9CD4 02000424 */  addiu      $a0, $zero, 0x2
    /* 984E8 800A9CD8 1000A527 */  addiu      $a1, $sp, 0x10
    /* 984EC 800A9CDC AF9D020C */  jal        func_800A76BC
    /* 984F0 800A9CE0 21300000 */   addu      $a2, $zero, $zero
    /* 984F4 800A9CE4 21202002 */  addu       $a0, $s1, $zero
    /* 984F8 800A9CE8 21280002 */  addu       $a1, $s0, $zero
    /* 984FC 800A9CEC A1A8020C */  jal        func_800AA284
    /* 98500 800A9CF0 80000624 */   addiu     $a2, $zero, 0x80
    /* 98504 800A9CF4 21200000 */  addu       $a0, $zero, $zero
    /* 98508 800A9CF8 08A9020C */  jal        func_800AA420
    /* 9850C 800A9CFC 21280000 */   addu      $a1, $zero, $zero
    /* 98510 800A9D00 0100422C */  sltiu      $v0, $v0, 0x1
    /* 98514 800A9D04 2000BF8F */  lw         $ra, 0x20($sp)
    /* 98518 800A9D08 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 9851C 800A9D0C 1800B08F */  lw         $s0, 0x18($sp)
    /* 98520 800A9D10 0800E003 */  jr         $ra
    /* 98524 800A9D14 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800A9CB0
    /* 98528 800A9D18 00000000 */  nop
    /* 9852C 800A9D1C 00000000 */  nop
    /* 98530 800A9D20 00000000 */  nop
