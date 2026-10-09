nonmatching func_8013F4E0, 0x2C0

glabel func_8013F4E0
    /* C9AC 8013F4E0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* C9B0 8013F4E4 2800B0AF */  sw         $s0, 0x28($sp)
    /* C9B4 8013F4E8 21808000 */  addu       $s0, $a0, $zero
    /* C9B8 8013F4EC 3400B3AF */  sw         $s3, 0x34($sp)
    /* C9BC 8013F4F0 2198A000 */  addu       $s3, $a1, $zero
    /* C9C0 8013F4F4 4800BEAF */  sw         $fp, 0x48($sp)
    /* C9C4 8013F4F8 21F0C000 */  addu       $fp, $a2, $zero
    /* C9C8 8013F4FC 40181000 */  sll        $v1, $s0, 1
    /* C9CC 8013F500 0F001032 */  andi       $s0, $s0, 0xF
    /* C9D0 8013F504 1C80023C */  lui        $v0, %hi(D_801BFE44)
    /* C9D4 8013F508 3000B2AF */  sw         $s2, 0x30($sp)
    /* C9D8 8013F50C 44FE5224 */  addiu      $s2, $v0, %lo(D_801BFE44)
    /* C9DC 8013F510 21187200 */  addu       $v1, $v1, $s2
    /* C9E0 8013F514 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* C9E4 8013F518 4400B7AF */  sw         $s7, 0x44($sp)
    /* C9E8 8013F51C 4000B6AF */  sw         $s6, 0x40($sp)
    /* C9EC 8013F520 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* C9F0 8013F524 3800B4AF */  sw         $s4, 0x38($sp)
    /* C9F4 8013F528 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* C9F8 8013F52C 00007194 */  lhu        $s1, 0x0($v1)
    /* C9FC 8013F530 AFFB040C */  jal        func_8013EEBC
    /* CA00 8013F534 21200002 */   addu      $a0, $s0, $zero
    /* CA04 8013F538 21A04000 */  addu       $s4, $v0, $zero
    /* CA08 8013F53C 00008296 */  lhu        $v0, 0x0($s4)
    /* CA0C 8013F540 00000000 */  nop
    /* CA10 8013F544 1800A2A7 */  sh         $v0, 0x18($sp)
    /* CA14 8013F548 00008296 */  lhu        $v0, 0x0($s4)
    /* CA18 8013F54C 21A80000 */  addu       $s5, $zero, $zero
    /* CA1C 8013F550 26182202 */  xor        $v1, $s1, $v0
    /* CA20 8013F554 24104300 */  and        $v0, $v0, $v1
    /* CA24 8013F558 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* CA28 8013F55C 00008296 */  lhu        $v0, 0x0($s4)
    /* CA2C 8013F560 44006726 */  addiu      $a3, $s3, 0x44
    /* CA30 8013F564 1E00B1A7 */  sh         $s1, 0x1E($sp)
    /* CA34 8013F568 1400B0AF */  sw         $s0, 0x14($sp)
    /* CA38 8013F56C 2000A7AF */  sw         $a3, 0x20($sp)
    /* CA3C 8013F570 26102202 */  xor        $v0, $s1, $v0
    /* CA40 8013F574 24102202 */  and        $v0, $s1, $v0
    /* CA44 8013F578 78008012 */  beqz       $s4, .L8013F75C
    /* CA48 8013F57C 1C00A2A7 */   sh        $v0, 0x1C($sp)
    /* CA4C 8013F580 9400628E */  lw         $v0, 0x94($s3)
    /* CA50 8013F584 00000000 */  nop
    /* CA54 8013F588 04004010 */  beqz       $v0, .L8013F59C
    /* CA58 8013F58C 1000A427 */   addiu     $a0, $sp, 0x10
    /* CA5C 8013F590 0000668E */  lw         $a2, 0x0($s3)
    /* CA60 8013F594 09F84000 */  jalr       $v0
    /* CA64 8013F598 2128C003 */   addu      $a1, $fp, $zero
  .L8013F59C:
    /* CA68 8013F59C 21B00000 */  addu       $s6, $zero, $zero
    /* CA6C 8013F5A0 FFFF3732 */  andi       $s7, $s1, 0xFFFF
    /* CA70 8013F5A4 40101000 */  sll        $v0, $s0, 1
    /* CA74 8013F5A8 21905200 */  addu       $s2, $v0, $s2
    /* CA78 8013F5AC 1C80023C */  lui        $v0, %hi(D_801BFDAC)
    /* CA7C 8013F5B0 ACFD5124 */  addiu      $s1, $v0, %lo(D_801BFDAC)
    /* CA80 8013F5B4 2000B08F */  lw         $s0, 0x20($sp)
  .L8013F5B8:
    /* CA84 8013F5B8 00000000 */  nop
    /* CA88 8013F5BC 0000028E */  lw         $v0, 0x0($s0)
    /* CA8C 8013F5C0 00000000 */  nop
    /* CA90 8013F5C4 28004010 */  beqz       $v0, .L8013F668
    /* CA94 8013F5C8 00000000 */   nop
    /* CA98 8013F5CC 00008296 */  lhu        $v0, 0x0($s4)
    /* CA9C 8013F5D0 0000238E */  lw         $v1, 0x0($s1)
    /* CAA0 8013F5D4 00000000 */  nop
    /* CAA4 8013F5D8 24104300 */  and        $v0, $v0, $v1
    /* CAA8 8013F5DC 0E004010 */  beqz       $v0, .L8013F618
    /* CAAC 8013F5E0 2410E302 */   and       $v0, $s7, $v1
    /* CAB0 8013F5E4 04004010 */  beqz       $v0, .L8013F5F8
    /* CAB4 8013F5E8 1000A427 */   addiu     $a0, $sp, 0x10
    /* CAB8 8013F5EC FE000224 */  addiu      $v0, $zero, 0xFE
    /* CABC 8013F5F0 8EFD0408 */  j          .L8013F638
    /* CAC0 8013F5F4 1000A2AF */   sw        $v0, 0x10($sp)
  .L8013F5F8:
    /* CAC4 8013F5F8 FF000224 */  addiu      $v0, $zero, 0xFF
    /* CAC8 8013F5FC 1000A2AF */  sw         $v0, 0x10($sp)
    /* CACC 8013F600 00004296 */  lhu        $v0, 0x0($s2)
    /* CAD0 8013F604 00002396 */  lhu        $v1, 0x0($s1)
    /* CAD4 8013F608 00000000 */  nop
    /* CAD8 8013F60C 25104300 */  or         $v0, $v0, $v1
    /* CADC 8013F610 8EFD0408 */  j          .L8013F638
    /* CAE0 8013F614 000042A6 */   sh        $v0, 0x0($s2)
  .L8013F618:
    /* CAE4 8013F618 19004010 */  beqz       $v0, .L8013F680
    /* CAE8 8013F61C 1000A427 */   addiu     $a0, $sp, 0x10
    /* CAEC 8013F620 1000A0AF */  sw         $zero, 0x10($sp)
    /* CAF0 8013F624 00002296 */  lhu        $v0, 0x0($s1)
    /* CAF4 8013F628 00004396 */  lhu        $v1, 0x0($s2)
    /* CAF8 8013F62C 27100200 */  nor        $v0, $zero, $v0
    /* CAFC 8013F630 24186200 */  and        $v1, $v1, $v0
    /* CB00 8013F634 000043A6 */  sh         $v1, 0x0($s2)
  .L8013F638:
    /* CB04 8013F638 0000668E */  lw         $a2, 0x0($s3)
    /* CB08 8013F63C 0000028E */  lw         $v0, 0x0($s0)
    /* CB0C 8013F640 00000000 */  nop
    /* CB10 8013F644 09F84000 */  jalr       $v0
    /* CB14 8013F648 2128C003 */   addu      $a1, $fp, $zero
    /* CB18 8013F64C 1C80073C */  lui        $a3, %hi(D_801BFDA0)
    /* CB1C 8013F650 A0FDE28C */  lw         $v0, %lo(D_801BFDA0)($a3)
    /* CB20 8013F654 00000000 */  nop
    /* CB24 8013F658 44004014 */  bnez       $v0, .L8013F76C
    /* CB28 8013F65C 01001524 */   addiu     $s5, $zero, 0x1
    /* CB2C 8013F660 A1FD0408 */  j          .L8013F684
    /* CB30 8013F664 04003126 */   addiu     $s1, $s1, 0x4
  .L8013F668:
    /* CB34 8013F668 00002296 */  lhu        $v0, 0x0($s1)
    /* CB38 8013F66C 00008496 */  lhu        $a0, 0x0($s4)
    /* CB3C 8013F670 00004396 */  lhu        $v1, 0x0($s2)
    /* CB40 8013F674 24104400 */  and        $v0, $v0, $a0
    /* CB44 8013F678 25186200 */  or         $v1, $v1, $v0
    /* CB48 8013F67C 000043A6 */  sh         $v1, 0x0($s2)
  .L8013F680:
    /* CB4C 8013F680 04003126 */  addiu      $s1, $s1, 0x4
  .L8013F684:
    /* CB50 8013F684 0100D626 */  addiu      $s6, $s6, 0x1
    /* CB54 8013F688 1100C22E */  sltiu      $v0, $s6, 0x11
    /* CB58 8013F68C CAFF4014 */  bnez       $v0, .L8013F5B8
    /* CB5C 8013F690 04001026 */   addiu     $s0, $s0, 0x4
    /* CB60 8013F694 8400628E */  lw         $v0, 0x84($s3)
    /* CB64 8013F698 00000000 */  nop
    /* CB68 8013F69C 09004010 */  beqz       $v0, .L8013F6C4
    /* CB6C 8013F6A0 1000A427 */   addiu     $a0, $sp, 0x10
    /* CB70 8013F6A4 0C00828E */  lw         $v0, 0xC($s4)
    /* CB74 8013F6A8 00000000 */  nop
    /* CB78 8013F6AC 1000A2AF */  sw         $v0, 0x10($sp)
    /* CB7C 8013F6B0 0000668E */  lw         $a2, 0x0($s3)
    /* CB80 8013F6B4 8400628E */  lw         $v0, 0x84($s3)
    /* CB84 8013F6B8 00000000 */  nop
    /* CB88 8013F6BC 09F84000 */  jalr       $v0
    /* CB8C 8013F6C0 2128C003 */   addu      $a1, $fp, $zero
  .L8013F6C4:
    /* CB90 8013F6C4 8800628E */  lw         $v0, 0x88($s3)
    /* CB94 8013F6C8 00000000 */  nop
    /* CB98 8013F6CC 09004010 */  beqz       $v0, .L8013F6F4
    /* CB9C 8013F6D0 1000A427 */   addiu     $a0, $sp, 0x10
    /* CBA0 8013F6D4 1000828E */  lw         $v0, 0x10($s4)
    /* CBA4 8013F6D8 00000000 */  nop
    /* CBA8 8013F6DC 1000A2AF */  sw         $v0, 0x10($sp)
    /* CBAC 8013F6E0 0000668E */  lw         $a2, 0x0($s3)
    /* CBB0 8013F6E4 8800628E */  lw         $v0, 0x88($s3)
    /* CBB4 8013F6E8 00000000 */  nop
    /* CBB8 8013F6EC 09F84000 */  jalr       $v0
    /* CBBC 8013F6F0 2128C003 */   addu      $a1, $fp, $zero
  .L8013F6F4:
    /* CBC0 8013F6F4 8C00628E */  lw         $v0, 0x8C($s3)
    /* CBC4 8013F6F8 00000000 */  nop
    /* CBC8 8013F6FC 09004010 */  beqz       $v0, .L8013F724
    /* CBCC 8013F700 1000A427 */   addiu     $a0, $sp, 0x10
    /* CBD0 8013F704 0400828E */  lw         $v0, 0x4($s4)
    /* CBD4 8013F708 00000000 */  nop
    /* CBD8 8013F70C 1000A2AF */  sw         $v0, 0x10($sp)
    /* CBDC 8013F710 0000668E */  lw         $a2, 0x0($s3)
    /* CBE0 8013F714 8C00628E */  lw         $v0, 0x8C($s3)
    /* CBE4 8013F718 00000000 */  nop
    /* CBE8 8013F71C 09F84000 */  jalr       $v0
    /* CBEC 8013F720 2128C003 */   addu      $a1, $fp, $zero
  .L8013F724:
    /* CBF0 8013F724 9000628E */  lw         $v0, 0x90($s3)
    /* CBF4 8013F728 00000000 */  nop
    /* CBF8 8013F72C 10004010 */  beqz       $v0, .L8013F770
    /* CBFC 8013F730 2110A002 */   addu      $v0, $s5, $zero
    /* CC00 8013F734 0800828E */  lw         $v0, 0x8($s4)
    /* CC04 8013F738 1000A427 */  addiu      $a0, $sp, 0x10
    /* CC08 8013F73C 1000A2AF */  sw         $v0, 0x10($sp)
    /* CC0C 8013F740 0000668E */  lw         $a2, 0x0($s3)
    /* CC10 8013F744 9000628E */  lw         $v0, 0x90($s3)
    /* CC14 8013F748 00000000 */  nop
    /* CC18 8013F74C 09F84000 */  jalr       $v0
    /* CC1C 8013F750 2128C003 */   addu      $a1, $fp, $zero
    /* CC20 8013F754 DCFD0408 */  j          .L8013F770
    /* CC24 8013F758 2110A002 */   addu      $v0, $s5, $zero
  .L8013F75C:
    /* CC28 8013F75C FDFA040C */  jal        func_8013EBF4
    /* CC2C 8013F760 21200002 */   addu      $a0, $s0, $zero
    /* CC30 8013F764 1D80033C */  lui        $v1, %hi(D_801CE778)
    /* CC34 8013F768 78E762AC */  sw         $v0, %lo(D_801CE778)($v1)
  .L8013F76C:
    /* CC38 8013F76C 2110A002 */  addu       $v0, $s5, $zero
  .L8013F770:
    /* CC3C 8013F770 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* CC40 8013F774 4800BE8F */  lw         $fp, 0x48($sp)
    /* CC44 8013F778 4400B78F */  lw         $s7, 0x44($sp)
    /* CC48 8013F77C 4000B68F */  lw         $s6, 0x40($sp)
    /* CC4C 8013F780 3C00B58F */  lw         $s5, 0x3C($sp)
    /* CC50 8013F784 3800B48F */  lw         $s4, 0x38($sp)
    /* CC54 8013F788 3400B38F */  lw         $s3, 0x34($sp)
    /* CC58 8013F78C 3000B28F */  lw         $s2, 0x30($sp)
    /* CC5C 8013F790 2C00B18F */  lw         $s1, 0x2C($sp)
    /* CC60 8013F794 2800B08F */  lw         $s0, 0x28($sp)
    /* CC64 8013F798 0800E003 */  jr         $ra
    /* CC68 8013F79C 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_8013F4E0
