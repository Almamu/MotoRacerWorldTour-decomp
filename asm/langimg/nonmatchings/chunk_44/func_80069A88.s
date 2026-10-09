nonmatching func_80069A88, 0x44

glabel func_80069A88
    /* 58298 80069A88 21300000 */  addu       $a2, $zero, $zero
    /* 5829C 80069A8C 4B000824 */  addiu      $t0, $zero, 0x4B
    /* 582A0 80069A90 06000724 */  addiu      $a3, $zero, 0x6
    /* 582A4 80069A94 08008524 */  addiu      $a1, $a0, 0x8
    /* 582A8 80069A98 0D80023C */  lui        $v0, %hi(D_800D11C0)
    /* 582AC 80069A9C C0114324 */  addiu      $v1, $v0, %lo(D_800D11C0)
  .L80069AA0:
    /* 582B0 80069AA0 000060AC */  sw         $zero, 0x0($v1)
    /* 582B4 80069AA4 000088AC */  sw         $t0, 0x0($a0)
    /* 582B8 80069AA8 0000A7AC */  sw         $a3, 0x0($a1)
    /* 582BC 80069AAC 0400A524 */  addiu      $a1, $a1, 0x4
    /* 582C0 80069AB0 04008424 */  addiu      $a0, $a0, 0x4
    /* 582C4 80069AB4 0100C624 */  addiu      $a2, $a2, 0x1
    /* 582C8 80069AB8 0200C228 */  slti       $v0, $a2, 0x2
    /* 582CC 80069ABC F8FF4014 */  bnez       $v0, .L80069AA0
    /* 582D0 80069AC0 04006324 */   addiu     $v1, $v1, 0x4
    /* 582D4 80069AC4 0800E003 */  jr         $ra
    /* 582D8 80069AC8 00000000 */   nop
endlabel func_80069A88
