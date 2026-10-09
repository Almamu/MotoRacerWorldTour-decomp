nonmatching func_8013E654, 0xB4

glabel func_8013E654
    /* BB20 8013E654 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* BB24 8013E658 1800B2AF */  sw         $s2, 0x18($sp)
    /* BB28 8013E65C 3800B28F */  lw         $s2, 0x38($sp)
    /* BB2C 8013E660 1400B1AF */  sw         $s1, 0x14($sp)
    /* BB30 8013E664 21888000 */  addu       $s1, $a0, $zero
    /* BB34 8013E668 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* BB38 8013E66C 2198A000 */  addu       $s3, $a1, $zero
    /* BB3C 8013E670 2000B4AF */  sw         $s4, 0x20($sp)
    /* BB40 8013E674 21A0C000 */  addu       $s4, $a2, $zero
    /* BB44 8013E678 1000B0AF */  sw         $s0, 0x10($sp)
    /* BB48 8013E67C 2400BFAF */  sw         $ra, 0x24($sp)
    /* BB4C 8013E680 2DEF040C */  jal        func_8013BCB4
    /* BB50 8013E684 2180E000 */   addu      $s0, $a3, $zero
    /* BB54 8013E688 01000324 */  addiu      $v1, $zero, 0x1
    /* BB58 8013E68C 000033A6 */  sh         $s3, 0x0($s1)
    /* BB5C 8013E690 020034A6 */  sh         $s4, 0x2($s1)
    /* BB60 8013E694 040030A6 */  sh         $s0, 0x4($s1)
    /* BB64 8013E698 0C0020A6 */  sh         $zero, 0xC($s1)
    /* BB68 8013E69C 0E0020A6 */  sh         $zero, 0xE($s1)
    /* BB6C 8013E6A0 100020A6 */  sh         $zero, 0x10($s1)
    /* BB70 8013E6A4 120020A6 */  sh         $zero, 0x12($s1)
    /* BB74 8013E6A8 190020A2 */  sb         $zero, 0x19($s1)
    /* BB78 8013E6AC 1A0020A2 */  sb         $zero, 0x1A($s1)
    /* BB7C 8013E6B0 1B0020A2 */  sb         $zero, 0x1B($s1)
    /* BB80 8013E6B4 160023A2 */  sb         $v1, 0x16($s1)
    /* BB84 8013E6B8 03004010 */  beqz       $v0, .L8013E6C8
    /* BB88 8013E6BC 060032A6 */   sh        $s2, 0x6($s1)
    /* BB8C 8013E6C0 B3F90408 */  j          .L8013E6CC
    /* BB90 8013E6C4 2101422A */   slti      $v0, $s2, 0x121
  .L8013E6C8:
    /* BB94 8013E6C8 0101422A */  slti       $v0, $s2, 0x101
  .L8013E6CC:
    /* BB98 8013E6CC 170022A2 */  sb         $v0, 0x17($s1)
    /* BB9C 8013E6D0 21102002 */  addu       $v0, $s1, $zero
    /* BBA0 8013E6D4 0A000324 */  addiu      $v1, $zero, 0xA
    /* BBA4 8013E6D8 080053A4 */  sh         $s3, 0x8($v0)
    /* BBA8 8013E6DC 0A0054A4 */  sh         $s4, 0xA($v0)
    /* BBAC 8013E6E0 140043A4 */  sh         $v1, 0x14($v0)
    /* BBB0 8013E6E4 180040A0 */  sb         $zero, 0x18($v0)
    /* BBB4 8013E6E8 2400BF8F */  lw         $ra, 0x24($sp)
    /* BBB8 8013E6EC 2000B48F */  lw         $s4, 0x20($sp)
    /* BBBC 8013E6F0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* BBC0 8013E6F4 1800B28F */  lw         $s2, 0x18($sp)
    /* BBC4 8013E6F8 1400B18F */  lw         $s1, 0x14($sp)
    /* BBC8 8013E6FC 1000B08F */  lw         $s0, 0x10($sp)
    /* BBCC 8013E700 0800E003 */  jr         $ra
    /* BBD0 8013E704 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_8013E654
    /* BBD4 8013E708 00000000 */  nop
    /* BBD8 8013E70C 00000000 */  nop
    /* BBDC 8013E710 00000000 */  nop
