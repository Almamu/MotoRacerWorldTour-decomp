nonmatching strcat, 0xB0

glabel strcat
    /* A4B58 800B6348 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A4B5C 800B634C 1400B1AF */  sw         $s1, 0x14($sp)
    /* A4B60 800B6350 21888000 */  addu       $s1, $a0, $zero
    /* A4B64 800B6354 1800B2AF */  sw         $s2, 0x18($sp)
    /* A4B68 800B6358 2190A000 */  addu       $s2, $a1, $zero
    /* A4B6C 800B635C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A4B70 800B6360 1B002012 */  beqz       $s1, .L800B63D0
    /* A4B74 800B6364 1000B0AF */   sw        $s0, 0x10($sp)
    /* A4B78 800B6368 1A004012 */  beqz       $s2, .L800B63D4
    /* A4B7C 800B636C 21100000 */   addu      $v0, $zero, $zero
    /* A4B80 800B6370 2ED9020C */  jal        strlen
    /* A4B84 800B6374 21202002 */   addu      $a0, $s1, $zero
    /* A4B88 800B6378 21204002 */  addu       $a0, $s2, $zero
    /* A4B8C 800B637C 2ED9020C */  jal        strlen
    /* A4B90 800B6380 21802202 */   addu      $s0, $s1, $v0
    /* A4B94 800B6384 21104202 */  addu       $v0, $s2, $v0
    /* A4B98 800B6388 11000212 */  beq        $s0, $v0, .L800B63D0
    /* A4B9C 800B638C 21182002 */   addu      $v1, $s1, $zero
    /* A4BA0 800B6390 00006280 */  lb         $v0, 0x0($v1)
    /* A4BA4 800B6394 00000000 */  nop
    /* A4BA8 800B6398 05004010 */  beqz       $v0, .L800B63B0
    /* A4BAC 800B639C 01007124 */   addiu     $s1, $v1, 0x1
  .L800B63A0:
    /* A4BB0 800B63A0 00002282 */  lb         $v0, 0x0($s1)
    /* A4BB4 800B63A4 00000000 */  nop
    /* A4BB8 800B63A8 FDFF4014 */  bnez       $v0, .L800B63A0
    /* A4BBC 800B63AC 01003126 */   addiu     $s1, $s1, 0x1
  .L800B63B0:
    /* A4BC0 800B63B0 FFFF3126 */  addiu      $s1, $s1, -0x1
  .L800B63B4:
    /* A4BC4 800B63B4 00004292 */  lbu        $v0, 0x0($s2)
    /* A4BC8 800B63B8 01005226 */  addiu      $s2, $s2, 0x1
    /* A4BCC 800B63BC 000022A2 */  sb         $v0, 0x0($s1)
    /* A4BD0 800B63C0 FCFF4014 */  bnez       $v0, .L800B63B4
    /* A4BD4 800B63C4 01003126 */   addiu     $s1, $s1, 0x1
    /* A4BD8 800B63C8 F5D80208 */  j          .L800B63D4
    /* A4BDC 800B63CC 21106000 */   addu      $v0, $v1, $zero
  .L800B63D0:
    /* A4BE0 800B63D0 21100000 */  addu       $v0, $zero, $zero
  .L800B63D4:
    /* A4BE4 800B63D4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A4BE8 800B63D8 1800B28F */  lw         $s2, 0x18($sp)
    /* A4BEC 800B63DC 1400B18F */  lw         $s1, 0x14($sp)
    /* A4BF0 800B63E0 1000B08F */  lw         $s0, 0x10($sp)
    /* A4BF4 800B63E4 0800E003 */  jr         $ra
    /* A4BF8 800B63E8 2000BD27 */   addiu     $sp, $sp, 0x20
    /* A4BFC 800B63EC 00000000 */  nop
    /* A4C00 800B63F0 00000000 */  nop
    /* A4C04 800B63F4 00000000 */  nop
endlabel strcat
