nonmatching func_8001427C, 0x64

glabel func_8001427C
    /* 2A8C 8001427C 21380000 */  addu       $a3, $zero, $zero
    /* 2A90 80014280 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2A94 80014284 1400A210 */  beq        $a1, $v0, .L800142D8
    /* 2A98 80014288 21308000 */   addu      $a2, $a0, $zero
    /* 2A9C 8001428C 3F00A330 */  andi       $v1, $a1, 0x3F
    /* 2AA0 80014290 82210500 */  srl        $a0, $a1, 6
    /* 2AA4 80014294 FF008430 */  andi       $a0, $a0, 0xFF
    /* 2AA8 80014298 40100300 */  sll        $v0, $v1, 1
    /* 2AAC 8001429C 21104300 */  addu       $v0, $v0, $v1
    /* 2AB0 800142A0 80100200 */  sll        $v0, $v0, 2
    /* 2AB4 800142A4 21104300 */  addu       $v0, $v0, $v1
    /* 2AB8 800142A8 C0100200 */  sll        $v0, $v0, 3
    /* 2ABC 800142AC 0C024224 */  addiu      $v0, $v0, 0x20C
    /* 2AC0 800142B0 2130C200 */  addu       $a2, $a2, $v0
    /* 2AC4 800142B4 0C00C384 */  lh         $v1, 0xC($a2)
    /* 2AC8 800142B8 00000000 */  nop
    /* 2ACC 800142BC 06008314 */  bne        $a0, $v1, .L800142D8
    /* 2AD0 800142C0 822B0500 */   srl       $a1, $a1, 14
    /* 2AD4 800142C4 0400C28C */  lw         $v0, 0x4($a2)
    /* 2AD8 800142C8 00000000 */  nop
    /* 2ADC 800142CC 0200A214 */  bne        $a1, $v0, .L800142D8
    /* 2AE0 800142D0 00000000 */   nop
    /* 2AE4 800142D4 2138C000 */  addu       $a3, $a2, $zero
  .L800142D8:
    /* 2AE8 800142D8 0800E003 */  jr         $ra
    /* 2AEC 800142DC 2110E000 */   addu      $v0, $a3, $zero
endlabel func_8001427C
