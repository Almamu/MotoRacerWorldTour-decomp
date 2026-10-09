nonmatching func_8003FC94, 0x64

glabel func_8003FC94
    /* 2E4A4 8003FC94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2E4A8 8003FC98 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E4AC 8003FC9C 21808000 */  addu       $s0, $a0, $zero
    /* 2E4B0 8003FCA0 0C80023C */  lui        $v0, %hi(D_800C4EA8)
    /* 2E4B4 8003FCA4 A84E4224 */  addiu      $v0, $v0, %lo(D_800C4EA8)
    /* 2E4B8 8003FCA8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2E4BC 8003FCAC 680002AE */  sw         $v0, 0x68($s0)
    /* 2E4C0 8003FCB0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2E4C4 8003FCB4 0C0002AE */  sw         $v0, 0xC($s0)
    /* 2E4C8 8003FCB8 180002AE */  sw         $v0, 0x18($s0)
    /* 2E4CC 8003FCBC 80000224 */  addiu      $v0, $zero, 0x80
    /* 2E4D0 8003FCC0 0C80053C */  lui        $a1, %hi(D_800C4EA0)
    /* 2E4D4 8003FCC4 A04EA524 */  addiu      $a1, $a1, %lo(D_800C4EA0)
    /* 2E4D8 8003FCC8 000000AE */  sw         $zero, 0x0($s0)
    /* 2E4DC 8003FCCC 100000AE */  sw         $zero, 0x10($s0)
    /* 2E4E0 8003FCD0 040000AE */  sw         $zero, 0x4($s0)
    /* 2E4E4 8003FCD4 600000AE */  sw         $zero, 0x60($s0)
    /* 2E4E8 8003FCD8 640000AE */  sw         $zero, 0x64($s0)
    /* 2E4EC 8003FCDC 8BFF000C */  jal        func_8003FE2C
    /* 2E4F0 8003FCE0 000002AE */   sw        $v0, 0x0($s0)
    /* 2E4F4 8003FCE4 21100002 */  addu       $v0, $s0, $zero
    /* 2E4F8 8003FCE8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2E4FC 8003FCEC 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E500 8003FCF0 0800E003 */  jr         $ra
    /* 2E504 8003FCF4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003FC94
