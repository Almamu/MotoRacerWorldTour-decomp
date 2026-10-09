nonmatching func_800A26A0, 0x3C

glabel func_800A26A0
    /* 90EB0 800A26A0 21300000 */  addu       $a2, $zero, $zero
    /* 90EB4 800A26A4 0D80023C */  lui        $v0, %hi(D_800D60A0)
    /* 90EB8 800A26A8 A0604524 */  addiu      $a1, $v0, %lo(D_800D60A0)
    /* 90EBC 800A26AC 0D80033C */  lui        $v1, %hi(D_800D60C8)
    /* 90EC0 800A26B0 C8606424 */  addiu      $a0, $v1, %lo(D_800D60C8)
  .L800A26B4:
    /* 90EC4 800A26B4 000080AC */  sw         $zero, 0x0($a0)
    /* 90EC8 800A26B8 0000838C */  lw         $v1, 0x0($a0)
    /* 90ECC 800A26BC 04008424 */  addiu      $a0, $a0, 0x4
    /* 90ED0 800A26C0 0100C624 */  addiu      $a2, $a2, 0x1
    /* 90ED4 800A26C4 0400C228 */  slti       $v0, $a2, 0x4
    /* 90ED8 800A26C8 0000A3AC */  sw         $v1, 0x0($a1)
    /* 90EDC 800A26CC F9FF4014 */  bnez       $v0, .L800A26B4
    /* 90EE0 800A26D0 0400A524 */   addiu     $a1, $a1, 0x4
    /* 90EE4 800A26D4 0800E003 */  jr         $ra
    /* 90EE8 800A26D8 00000000 */   nop
endlabel func_800A26A0
