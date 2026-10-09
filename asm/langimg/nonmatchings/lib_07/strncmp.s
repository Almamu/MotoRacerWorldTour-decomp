nonmatching strncmp, 0x80

glabel strncmp
    /* A4D08 800B64F8 03008010 */  beqz       $a0, .L800B6508
    /* A4D0C 800B64FC 00000000 */   nop
    /* A4D10 800B6500 0700A014 */  bnez       $a1, .L800B6520
    /* A4D14 800B6504 00000000 */   nop
  .L800B6508:
    /* A4D18 800B6508 19008510 */  beq        $a0, $a1, .L800B6570
    /* A4D1C 800B650C 21100000 */   addu      $v0, $zero, $zero
    /* A4D20 800B6510 17008010 */  beqz       $a0, .L800B6570
    /* A4D24 800B6514 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A4D28 800B6518 5CD90208 */  j          .L800B6570
    /* A4D2C 800B651C 01000224 */   addiu     $v0, $zero, 0x1
  .L800B6520:
    /* A4D30 800B6520 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* A4D34 800B6524 1200C004 */  bltz       $a2, .L800B6570
    /* A4D38 800B6528 21100000 */   addu      $v0, $zero, $zero
  .L800B652C:
    /* A4D3C 800B652C 00008380 */  lb         $v1, 0x0($a0)
    /* A4D40 800B6530 0000A280 */  lb         $v0, 0x0($a1)
    /* A4D44 800B6534 00000000 */  nop
    /* A4D48 800B6538 06006214 */  bne        $v1, $v0, .L800B6554
    /* A4D4C 800B653C 0100A524 */   addiu     $a1, $a1, 0x1
    /* A4D50 800B6540 0A006010 */  beqz       $v1, .L800B656C
    /* A4D54 800B6544 01008424 */   addiu     $a0, $a0, 0x1
    /* A4D58 800B6548 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* A4D5C 800B654C F7FFC104 */  bgez       $a2, .L800B652C
    /* A4D60 800B6550 00000000 */   nop
  .L800B6554:
    /* A4D64 800B6554 0500C004 */  bltz       $a2, .L800B656C
    /* A4D68 800B6558 00000000 */   nop
    /* A4D6C 800B655C 00008380 */  lb         $v1, 0x0($a0)
    /* A4D70 800B6560 FFFFA280 */  lb         $v0, -0x1($a1)
    /* A4D74 800B6564 5CD90208 */  j          .L800B6570
    /* A4D78 800B6568 23106200 */   subu      $v0, $v1, $v0
  .L800B656C:
    /* A4D7C 800B656C 21100000 */  addu       $v0, $zero, $zero
  .L800B6570:
    /* A4D80 800B6570 0800E003 */  jr         $ra
    /* A4D84 800B6574 00000000 */   nop
endlabel strncmp
