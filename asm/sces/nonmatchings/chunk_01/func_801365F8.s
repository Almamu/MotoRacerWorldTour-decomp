/* Handwritten function */
nonmatching func_801365F8, 0x4C

glabel func_801365F8
    /* 3AC4 801365F8 801F043C */  lui        $a0, (0x1F800004 >> 16)
    /* 3AC8 801365FC 1A80053C */  lui        $a1, %hi(D_8019DB74)
    /* 3ACC 80136600 74DBA524 */  addiu      $a1, $a1, %lo(D_8019DB74)
    /* 3AD0 80136604 D6000834 */  ori        $t0, $zero, 0xD6
  .L80136608:
    /* 3AD4 80136608 0000A990 */  lbu        $t1, 0x0($a1)
    /* 3AD8 8013660C 0100AA90 */  lbu        $t2, 0x1($a1)
    /* 3ADC 80136610 804A0900 */  sll        $t1, $t1, 10
    /* 3AE0 80136614 22580A00 */  neg        $t3, $t2 /* handwritten instruction */
    /* 3AE4 80136618 FF036B31 */  andi       $t3, $t3, 0x3FF
    /* 3AE8 8013661C 25502A01 */  or         $t2, $t1, $t2
    /* 3AEC 80136620 00008AA4 */  sh         $t2, (0x1F800000 & 0xFFFF)($a0)
    /* 3AF0 80136624 25582B01 */  or         $t3, $t1, $t3
    /* 3AF4 80136628 02008BA4 */  sh         $t3, (0x1F800002 & 0xFFFF)($a0)
    /* 3AF8 8013662C 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
    /* 3AFC 80136630 04008420 */  addi       $a0, $a0, (0x1F800004 & 0xFFFF) /* handwritten instruction */
    /* 3B00 80136634 F4FF0105 */  bgez       $t0, .L80136608
    /* 3B04 80136638 FEFF0821 */   addi      $t0, $t0, -0x2 /* handwritten instruction */
    /* 3B08 8013663C 0800E003 */  jr         $ra
    /* 3B0C 80136640 00000000 */   nop
endlabel func_801365F8
