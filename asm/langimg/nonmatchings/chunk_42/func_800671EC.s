nonmatching func_800671EC, 0x44

glabel func_800671EC
    /* 559FC 800671EC 21380000 */  addu       $a3, $zero, $zero
    /* 55A00 800671F0 90038624 */  addiu      $a2, $a0, 0x390
    /* 55A04 800671F4 8C038524 */  addiu      $a1, $a0, 0x38C
    /* 55A08 800671F8 88038324 */  addiu      $v1, $a0, 0x388
    /* 55A0C 800671FC E80380AC */  sw         $zero, 0x3E8($a0)
    /* 55A10 80067200 EC0380AC */  sw         $zero, 0x3EC($a0)
  .L80067204:
    /* 55A14 80067204 000060AC */  sw         $zero, 0x0($v1)
    /* 55A18 80067208 0000A0AC */  sw         $zero, 0x0($a1)
    /* 55A1C 8006720C 0000C0AC */  sw         $zero, 0x0($a2)
    /* 55A20 80067210 0C00C624 */  addiu      $a2, $a2, 0xC
    /* 55A24 80067214 0C00A524 */  addiu      $a1, $a1, 0xC
    /* 55A28 80067218 0100E724 */  addiu      $a3, $a3, 0x1
    /* 55A2C 8006721C 0800E228 */  slti       $v0, $a3, 0x8
    /* 55A30 80067220 F8FF4014 */  bnez       $v0, .L80067204
    /* 55A34 80067224 0C006324 */   addiu     $v1, $v1, 0xC
    /* 55A38 80067228 0800E003 */  jr         $ra
    /* 55A3C 8006722C 00000000 */   nop
endlabel func_800671EC
