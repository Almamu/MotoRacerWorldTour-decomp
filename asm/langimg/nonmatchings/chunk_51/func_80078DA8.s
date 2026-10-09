nonmatching func_80078DA8, 0x58

glabel func_80078DA8
    /* 675B8 80078DA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 675BC 80078DAC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 675C0 80078DB0 21808000 */  addu       $s0, $a0, $zero
    /* 675C4 80078DB4 2800A28F */  lw         $v0, 0x28($sp)
    /* 675C8 80078DB8 2C00A38F */  lw         $v1, 0x2C($sp)
    /* 675CC 80078DBC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 675D0 80078DC0 180000AE */  sw         $zero, 0x18($s0)
    /* 675D4 80078DC4 080000AE */  sw         $zero, 0x8($s0)
    /* 675D8 80078DC8 0C0005A6 */  sh         $a1, 0xC($s0)
    /* 675DC 80078DCC 0E0006A6 */  sh         $a2, 0xE($s0)
    /* 675E0 80078DD0 100007A6 */  sh         $a3, 0x10($s0)
    /* 675E4 80078DD4 040000AE */  sw         $zero, 0x4($s0)
    /* 675E8 80078DD8 1C0000AE */  sw         $zero, 0x1C($s0)
    /* 675EC 80078DDC 120002A6 */  sh         $v0, 0x12($s0)
    /* 675F0 80078DE0 80E3010C */  jal        func_80078E00
    /* 675F4 80078DE4 000003AE */   sw        $v1, 0x0($s0)
    /* 675F8 80078DE8 080002AE */  sw         $v0, 0x8($s0)
    /* 675FC 80078DEC 21100002 */  addu       $v0, $s0, $zero
    /* 67600 80078DF0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 67604 80078DF4 1000B08F */  lw         $s0, 0x10($sp)
    /* 67608 80078DF8 0800E003 */  jr         $ra
    /* 6760C 80078DFC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80078DA8
