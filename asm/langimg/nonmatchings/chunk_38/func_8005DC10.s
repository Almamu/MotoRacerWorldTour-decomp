nonmatching func_8005DC10, 0x160

glabel func_8005DC10
    /* 4C420 8005DC10 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4C424 8005DC14 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4C428 8005DC18 21800000 */  addu       $s0, $zero, $zero
    /* 4C42C 8005DC1C 21408000 */  addu       $t0, $a0, $zero
    /* 4C430 8005DC20 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4C434 8005DC24 2188A000 */  addu       $s1, $a1, $zero
    /* 4C438 8005DC28 02000224 */  addiu      $v0, $zero, 0x2
    /* 4C43C 8005DC2C 0600C214 */  bne        $a2, $v0, .L8005DC48
    /* 4C440 8005DC30 1800BFAF */   sw        $ra, 0x18($sp)
    /* 4C444 8005DC34 01001024 */  addiu      $s0, $zero, 0x1
    /* 4C448 8005DC38 F990010C */  jal        func_800643E4
    /* 4C44C 8005DC3C 21202002 */   addu      $a0, $s1, $zero
    /* 4C450 8005DC40 57770108 */  j          .L8005DD5C
    /* 4C454 8005DC44 21100002 */   addu      $v0, $s0, $zero
  .L8005DC48:
    /* 4C458 8005DC48 01000224 */  addiu      $v0, $zero, 0x1
    /* 4C45C 8005DC4C 4300C214 */  bne        $a2, $v0, .L8005DD5C
    /* 4C460 8005DC50 21100002 */   addu      $v0, $s0, $zero
    /* 4C464 8005DC54 7803038D */  lw         $v1, 0x378($t0)
    /* 4C468 8005DC58 00000000 */  nop
    /* 4C46C 8005DC5C 0000638C */  lw         $v1, 0x0($v1)
    /* 4C470 8005DC60 08000224 */  addiu      $v0, $zero, 0x8
    /* 4C474 8005DC64 0E006210 */  beq        $v1, $v0, .L8005DCA0
    /* 4C478 8005DC68 04000224 */   addiu     $v0, $zero, 0x4
    /* 4C47C 8005DC6C 0C006210 */  beq        $v1, $v0, .L8005DCA0
    /* 4C480 8005DC70 20000224 */   addiu     $v0, $zero, 0x20
    /* 4C484 8005DC74 0A006210 */  beq        $v1, $v0, .L8005DCA0
    /* 4C488 8005DC78 10000224 */   addiu     $v0, $zero, 0x10
    /* 4C48C 8005DC7C 08006210 */  beq        $v1, $v0, .L8005DCA0
    /* 4C490 8005DC80 00000000 */   nop
    /* 4C494 8005DC84 0D80033C */  lui        $v1, %hi(D_800D5F40)
    /* 4C498 8005DC88 405F638C */  lw         $v1, %lo(D_800D5F40)($v1)
    /* 4C49C 8005DC8C 00000000 */  nop
    /* 4C4A0 8005DC90 03006610 */  beq        $v1, $a2, .L8005DCA0
    /* 4C4A4 8005DC94 03000224 */   addiu     $v0, $zero, 0x3
    /* 4C4A8 8005DC98 02006214 */  bne        $v1, $v0, .L8005DCA4
    /* 4C4AC 8005DC9C 00000000 */   nop
  .L8005DCA0:
    /* 4C4B0 8005DCA0 21380000 */  addu       $a3, $zero, $zero
  .L8005DCA4:
    /* 4C4B4 8005DCA4 0D80043C */  lui        $a0, %hi(D_800D4898)
    /* 4C4B8 8005DCA8 98488424 */  addiu      $a0, $a0, %lo(D_800D4898)
    /* 4C4BC 8005DCAC 40100700 */  sll        $v0, $a3, 1
    /* 4C4C0 8005DCB0 21104700 */  addu       $v0, $v0, $a3
    /* 4C4C4 8005DCB4 00290200 */  sll        $a1, $v0, 4
    /* 4C4C8 8005DCB8 21104500 */  addu       $v0, $v0, $a1
    /* 4C4CC 8005DCBC 8803038D */  lw         $v1, 0x388($t0)
    /* 4C4D0 8005DCC0 C0100200 */  sll        $v0, $v0, 3
    /* 4C4D4 8005DCC4 21186200 */  addu       $v1, $v1, $v0
    /* 4C4D8 8005DCC8 7082020C */  jal        func_800A09C0
    /* 4C4DC 8005DCCC A00523AE */   sw        $v1, 0x5A0($s1)
    /* 4C4E0 8005DCD0 21184000 */  addu       $v1, $v0, $zero
    /* 4C4E4 8005DCD4 19006010 */  beqz       $v1, .L8005DD3C
    /* 4C4E8 8005DCD8 00000000 */   nop
    /* 4C4EC 8005DCDC A005228E */  lw         $v0, 0x5A0($s1)
    /* 4C4F0 8005DCE0 03006988 */  lwl        $t1, 0x3($v1)
    /* 4C4F4 8005DCE4 00006998 */  lwr        $t1, 0x0($v1)
    /* 4C4F8 8005DCE8 07006A88 */  lwl        $t2, 0x7($v1)
    /* 4C4FC 8005DCEC 04006A98 */  lwr        $t2, 0x4($v1)
    /* 4C500 8005DCF0 08006B80 */  lb         $t3, 0x8($v1)
    /* 4C504 8005DCF4 09006C80 */  lb         $t4, 0x9($v1)
    /* 4C508 8005DCF8 8A0149A8 */  swl        $t1, 0x18A($v0)
    /* 4C50C 8005DCFC 870149B8 */  swr        $t1, 0x187($v0)
    /* 4C510 8005DD00 8E014AA8 */  swl        $t2, 0x18E($v0)
    /* 4C514 8005DD04 8B014AB8 */  swr        $t2, 0x18B($v0)
    /* 4C518 8005DD08 8F014BA0 */  sb         $t3, 0x18F($v0)
    /* 4C51C 8005DD0C 90014CA0 */  sb         $t4, 0x190($v0)
    /* 4C520 8005DD10 0A006980 */  lb         $t1, 0xA($v1)
    /* 4C524 8005DD14 00000000 */  nop
    /* 4C528 8005DD18 910149A0 */  sb         $t1, 0x191($v0)
    /* 4C52C 8005DD1C A005248E */  lw         $a0, 0x5A0($s1)
    /* 4C530 8005DD20 01000324 */  addiu      $v1, $zero, 0x1
    /* 4C534 8005DD24 700183AC */  sw         $v1, 0x170($a0)
    /* 4C538 8005DD28 A005268E */  lw         $a2, 0x5A0($s1)
    /* 4C53C 8005DD2C 00000000 */  nop
    /* 4C540 8005DD30 7001C58C */  lw         $a1, 0x170($a2)
    /* 4C544 8005DD34 DBA5010C */  jal        func_8006976C
    /* 4C548 8005DD38 7401C424 */   addiu     $a0, $a2, 0x174
  .L8005DD3C:
    /* 4C54C 8005DD3C 0992000C */  jal        func_80024824
    /* 4C550 8005DD40 21202002 */   addu      $a0, $s1, $zero
    /* 4C554 8005DD44 5A90000C */  jal        func_80024168
    /* 4C558 8005DD48 21202002 */   addu      $a0, $s1, $zero
    /* 4C55C 8005DD4C 6191000C */  jal        func_80024584
    /* 4C560 8005DD50 21202002 */   addu      $a0, $s1, $zero
    /* 4C564 8005DD54 01001024 */  addiu      $s0, $zero, 0x1
    /* 4C568 8005DD58 21100002 */  addu       $v0, $s0, $zero
  .L8005DD5C:
    /* 4C56C 8005DD5C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4C570 8005DD60 1400B18F */  lw         $s1, 0x14($sp)
    /* 4C574 8005DD64 1000B08F */  lw         $s0, 0x10($sp)
    /* 4C578 8005DD68 0800E003 */  jr         $ra
    /* 4C57C 8005DD6C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8005DC10
