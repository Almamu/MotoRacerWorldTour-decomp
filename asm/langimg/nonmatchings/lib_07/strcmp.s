nonmatching strcmp, 0x64

glabel strcmp
    /* A4C08 800B63F8 03008010 */  beqz       $a0, .L800B6408
    /* A4C0C 800B63FC 00000000 */   nop
    /* A4C10 800B6400 0B00A014 */  bnez       $a1, .L800B6430
    /* A4C14 800B6404 00000000 */   nop
  .L800B6408:
    /* A4C18 800B6408 12008510 */  beq        $a0, $a1, .L800B6454
    /* A4C1C 800B640C 21100000 */   addu      $v0, $zero, $zero
    /* A4C20 800B6410 10008010 */  beqz       $a0, .L800B6454
    /* A4C24 800B6414 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A4C28 800B6418 15D90208 */  j          .L800B6454
    /* A4C2C 800B641C 01000224 */   addiu     $v0, $zero, 0x1
  .L800B6420:
    /* A4C30 800B6420 15D90208 */  j          .L800B6454
    /* A4C34 800B6424 21100000 */   addu      $v0, $zero, $zero
  .L800B6428:
    /* A4C38 800B6428 FDFFC010 */  beqz       $a2, .L800B6420
    /* A4C3C 800B642C 01008424 */   addiu     $a0, $a0, 0x1
  .L800B6430:
    /* A4C40 800B6430 0000A380 */  lb         $v1, 0x0($a1)
    /* A4C44 800B6434 00008280 */  lb         $v0, 0x0($a0)
    /* A4C48 800B6438 00008690 */  lbu        $a2, 0x0($a0)
    /* A4C4C 800B643C FAFF4310 */  beq        $v0, $v1, .L800B6428
    /* A4C50 800B6440 0100A524 */   addiu     $a1, $a1, 0x1
    /* A4C54 800B6444 00008380 */  lb         $v1, 0x0($a0)
    /* A4C58 800B6448 FFFFA280 */  lb         $v0, -0x1($a1)
    /* A4C5C 800B644C 00000000 */  nop
    /* A4C60 800B6450 23106200 */  subu       $v0, $v1, $v0
  .L800B6454:
    /* A4C64 800B6454 0800E003 */  jr         $ra
    /* A4C68 800B6458 00000000 */   nop
endlabel strcmp
    /* A4C6C 800B645C 00000000 */  nop
    /* A4C70 800B6460 00000000 */  nop
    /* A4C74 800B6464 00000000 */  nop
