nonmatching func_8009F450, 0x94

glabel func_8009F450
    /* 8DC60 8009F450 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DC64 8009F454 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8DC68 8009F458 21808000 */  addu       $s0, $a0, $zero
    /* 8DC6C 8009F45C 01000524 */  addiu      $a1, $zero, 0x1
    /* 8DC70 8009F460 21300000 */  addu       $a2, $zero, $zero
    /* 8DC74 8009F464 0A80073C */  lui        $a3, %hi(func_8009F390)
    /* 8DC78 8009F468 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8DC7C 8009F46C 24FB000C */  jal        func_8003EC90
    /* 8DC80 8009F470 90F3E724 */   addiu     $a3, $a3, %lo(func_8009F390)
    /* 8DC84 8009F474 21200002 */  addu       $a0, $s0, $zero
    /* 8DC88 8009F478 02000524 */  addiu      $a1, $zero, 0x2
    /* 8DC8C 8009F47C 21300000 */  addu       $a2, $zero, $zero
    /* 8DC90 8009F480 0A80073C */  lui        $a3, %hi(func_8009F3EC)
    /* 8DC94 8009F484 24FB000C */  jal        func_8003EC90
    /* 8DC98 8009F488 ECF3E724 */   addiu     $a3, $a3, %lo(func_8009F3EC)
    /* 8DC9C 8009F48C 21200002 */  addu       $a0, $s0, $zero
    /* 8DCA0 8009F490 04000524 */  addiu      $a1, $zero, 0x4
    /* 8DCA4 8009F494 21300000 */  addu       $a2, $zero, $zero
    /* 8DCA8 8009F498 0A80073C */  lui        $a3, %hi(func_8009F2C8)
    /* 8DCAC 8009F49C 24FB000C */  jal        func_8003EC90
    /* 8DCB0 8009F4A0 C8F2E724 */   addiu     $a3, $a3, %lo(func_8009F2C8)
    /* 8DCB4 8009F4A4 21200002 */  addu       $a0, $s0, $zero
    /* 8DCB8 8009F4A8 03000524 */  addiu      $a1, $zero, 0x3
    /* 8DCBC 8009F4AC 21300000 */  addu       $a2, $zero, $zero
    /* 8DCC0 8009F4B0 0A80073C */  lui        $a3, %hi(func_8009F32C)
    /* 8DCC4 8009F4B4 24FB000C */  jal        func_8003EC90
    /* 8DCC8 8009F4B8 2CF3E724 */   addiu     $a3, $a3, %lo(func_8009F32C)
    /* 8DCCC 8009F4BC 01000424 */  addiu      $a0, $zero, 0x1
    /* 8DCD0 8009F4C0 01000324 */  addiu      $v1, $zero, 0x1
    /* 8DCD4 8009F4C4 E6BE020C */  jal        func_800AFB98
    /* 8DCD8 8009F4C8 780103AE */   sw        $v1, 0x178($s0)
    /* 8DCDC 8009F4CC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8DCE0 8009F4D0 85000524 */  addiu      $a1, $zero, 0x85
    /* 8DCE4 8009F4D4 500105AE */  sw         $a1, 0x150($s0)
    /* 8DCE8 8009F4D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 8DCEC 8009F4DC 0800E003 */  jr         $ra
    /* 8DCF0 8009F4E0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F450
