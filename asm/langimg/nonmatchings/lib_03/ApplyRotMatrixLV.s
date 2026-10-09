/* Handwritten function */
nonmatching ApplyRotMatrixLV, 0x140

glabel ApplyRotMatrixLV
    /* 9CC28 800AE418 0000888C */  lw         $t0, 0x0($a0)
    /* 9CC2C 800AE41C 0400898C */  lw         $t1, 0x4($a0)
    /* 9CC30 800AE420 08008A8C */  lw         $t2, 0x8($a0)
    /* 9CC34 800AE424 07000105 */  bgez       $t0, .L800AE444
    /* 9CC38 800AE428 00000000 */   nop
    /* 9CC3C 800AE42C 23400800 */  negu       $t0, $t0
    /* 9CC40 800AE430 C35B0800 */  sra        $t3, $t0, 15
    /* 9CC44 800AE434 23580B00 */  negu       $t3, $t3
    /* 9CC48 800AE438 FF7F0831 */  andi       $t0, $t0, 0x7FFF
    /* 9CC4C 800AE43C 03000010 */  b          .L800AE44C
    /* 9CC50 800AE440 23400800 */   negu      $t0, $t0
  .L800AE444:
    /* 9CC54 800AE444 C35B0800 */  sra        $t3, $t0, 15
    /* 9CC58 800AE448 FF7F0831 */  andi       $t0, $t0, 0x7FFF
  .L800AE44C:
    /* 9CC5C 800AE44C 07002105 */  bgez       $t1, .L800AE46C
    /* 9CC60 800AE450 00000000 */   nop
    /* 9CC64 800AE454 23480900 */  negu       $t1, $t1
    /* 9CC68 800AE458 C3630900 */  sra        $t4, $t1, 15
    /* 9CC6C 800AE45C 23600C00 */  negu       $t4, $t4
    /* 9CC70 800AE460 FF7F2931 */  andi       $t1, $t1, 0x7FFF
    /* 9CC74 800AE464 03000010 */  b          .L800AE474
    /* 9CC78 800AE468 23480900 */   negu      $t1, $t1
  .L800AE46C:
    /* 9CC7C 800AE46C C3630900 */  sra        $t4, $t1, 15
    /* 9CC80 800AE470 FF7F2931 */  andi       $t1, $t1, 0x7FFF
  .L800AE474:
    /* 9CC84 800AE474 07004105 */  bgez       $t2, .L800AE494
    /* 9CC88 800AE478 00000000 */   nop
    /* 9CC8C 800AE47C 23500A00 */  negu       $t2, $t2
    /* 9CC90 800AE480 C36B0A00 */  sra        $t5, $t2, 15
    /* 9CC94 800AE484 23680D00 */  negu       $t5, $t5
    /* 9CC98 800AE488 FF7F4A31 */  andi       $t2, $t2, 0x7FFF
    /* 9CC9C 800AE48C 03000010 */  b          .L800AE49C
    /* 9CCA0 800AE490 23500A00 */   negu      $t2, $t2
  .L800AE494:
    /* 9CCA4 800AE494 C36B0A00 */  sra        $t5, $t2, 15
    /* 9CCA8 800AE498 FF7F4A31 */  andi       $t2, $t2, 0x7FFF
  .L800AE49C:
    /* 9CCAC 800AE49C 00488B48 */  mtc2       $t3, $9 /* handwritten instruction */
    /* 9CCB0 800AE4A0 00508C48 */  mtc2       $t4, $10 /* handwritten instruction */
    /* 9CCB4 800AE4A4 00588D48 */  mtc2       $t5, $11 /* handwritten instruction */
    /* 9CCB8 800AE4A8 00000000 */  nop
    /* 9CCBC 800AE4AC 12E0414A */  mvmva      0, 0, 3, 3, 0
    /* 9CCC0 800AE4B0 00C80B48 */  mfc2       $t3, $25 /* handwritten instruction */
    /* 9CCC4 800AE4B4 00D00C48 */  mfc2       $t4, $26 /* handwritten instruction */
    /* 9CCC8 800AE4B8 00D80D48 */  mfc2       $t5, $27 /* handwritten instruction */
    /* 9CCCC 800AE4BC 00488848 */  mtc2       $t0, $9 /* handwritten instruction */
    /* 9CCD0 800AE4C0 00508948 */  mtc2       $t1, $10 /* handwritten instruction */
    /* 9CCD4 800AE4C4 00588A48 */  mtc2       $t2, $11 /* handwritten instruction */
    /* 9CCD8 800AE4C8 00000000 */  nop
    /* 9CCDC 800AE4CC 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* 9CCE0 800AE4D0 05006105 */  bgez       $t3, .L800AE4E8
    /* 9CCE4 800AE4D4 00000000 */   nop
    /* 9CCE8 800AE4D8 23580B00 */  negu       $t3, $t3
    /* 9CCEC 800AE4DC C0580B00 */  sll        $t3, $t3, 3
    /* 9CCF0 800AE4E0 02000010 */  b          .L800AE4EC
    /* 9CCF4 800AE4E4 23580B00 */   negu      $t3, $t3
  .L800AE4E8:
    /* 9CCF8 800AE4E8 C0580B00 */  sll        $t3, $t3, 3
  .L800AE4EC:
    /* 9CCFC 800AE4EC 05008105 */  bgez       $t4, .L800AE504
    /* 9CD00 800AE4F0 00000000 */   nop
    /* 9CD04 800AE4F4 23600C00 */  negu       $t4, $t4
    /* 9CD08 800AE4F8 C0600C00 */  sll        $t4, $t4, 3
    /* 9CD0C 800AE4FC 02000010 */  b          .L800AE508
    /* 9CD10 800AE500 23600C00 */   negu      $t4, $t4
  .L800AE504:
    /* 9CD14 800AE504 C0600C00 */  sll        $t4, $t4, 3
  .L800AE508:
    /* 9CD18 800AE508 0500A105 */  bgez       $t5, .L800AE520
    /* 9CD1C 800AE50C 00000000 */   nop
    /* 9CD20 800AE510 23680D00 */  negu       $t5, $t5
    /* 9CD24 800AE514 C0680D00 */  sll        $t5, $t5, 3
    /* 9CD28 800AE518 02000010 */  b          .L800AE524
    /* 9CD2C 800AE51C 23680D00 */   negu      $t5, $t5
  .L800AE520:
    /* 9CD30 800AE520 C0680D00 */  sll        $t5, $t5, 3
  .L800AE524:
    /* 9CD34 800AE524 00C80848 */  mfc2       $t0, $25 /* handwritten instruction */
    /* 9CD38 800AE528 00D00948 */  mfc2       $t1, $26 /* handwritten instruction */
    /* 9CD3C 800AE52C 00D80A48 */  mfc2       $t2, $27 /* handwritten instruction */
    /* 9CD40 800AE530 21400B01 */  addu       $t0, $t0, $t3
    /* 9CD44 800AE534 21482C01 */  addu       $t1, $t1, $t4
    /* 9CD48 800AE538 21504D01 */  addu       $t2, $t2, $t5
    /* 9CD4C 800AE53C 0000A8AC */  sw         $t0, 0x0($a1)
    /* 9CD50 800AE540 0400A9AC */  sw         $t1, 0x4($a1)
    /* 9CD54 800AE544 0800AAAC */  sw         $t2, 0x8($a1)
    /* 9CD58 800AE548 0800E003 */  jr         $ra
    /* 9CD5C 800AE54C 2110A000 */   addu      $v0, $a1, $zero
    /* 9CD60 800AE550 00000000 */  nop
    /* 9CD64 800AE554 00000000 */  nop
endlabel ApplyRotMatrixLV
