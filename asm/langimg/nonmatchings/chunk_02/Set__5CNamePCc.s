nonmatching Set__5CNamePCc, 0x8C

glabel Set__5CNamePCc
    /* 4720 80015F10 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4724 80015F14 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4728 80015F18 21888000 */  addu       $s1, $a0, $zero
    /* 472C 80015F1C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4730 80015F20 2190A000 */  addu       $s2, $a1, $zero
    /* 4734 80015F24 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4738 80015F28 16004012 */  beqz       $s2, .L80015F84
    /* 473C 80015F2C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 4740 80015F30 0000248E */  lw         $a0, 0x0($s1)
    /* 4744 80015F34 00000000 */  nop
    /* 4748 80015F38 04008010 */  beqz       $a0, .L80015F4C
    /* 474C 80015F3C 00000000 */   nop
    /* 4750 80015F40 679C020C */  jal        __builtin_delete
    /* 4754 80015F44 00000000 */   nop
    /* 4758 80015F48 000020AE */  sw         $zero, 0x0($s1)
  .L80015F4C:
    /* 475C 80015F4C 2ED9020C */  jal        strlen
    /* 4760 80015F50 21204002 */   addu      $a0, $s2, $zero
    /* 4764 80015F54 01005024 */  addiu      $s0, $v0, 0x1
    /* 4768 80015F58 959C020C */  jal        __builtin_vec_new
    /* 476C 80015F5C 21200002 */   addu      $a0, $s0, $zero
    /* 4770 80015F60 21204000 */  addu       $a0, $v0, $zero
    /* 4774 80015F64 21284002 */  addu       $a1, $s2, $zero
    /* 4778 80015F68 21300002 */  addu       $a2, $s0, $zero
    /* 477C 80015F6C 5ED9020C */  jal        memcpy
    /* 4780 80015F70 000022AE */   sw        $v0, 0x0($s1)
    /* 4784 80015F74 0000238E */  lw         $v1, 0x0($s1)
    /* 4788 80015F78 00000000 */  nop
    /* 478C 80015F7C 21800302 */  addu       $s0, $s0, $v1
    /* 4790 80015F80 FFFF00A2 */  sb         $zero, -0x1($s0)
  .L80015F84:
    /* 4794 80015F84 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4798 80015F88 1800B28F */  lw         $s2, 0x18($sp)
    /* 479C 80015F8C 1400B18F */  lw         $s1, 0x14($sp)
    /* 47A0 80015F90 1000B08F */  lw         $s0, 0x10($sp)
    /* 47A4 80015F94 0800E003 */  jr         $ra
    /* 47A8 80015F98 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel Set__5CNamePCc
