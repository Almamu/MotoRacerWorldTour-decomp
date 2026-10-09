/* Handwritten function */
nonmatching func_800A6A4C, 0x4C

glabel func_800A6A4C
    /* 9525C 800A6A4C 801F043C */  lui        $a0, (0x1F800004 >> 16)
    /* 95260 800A6A50 0C80053C */  lui        $a1, %hi(D_800BCE44)
    /* 95264 800A6A54 44CEA524 */  addiu      $a1, $a1, %lo(D_800BCE44)
    /* 95268 800A6A58 D6000834 */  ori        $t0, $zero, 0xD6
  .L800A6A5C:
    /* 9526C 800A6A5C 0000A990 */  lbu        $t1, 0x0($a1)
    /* 95270 800A6A60 0100AA90 */  lbu        $t2, 0x1($a1)
    /* 95274 800A6A64 804A0900 */  sll        $t1, $t1, 10
    /* 95278 800A6A68 22580A00 */  neg        $t3, $t2 /* handwritten instruction */
    /* 9527C 800A6A6C FF036B31 */  andi       $t3, $t3, 0x3FF
    /* 95280 800A6A70 25502A01 */  or         $t2, $t1, $t2
    /* 95284 800A6A74 00008AA4 */  sh         $t2, (0x1F800000 & 0xFFFF)($a0)
    /* 95288 800A6A78 25582B01 */  or         $t3, $t1, $t3
    /* 9528C 800A6A7C 02008BA4 */  sh         $t3, (0x1F800002 & 0xFFFF)($a0)
    /* 95290 800A6A80 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
    /* 95294 800A6A84 04008420 */  addi       $a0, $a0, (0x1F800004 & 0xFFFF) /* handwritten instruction */
    /* 95298 800A6A88 F4FF0105 */  bgez       $t0, .L800A6A5C
    /* 9529C 800A6A8C FEFF0821 */   addi      $t0, $t0, -0x2 /* handwritten instruction */
    /* 952A0 800A6A90 0800E003 */  jr         $ra
    /* 952A4 800A6A94 00000000 */   nop
endlabel func_800A6A4C
