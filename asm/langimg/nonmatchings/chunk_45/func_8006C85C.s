nonmatching func_8006C85C, 0x90

glabel func_8006C85C
    /* 5B06C 8006C85C 21580000 */  addu       $t3, $zero, $zero
    /* 5B070 8006C860 21500000 */  addu       $t2, $zero, $zero
    /* 5B074 8006C864 FFFF0C24 */  addiu      $t4, $zero, -0x1
    /* 5B078 8006C868 0C80093C */  lui        $t1, %hi(D_800C7E94)
    /* 5B07C 8006C86C 947E2925 */  addiu      $t1, $t1, %lo(D_800C7E94)
    /* 5B080 8006C870 0C80083C */  lui        $t0, %hi(D_800C7E9A)
    /* 5B084 8006C874 9A7E0825 */  addiu      $t0, $t0, %lo(D_800C7E9A)
    /* 5B088 8006C878 0C80073C */  lui        $a3, %hi(D_800C7E99)
    /* 5B08C 8006C87C 997EE724 */  addiu      $a3, $a3, %lo(D_800C7E99)
    /* 5B090 8006C880 0C80033C */  lui        $v1, %hi(D_800C7E98)
    /* 5B094 8006C884 987E6324 */  addiu      $v1, $v1, %lo(D_800C7E98)
  .L8006C888:
    /* 5B098 8006C888 00006280 */  lb         $v0, 0x0($v1)
    /* 5B09C 8006C88C 00000000 */  nop
    /* 5B0A0 8006C890 0D004414 */  bne        $v0, $a0, .L8006C8C8
    /* 5B0A4 8006C894 00000000 */   nop
    /* 5B0A8 8006C898 0000E280 */  lb         $v0, 0x0($a3)
    /* 5B0AC 8006C89C 00000000 */  nop
    /* 5B0B0 8006C8A0 09004514 */  bne        $v0, $a1, .L8006C8C8
    /* 5B0B4 8006C8A4 00000000 */   nop
    /* 5B0B8 8006C8A8 00000281 */  lb         $v0, 0x0($t0)
    /* 5B0BC 8006C8AC 00000000 */  nop
    /* 5B0C0 8006C8B0 03004C10 */  beq        $v0, $t4, .L8006C8C0
    /* 5B0C4 8006C8B4 00000000 */   nop
    /* 5B0C8 8006C8B8 03004614 */  bne        $v0, $a2, .L8006C8C8
    /* 5B0CC 8006C8BC 00000000 */   nop
  .L8006C8C0:
    /* 5B0D0 8006C8C0 39B20108 */  j          .L8006C8E4
    /* 5B0D4 8006C8C4 21582001 */   addu      $t3, $t1, $zero
  .L8006C8C8:
    /* 5B0D8 8006C8C8 0C002925 */  addiu      $t1, $t1, 0xC
    /* 5B0DC 8006C8CC 0C000825 */  addiu      $t0, $t0, 0xC
    /* 5B0E0 8006C8D0 0C00E724 */  addiu      $a3, $a3, 0xC
    /* 5B0E4 8006C8D4 01004A25 */  addiu      $t2, $t2, 0x1
    /* 5B0E8 8006C8D8 0B00422D */  sltiu      $v0, $t2, 0xB
    /* 5B0EC 8006C8DC EAFF4014 */  bnez       $v0, .L8006C888
    /* 5B0F0 8006C8E0 0C006324 */   addiu     $v1, $v1, 0xC
  .L8006C8E4:
    /* 5B0F4 8006C8E4 0800E003 */  jr         $ra
    /* 5B0F8 8006C8E8 21106001 */   addu      $v0, $t3, $zero
endlabel func_8006C85C
