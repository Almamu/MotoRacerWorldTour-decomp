nonmatching func_80015684, 0x58

glabel func_80015684
    /* 3E94 80015684 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3E98 80015688 80000224 */  addiu      $v0, $zero, 0x80
    /* 3E9C 8001568C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3EA0 80015690 21808000 */  addu       $s0, $a0, $zero
    /* 3EA4 80015694 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3EA8 80015698 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3EAC 8001569C 1000A2A3 */  sb         $v0, 0x10($sp)
    /* 3EB0 800156A0 1100A0A3 */  sb         $zero, 0x11($sp)
    /* 3EB4 800156A4 1200A2A3 */  sb         $v0, 0x12($sp)
    /* 3EB8 800156A8 9E9E020C */  jal        CdMix
    /* 3EBC 800156AC 1300A0A3 */   sb        $zero, 0x13($sp)
    /* 3EC0 800156B0 0D80033C */  lui        $v1, %hi(D_800CC4E8)
    /* 3EC4 800156B4 0C80043C */  lui        $a0, %hi(D_800B8784)
    /* 3EC8 800156B8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3ECC 800156BC 01000224 */  addiu      $v0, $zero, 0x1
    /* 3ED0 800156C0 E8C470AC */  sw         $s0, %lo(D_800CC4E8)($v1)
    /* 3ED4 800156C4 1800B08F */  lw         $s0, 0x18($sp)
    /* 3ED8 800156C8 0D80033C */  lui        $v1, %hi(D_800CC4E0)
    /* 3EDC 800156CC 848782AC */  sw         $v0, %lo(D_800B8784)($a0)
    /* 3EE0 800156D0 E0C460AC */  sw         $zero, %lo(D_800CC4E0)($v1)
    /* 3EE4 800156D4 0800E003 */  jr         $ra
    /* 3EE8 800156D8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80015684
