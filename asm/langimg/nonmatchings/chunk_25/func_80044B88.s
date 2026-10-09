nonmatching func_80044B88, 0x70

glabel func_80044B88
    /* 33398 80044B88 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3339C 80044B8C 21300000 */  addu       $a2, $zero, $zero
    /* 333A0 80044B90 0000858C */  lw         $a1, 0x0($a0)
    /* 333A4 80044B94 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 333A8 80044B98 0A00A210 */  beq        $a1, $v0, .L80044BC4
    /* 333AC 80044B9C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 333B0 80044BA0 0400838C */  lw         $v1, 0x4($a0)
    /* 333B4 80044BA4 00000000 */  nop
    /* 333B8 80044BA8 06006210 */  beq        $v1, $v0, .L80044BC4
    /* 333BC 80044BAC 00000000 */   nop
    /* 333C0 80044BB0 8400828C */  lw         $v0, 0x84($a0)
    /* 333C4 80044BB4 00000000 */  nop
    /* 333C8 80044BB8 2A104300 */  slt        $v0, $v0, $v1
    /* 333CC 80044BBC 07004010 */  beqz       $v0, .L80044BDC
    /* 333D0 80044BC0 00000000 */   nop
  .L80044BC4:
    /* 333D4 80044BC4 8000828C */  lw         $v0, 0x80($a0)
    /* 333D8 80044BC8 8400858C */  lw         $a1, 0x84($a0)
    /* 333DC 80044BCC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 333E0 80044BD0 2A10A200 */  slt        $v0, $a1, $v0
    /* 333E4 80044BD4 04004010 */  beqz       $v0, .L80044BE8
    /* 333E8 80044BD8 0100A524 */   addiu     $a1, $a1, 0x1
  .L80044BDC:
    /* 333EC 80044BDC BF12010C */  jal        func_80044AFC
    /* 333F0 80044BE0 00000000 */   nop
    /* 333F4 80044BE4 21304000 */  addu       $a2, $v0, $zero
  .L80044BE8:
    /* 333F8 80044BE8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 333FC 80044BEC 2110C000 */  addu       $v0, $a2, $zero
    /* 33400 80044BF0 0800E003 */  jr         $ra
    /* 33404 80044BF4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80044B88
