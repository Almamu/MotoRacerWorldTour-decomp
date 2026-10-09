nonmatching func_8003CC9C, 0x94

glabel func_8003CC9C
    /* 2B4AC 8003CC9C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2B4B0 8003CCA0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2B4B4 8003CCA4 21808000 */  addu       $s0, $a0, $zero
    /* 2B4B8 8003CCA8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2B4BC 8003CCAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2B4C0 8003CCB0 940A028E */  lw         $v0, 0xA94($s0)
    /* 2B4C4 8003CCB4 00000000 */  nop
    /* 2B4C8 8003CCB8 02004230 */  andi       $v0, $v0, 0x2
    /* 2B4CC 8003CCBC 17004014 */  bnez       $v0, .L8003CD1C
    /* 2B4D0 8003CCC0 2188A000 */   addu      $s1, $a1, $zero
    /* 2B4D4 8003CCC4 6801068E */  lw         $a2, 0x168($s0)
    /* 2B4D8 8003CCC8 0AFF000C */  jal        func_8003FC28
    /* 2B4DC 8003CCCC 06000524 */   addiu     $a1, $zero, 0x6
    /* 2B4E0 8003CCD0 8C0A038E */  lw         $v1, 0xA8C($s0)
    /* 2B4E4 8003CCD4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2B4E8 8003CCD8 680102AE */  sw         $v0, 0x168($s0)
    /* 2B4EC 8003CCDC 23187100 */  subu       $v1, $v1, $s1
    /* 2B4F0 8003CCE0 0C006018 */  blez       $v1, .L8003CD14
    /* 2B4F4 8003CCE4 8C0A03AE */   sw        $v1, 0xA8C($s0)
    /* 2B4F8 8003CCE8 80200300 */  sll        $a0, $v1, 2
    /* 2B4FC 8003CCEC FEFF0324 */  addiu      $v1, $zero, -0x2
    /* 2B500 8003CCF0 880A058E */  lw         $a1, 0xA88($s0)
    /* 2B504 8003CCF4 940A028E */  lw         $v0, 0xA94($s0)
    /* 2B508 8003CCF8 21208500 */  addu       $a0, $a0, $a1
    /* 2B50C 8003CCFC 24104300 */  and        $v0, $v0, $v1
    /* 2B510 8003CD00 FCFF858C */  lw         $a1, -0x4($a0)
    /* 2B514 8003CD04 02004234 */  ori        $v0, $v0, 0x2
    /* 2B518 8003CD08 940A02AE */  sw         $v0, 0xA94($s0)
    /* 2B51C 8003CD0C 47F30008 */  j          .L8003CD1C
    /* 2B520 8003CD10 800A05AE */   sw        $a1, 0xA80($s0)
  .L8003CD14:
    /* 2B524 8003CD14 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B528 8003CD18 8C0A02AE */  sw         $v0, 0xA8C($s0)
  .L8003CD1C:
    /* 2B52C 8003CD1C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2B530 8003CD20 1400B18F */  lw         $s1, 0x14($sp)
    /* 2B534 8003CD24 1000B08F */  lw         $s0, 0x10($sp)
    /* 2B538 8003CD28 0800E003 */  jr         $ra
    /* 2B53C 8003CD2C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8003CC9C
