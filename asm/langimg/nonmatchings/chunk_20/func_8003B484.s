nonmatching func_8003B484, 0x98

glabel func_8003B484
    /* 29C94 8003B484 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 29C98 8003B488 3000B0AF */  sw         $s0, 0x30($sp)
    /* 29C9C 8003B48C 21808000 */  addu       $s0, $a0, $zero
    /* 29CA0 8003B490 2110E000 */  addu       $v0, $a3, $zero
    /* 29CA4 8003B494 3400BFAF */  sw         $ra, 0x34($sp)
    /* 29CA8 8003B498 BC0A05AE */  sw         $a1, 0xABC($s0)
    /* 29CAC 8003B49C 21284000 */  addu       $a1, $v0, $zero
    /* 29CB0 8003B4A0 5C0006AE */  sw         $a2, 0x5C($s0)
    /* 29CB4 8003B4A4 4800A68F */  lw         $a2, 0x48($sp)
    /* 29CB8 8003B4A8 4C00A38F */  lw         $v1, 0x4C($sp)
    /* 29CBC 8003B4AC 21380000 */  addu       $a3, $zero, $zero
    /* 29CC0 8003B4B0 A80A02AE */  sw         $v0, 0xAA8($s0)
    /* 29CC4 8003B4B4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 29CC8 8003B4B8 80ED000C */  jal        func_8003B600
    /* 29CCC 8003B4BC 1000A3AF */   sw        $v1, 0x10($sp)
    /* 29CD0 8003B4C0 709C020C */  jal        __builtin_new
    /* 29CD4 8003B4C4 84010424 */   addiu     $a0, $zero, 0x184
    /* 29CD8 8003B4C8 4274000C */  jal        func_8001D108
    /* 29CDC 8003B4CC 21204000 */   addu      $a0, $v0, $zero
    /* 29CE0 8003B4D0 21204000 */  addu       $a0, $v0, $zero
    /* 29CE4 8003B4D4 21280000 */  addu       $a1, $zero, $zero
    /* 29CE8 8003B4D8 21300000 */  addu       $a2, $zero, $zero
    /* 29CEC 8003B4DC 380002AE */  sw         $v0, 0x38($s0)
    /* 29CF0 8003B4E0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 29CF4 8003B4E4 0C00038E */  lw         $v1, 0xC($s0)
    /* 29CF8 8003B4E8 50000224 */  addiu      $v0, $zero, 0x50
    /* 29CFC 8003B4EC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 29D00 8003B4F0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 29D04 8003B4F4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 29D08 8003B4F8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 29D0C 8003B4FC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 29D10 8003B500 21386000 */  addu       $a3, $v1, $zero
    /* 29D14 8003B504 D875000C */  jal        func_8001D760
    /* 29D18 8003B508 1000A3AF */   sw        $v1, 0x10($sp)
    /* 29D1C 8003B50C 3400BF8F */  lw         $ra, 0x34($sp)
    /* 29D20 8003B510 3000B08F */  lw         $s0, 0x30($sp)
    /* 29D24 8003B514 0800E003 */  jr         $ra
    /* 29D28 8003B518 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_8003B484
