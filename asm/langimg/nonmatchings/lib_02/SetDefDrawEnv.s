nonmatching SetDefDrawEnv, 0xB4

glabel SetDefDrawEnv
    /* 99F28 800AB718 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 99F2C 800AB71C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 99F30 800AB720 3800B28F */  lw         $s2, 0x38($sp)
    /* 99F34 800AB724 1400B1AF */  sw         $s1, 0x14($sp)
    /* 99F38 800AB728 21888000 */  addu       $s1, $a0, $zero
    /* 99F3C 800AB72C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 99F40 800AB730 2198A000 */  addu       $s3, $a1, $zero
    /* 99F44 800AB734 2000B4AF */  sw         $s4, 0x20($sp)
    /* 99F48 800AB738 21A0C000 */  addu       $s4, $a2, $zero
    /* 99F4C 800AB73C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 99F50 800AB740 2400BFAF */  sw         $ra, 0x24($sp)
    /* 99F54 800AB744 BFAD020C */  jal        GetVideoMode
    /* 99F58 800AB748 2180E000 */   addu      $s0, $a3, $zero
    /* 99F5C 800AB74C 01000324 */  addiu      $v1, $zero, 0x1
    /* 99F60 800AB750 000033A6 */  sh         $s3, 0x0($s1)
    /* 99F64 800AB754 020034A6 */  sh         $s4, 0x2($s1)
    /* 99F68 800AB758 040030A6 */  sh         $s0, 0x4($s1)
    /* 99F6C 800AB75C 0C0020A6 */  sh         $zero, 0xC($s1)
    /* 99F70 800AB760 0E0020A6 */  sh         $zero, 0xE($s1)
    /* 99F74 800AB764 100020A6 */  sh         $zero, 0x10($s1)
    /* 99F78 800AB768 120020A6 */  sh         $zero, 0x12($s1)
    /* 99F7C 800AB76C 190020A2 */  sb         $zero, 0x19($s1)
    /* 99F80 800AB770 1A0020A2 */  sb         $zero, 0x1A($s1)
    /* 99F84 800AB774 1B0020A2 */  sb         $zero, 0x1B($s1)
    /* 99F88 800AB778 160023A2 */  sb         $v1, 0x16($s1)
    /* 99F8C 800AB77C 03004010 */  beqz       $v0, .L800AB78C
    /* 99F90 800AB780 060032A6 */   sh        $s2, 0x6($s1)
    /* 99F94 800AB784 E4AD0208 */  j          .L800AB790
    /* 99F98 800AB788 2101422A */   slti      $v0, $s2, 0x121
  .L800AB78C:
    /* 99F9C 800AB78C 0101422A */  slti       $v0, $s2, 0x101
  .L800AB790:
    /* 99FA0 800AB790 170022A2 */  sb         $v0, 0x17($s1)
    /* 99FA4 800AB794 21102002 */  addu       $v0, $s1, $zero
    /* 99FA8 800AB798 0A000324 */  addiu      $v1, $zero, 0xA
    /* 99FAC 800AB79C 080053A4 */  sh         $s3, 0x8($v0)
    /* 99FB0 800AB7A0 0A0054A4 */  sh         $s4, 0xA($v0)
    /* 99FB4 800AB7A4 140043A4 */  sh         $v1, 0x14($v0)
    /* 99FB8 800AB7A8 180040A0 */  sb         $zero, 0x18($v0)
    /* 99FBC 800AB7AC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 99FC0 800AB7B0 2000B48F */  lw         $s4, 0x20($sp)
    /* 99FC4 800AB7B4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 99FC8 800AB7B8 1800B28F */  lw         $s2, 0x18($sp)
    /* 99FCC 800AB7BC 1400B18F */  lw         $s1, 0x14($sp)
    /* 99FD0 800AB7C0 1000B08F */  lw         $s0, 0x10($sp)
    /* 99FD4 800AB7C4 0800E003 */  jr         $ra
    /* 99FD8 800AB7C8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel SetDefDrawEnv
