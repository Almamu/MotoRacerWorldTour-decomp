nonmatching func_80069ACC, 0x58

glabel func_80069ACC
    /* 582DC 80069ACC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 582E0 80069AD0 0D80023C */  lui        $v0, %hi(D_800D11B0)
    /* 582E4 80069AD4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 582E8 80069AD8 21800000 */  addu       $s0, $zero, $zero
    /* 582EC 80069ADC 0D80033C */  lui        $v1, %hi(D_800D11B8)
    /* 582F0 80069AE0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 582F4 80069AE4 B8117124 */  addiu      $s1, $v1, %lo(D_800D11B8)
    /* 582F8 80069AE8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 582FC 80069AEC B01140AC */  sw         $zero, %lo(D_800D11B0)($v0)
  .L80069AF0:
    /* 58300 80069AF0 000020AE */  sw         $zero, 0x0($s1)
    /* 58304 80069AF4 21200002 */  addu       $a0, $s0, $zero
    /* 58308 80069AF8 C7C0020C */  jal        func_800B031C
    /* 5830C 80069AFC 21280000 */   addu      $a1, $zero, $zero
    /* 58310 80069B00 01001026 */  addiu      $s0, $s0, 0x1
    /* 58314 80069B04 0200022A */  slti       $v0, $s0, 0x2
    /* 58318 80069B08 F9FF4014 */  bnez       $v0, .L80069AF0
    /* 5831C 80069B0C 04003126 */   addiu     $s1, $s1, 0x4
    /* 58320 80069B10 1800BF8F */  lw         $ra, 0x18($sp)
    /* 58324 80069B14 1400B18F */  lw         $s1, 0x14($sp)
    /* 58328 80069B18 1000B08F */  lw         $s0, 0x10($sp)
    /* 5832C 80069B1C 0800E003 */  jr         $ra
    /* 58330 80069B20 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80069ACC
