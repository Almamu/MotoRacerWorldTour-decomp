nonmatching func_8006BFEC, 0x78

glabel func_8006BFEC
    /* 5A7FC 8006BFEC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5A800 8006BFF0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5A804 8006BFF4 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 5A808 8006BFF8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5A80C 8006BFFC 21888000 */  addu       $s1, $a0, $zero
    /* 5A810 8006C000 2118A000 */  addu       $v1, $a1, $zero
    /* 5A814 8006C004 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5A818 8006C008 1004248E */  lw         $a0, 0x410($s1)
    /* 5A81C 8006C00C 00000000 */  nop
    /* 5A820 8006C010 0001822C */  sltiu      $v0, $a0, 0x100
    /* 5A824 8006C014 0D004010 */  beqz       $v0, .L8006C04C
    /* 5A828 8006C018 2138C000 */   addu      $a3, $a2, $zero
    /* 5A82C 8006C01C 80200400 */  sll        $a0, $a0, 2
    /* 5A830 8006C020 0C008424 */  addiu      $a0, $a0, 0xC
    /* 5A834 8006C024 21202402 */  addu       $a0, $s1, $a0
    /* 5A838 8006C028 0000258E */  lw         $a1, 0x0($s1)
    /* 5A83C 8006C02C 5EAF010C */  jal        func_8006BD78
    /* 5A840 8006C030 21306000 */   addu      $a2, $v1, $zero
    /* 5A844 8006C034 06004010 */  beqz       $v0, .L8006C050
    /* 5A848 8006C038 21100002 */   addu      $v0, $s0, $zero
    /* 5A84C 8006C03C 1004308E */  lw         $s0, 0x410($s1)
    /* 5A850 8006C040 00000000 */  nop
    /* 5A854 8006C044 01000226 */  addiu      $v0, $s0, 0x1
    /* 5A858 8006C048 100422AE */  sw         $v0, 0x410($s1)
  .L8006C04C:
    /* 5A85C 8006C04C 21100002 */  addu       $v0, $s0, $zero
  .L8006C050:
    /* 5A860 8006C050 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5A864 8006C054 1400B18F */  lw         $s1, 0x14($sp)
    /* 5A868 8006C058 1000B08F */  lw         $s0, 0x10($sp)
    /* 5A86C 8006C05C 0800E003 */  jr         $ra
    /* 5A870 8006C060 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8006BFEC
