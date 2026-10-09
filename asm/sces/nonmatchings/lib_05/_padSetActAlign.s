nonmatching _padSetActAlign, 0x68

glabel _padSetActAlign
    /* EB00 80141634 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* EB04 80141638 1000B0AF */  sw         $s0, 0x10($sp)
    /* EB08 8014163C 21808000 */  addu       $s0, $a0, $zero
    /* EB0C 80141640 1400B1AF */  sw         $s1, 0x14($sp)
    /* EB10 80141644 1C80023C */  lui        $v0, %hi(D_801BFE78)
    /* EB14 80141648 78FE428C */  lw         $v0, %lo(D_801BFE78)($v0)
    /* EB18 8014164C 1800BFAF */  sw         $ra, 0x18($sp)
    /* EB1C 80141650 09F84000 */  jalr       $v0
    /* EB20 80141654 2188A000 */   addu      $s1, $a1, $zero
    /* EB24 80141658 0B004014 */  bnez       $v0, .L80141688
    /* EB28 8014165C 21100000 */   addu      $v0, $zero, $zero
    /* EB2C 80141660 01000224 */  addiu      $v0, $zero, 0x1
    /* EB30 80141664 01000324 */  addiu      $v1, $zero, 0x1
    /* EB34 80141668 460003A2 */  sb         $v1, 0x46($s0)
    /* EB38 8014166C 1480033C */  lui        $v1, %hi(func_8014169C)
    /* EB3C 80141670 9C166324 */  addiu      $v1, $v1, %lo(func_8014169C)
    /* EB40 80141674 140003AE */  sw         $v1, 0x14($s0)
    /* EB44 80141678 1480033C */  lui        $v1, %hi(func_801416B8)
    /* EB48 8014167C B8166324 */  addiu      $v1, $v1, %lo(func_801416B8)
    /* EB4C 80141680 200011AE */  sw         $s1, 0x20($s0)
    /* EB50 80141684 180003AE */  sw         $v1, 0x18($s0)
  .L80141688:
    /* EB54 80141688 1800BF8F */  lw         $ra, 0x18($sp)
    /* EB58 8014168C 1400B18F */  lw         $s1, 0x14($sp)
    /* EB5C 80141690 1000B08F */  lw         $s0, 0x10($sp)
    /* EB60 80141694 0800E003 */  jr         $ra
    /* EB64 80141698 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel _padSetActAlign
