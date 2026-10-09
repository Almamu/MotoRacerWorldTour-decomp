/* Handwritten function */
nonmatching func_800A6FA0, 0x94

glabel func_800A6FA0
    /* 957B0 800A6FA0 C2470400 */  srl        $t0, $a0, 31
    /* 957B4 800A6FA4 02000011 */  beqz       $t0, .L800A6FB0
    /* 957B8 800A6FA8 C24F0600 */   srl       $t1, $a2, 31
    /* 957BC 800A6FAC 22200400 */  neg        $a0, $a0 /* handwritten instruction */
  .L800A6FB0:
    /* 957C0 800A6FB0 02002011 */  beqz       $t1, .L800A6FBC
    /* 957C4 800A6FB4 00000000 */   nop
    /* 957C8 800A6FB8 22300600 */  neg        $a2, $a2 /* handwritten instruction */
  .L800A6FBC:
    /* 957CC 800A6FBC 00000000 */  nop
    /* 957D0 800A6FC0 00000000 */  nop
    /* 957D4 800A6FC4 18008500 */  mult       $a0, $a1
    /* 957D8 800A6FC8 12280000 */  mflo       $a1
    /* 957DC 800A6FCC F59B0208 */  j          .L800A6FD4
    /* 957E0 800A6FD0 10200000 */   mfhi      $a0
  .L800A6FD4:
    /* 957E4 800A6FD4 FFFF0120 */  addi       $at, $zero, -0x1 /* handwritten instruction */
    /* 957E8 800A6FD8 1B002600 */  divu       $zero, $at, $a2
    /* 957EC 800A6FDC 10080000 */  mfhi       $at
    /* 957F0 800A6FE0 12C00000 */  mflo       $t8
    /* 957F4 800A6FE4 21788000 */  addu       $t7, $a0, $zero
    /* 957F8 800A6FE8 00000000 */  nop
    /* 957FC 800A6FEC 00000000 */  nop
    /* 95800 800A6FF0 19000F03 */  multu      $t8, $t7
    /* 95804 800A6FF4 12C00000 */  mflo       $t8
    /* 95808 800A6FF8 00000000 */  nop
    /* 9580C 800A6FFC 00000000 */  nop
    /* 95810 800A7000 19003800 */  multu      $at, $t8
    /* 95814 800A7004 10080000 */  mfhi       $at
    /* 95818 800A7008 00000000 */  nop
    /* 9581C 800A700C 00000000 */  nop
    /* 95820 800A7010 1B00A600 */  divu       $zero, $a1, $a2
    /* 95824 800A7014 20C00103 */  add        $t8, $t8, $at /* handwritten instruction */
    /* 95828 800A7018 26400901 */  xor        $t0, $t0, $t1
    /* 9582C 800A701C 12100000 */  mflo       $v0
    /* 95830 800A7020 02000011 */  beqz       $t0, .L800A702C
    /* 95834 800A7024 20105800 */   add       $v0, $v0, $t8 /* handwritten instruction */
    /* 95838 800A7028 22100200 */  neg        $v0, $v0 /* handwritten instruction */
  .L800A702C:
    /* 9583C 800A702C 0800E003 */  jr         $ra
    /* 95840 800A7030 00000000 */   nop
endlabel func_800A6FA0
