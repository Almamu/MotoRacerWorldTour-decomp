nonmatching func_80099F2C, 0x5C

glabel func_80099F2C
    /* 8873C 80099F2C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88740 80099F30 1400BFAF */  sw         $ra, 0x14($sp)
    /* 88744 80099F34 4B9C020C */  jal        func_800A712C
    /* 88748 80099F38 1000B0AF */   sw        $s0, 0x10($sp)
    /* 8874C 80099F3C 5786020C */  jal        func_800A195C
    /* 88750 80099F40 21800000 */   addu      $s0, $zero, $zero
    /* 88754 80099F44 9C7F020C */  jal        func_8009FE70
    /* 88758 80099F48 00000000 */   nop
    /* 8875C 80099F4C D386020C */  jal        func_800A1B4C
    /* 88760 80099F50 00000000 */   nop
    /* 88764 80099F54 0D80043C */  lui        $a0, %hi(D_800CBC94)
    /* 88768 80099F58 94BC8424 */  addiu      $a0, $a0, %lo(D_800CBC94)
    /* 8876C 80099F5C F1E3010C */  jal        func_80078FC4
    /* 88770 80099F60 21280000 */   addu      $a1, $zero, $zero
    /* 88774 80099F64 0D80013C */  lui        $at, %hi(D_800C886C)
    /* 88778 80099F68 6C8822AC */  sw         $v0, %lo(D_800C886C)($at)
    /* 8877C 80099F6C 21280002 */  addu       $a1, $s0, $zero
  .L80099F70:
    /* 88780 80099F70 0D80043C */  lui        $a0, %hi(D_800CABC0)
    /* 88784 80099F74 C0AB8424 */  addiu      $a0, $a0, %lo(D_800CABC0)
    /* 88788 80099F78 9F16010C */  jal        func_80045A7C
    /* 8878C 80099F7C 01001026 */   addiu     $s0, $s0, 0x1
    /* 88790 80099F80 DC670208 */  j          .L80099F70
    /* 88794 80099F84 21280002 */   addu      $a1, $s0, $zero
endlabel func_80099F2C
