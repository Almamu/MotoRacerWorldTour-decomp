nonmatching memmove, 0x6C

glabel memmove
    /* A5738 800B6F28 21388000 */  addu       $a3, $a0, $zero
    /* A573C 800B6F2C 2B10E500 */  sltu       $v0, $a3, $a1
    /* A5740 800B6F30 0C004014 */  bnez       $v0, .L800B6F64
    /* A5744 800B6F34 2110C000 */   addu      $v0, $a2, $zero
    /* A5748 800B6F38 13004018 */  blez       $v0, .L800B6F88
    /* A574C 800B6F3C FFFFC624 */   addiu     $a2, $a2, -0x1
  .L800B6F40:
    /* A5750 800B6F40 2120E600 */  addu       $a0, $a3, $a2
    /* A5754 800B6F44 2110A600 */  addu       $v0, $a1, $a2
    /* A5758 800B6F48 2118C000 */  addu       $v1, $a2, $zero
    /* A575C 800B6F4C 00004290 */  lbu        $v0, 0x0($v0)
    /* A5760 800B6F50 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* A5764 800B6F54 FAFF601C */  bgtz       $v1, .L800B6F40
    /* A5768 800B6F58 000082A0 */   sb        $v0, 0x0($a0)
    /* A576C 800B6F5C E3DB0208 */  j          .L800B6F8C
    /* A5770 800B6F60 2110E000 */   addu      $v0, $a3, $zero
  .L800B6F64:
    /* A5774 800B6F64 08004018 */  blez       $v0, .L800B6F88
    /* A5778 800B6F68 FFFFC624 */   addiu     $a2, $a2, -0x1
  .L800B6F6C:
    /* A577C 800B6F6C 0000A290 */  lbu        $v0, 0x0($a1)
    /* A5780 800B6F70 0100A524 */  addiu      $a1, $a1, 0x1
    /* A5784 800B6F74 2118C000 */  addu       $v1, $a2, $zero
    /* A5788 800B6F78 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* A578C 800B6F7C 0000E2A0 */  sb         $v0, 0x0($a3)
    /* A5790 800B6F80 FAFF601C */  bgtz       $v1, .L800B6F6C
    /* A5794 800B6F84 0100E724 */   addiu     $a3, $a3, 0x1
  .L800B6F88:
    /* A5798 800B6F88 2110E000 */  addu       $v0, $a3, $zero
  .L800B6F8C:
    /* A579C 800B6F8C 0800E003 */  jr         $ra
    /* A57A0 800B6F90 00000000 */   nop
endlabel memmove
    /* A57A4 800B6F94 00000000 */  nop
