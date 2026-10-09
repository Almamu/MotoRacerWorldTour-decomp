nonmatching func_800A4284, 0x68

glabel func_800A4284
    /* 92A94 800A4284 0D80063C */  lui        $a2, %hi(D_800D6098)
    /* 92A98 800A4288 C0100400 */  sll        $v0, $a0, 3
    /* 92A9C 800A428C 21104400 */  addu       $v0, $v0, $a0
    /* 92AA0 800A4290 C0100200 */  sll        $v0, $v0, 3
    /* 92AA4 800A4294 23104400 */  subu       $v0, $v0, $a0
    /* 92AA8 800A4298 80100200 */  sll        $v0, $v0, 2
    /* 92AAC 800A429C 23104400 */  subu       $v0, $v0, $a0
    /* 92AB0 800A42A0 80100200 */  sll        $v0, $v0, 2
    /* 92AB4 800A42A4 21104400 */  addu       $v0, $v0, $a0
    /* 92AB8 800A42A8 80100200 */  sll        $v0, $v0, 2
    /* 92ABC 800A42AC 23104400 */  subu       $v0, $v0, $a0
    /* 92AC0 800A42B0 9860C38C */  lw         $v1, %lo(D_800D6098)($a2)
    /* 92AC4 800A42B4 80280200 */  sll        $a1, $v0, 2
    /* 92AC8 800A42B8 2118A300 */  addu       $v1, $a1, $v1
    /* 92ACC 800A42BC 0000648C */  lw         $a0, 0x0($v1)
    /* 92AD0 800A42C0 12000224 */  addiu      $v0, $zero, 0x12
    /* 92AD4 800A42C4 03008210 */  beq        $a0, $v0, .L800A42D4
    /* 92AD8 800A42C8 01000224 */   addiu     $v0, $zero, 0x1
    /* 92ADC 800A42CC 0800E003 */  jr         $ra
    /* 92AE0 800A42D0 21100000 */   addu      $v0, $zero, $zero
  .L800A42D4:
    /* 92AE4 800A42D4 000060AC */  sw         $zero, 0x0($v1)
    /* 92AE8 800A42D8 9860C38C */  lw         $v1, %lo(D_800D6098)($a2)
    /* 92AEC 800A42DC 00000000 */  nop
    /* 92AF0 800A42E0 2118A300 */  addu       $v1, $a1, $v1
    /* 92AF4 800A42E4 0800E003 */  jr         $ra
    /* 92AF8 800A42E8 040060AC */   sw        $zero, 0x4($v1)
endlabel func_800A4284
