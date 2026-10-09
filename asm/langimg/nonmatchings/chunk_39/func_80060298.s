nonmatching func_80060298, 0xA8

glabel func_80060298
    /* 4EAA8 80060298 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4EAAC 8006029C 21388000 */  addu       $a3, $a0, $zero
    /* 4EAB0 800602A0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4EAB4 800602A4 2188A000 */  addu       $s1, $a1, $zero
    /* 4EAB8 800602A8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4EABC 800602AC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4EAC0 800602B0 1D002012 */  beqz       $s1, .L80060328
    /* 4EAC4 800602B4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 4EAC8 800602B8 00100524 */  addiu      $a1, $zero, 0x1000
    /* 4EACC 800602BC 0000D08C */  lw         $s0, 0x0($a2)
    /* 4EAD0 800602C0 F002238E */  lw         $v1, 0x2F0($s1)
    /* 4EAD4 800602C4 0000F28C */  lw         $s2, 0x0($a3)
    /* 4EAD8 800602C8 40201000 */  sll        $a0, $s0, 1
    /* 4EADC 800602CC 21209000 */  addu       $a0, $a0, $s0
    /* 4EAE0 800602D0 00110400 */  sll        $v0, $a0, 4
    /* 4EAE4 800602D4 21208200 */  addu       $a0, $a0, $v0
    /* 4EAE8 800602D8 00210400 */  sll        $a0, $a0, 4
    /* 4EAEC 800602DC 21206400 */  addu       $a0, $v1, $a0
    /* 4EAF0 800602E0 207D010C */  jal        func_8005F480
    /* 4EAF4 800602E4 21304002 */   addu      $a2, $s2, $zero
    /* 4EAF8 800602E8 0403228E */  lw         $v0, 0x304($s1)
    /* 4EAFC 800602EC 00000000 */  nop
    /* 4EB00 800602F0 0D004014 */  bnez       $v0, .L80060328
    /* 4EB04 800602F4 00000000 */   nop
    /* 4EB08 800602F8 7803238E */  lw         $v1, 0x378($s1)
    /* 4EB0C 800602FC 00000000 */  nop
    /* 4EB10 80060300 081E628C */  lw         $v0, 0x1E08($v1)
    /* 4EB14 80060304 00000000 */  nop
    /* 4EB18 80060308 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 4EB1C 8006030C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4EB20 80060310 05004010 */  beqz       $v0, .L80060328
    /* 4EB24 80060314 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 4EB28 80060318 03004216 */  bne        $s2, $v0, .L80060328
    /* 4EB2C 8006031C 21202002 */   addu      $a0, $s1, $zero
    /* 4EB30 80060320 0C31010C */  jal        func_8004C430
    /* 4EB34 80060324 21280002 */   addu      $a1, $s0, $zero
  .L80060328:
    /* 4EB38 80060328 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4EB3C 8006032C 1800B28F */  lw         $s2, 0x18($sp)
    /* 4EB40 80060330 1400B18F */  lw         $s1, 0x14($sp)
    /* 4EB44 80060334 1000B08F */  lw         $s0, 0x10($sp)
    /* 4EB48 80060338 0800E003 */  jr         $ra
    /* 4EB4C 8006033C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80060298
