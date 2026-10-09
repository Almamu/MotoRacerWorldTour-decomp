nonmatching strlen, 0x40

glabel strlen
    /* A4CC8 800B64B8 21180000 */  addu       $v1, $zero, $zero
    /* A4CCC 800B64BC 09008010 */  beqz       $a0, .L800B64E4
    /* A4CD0 800B64C0 21100000 */   addu      $v0, $zero, $zero
    /* A4CD4 800B64C4 34D90208 */  j          .L800B64D0
    /* A4CD8 800B64C8 00000000 */   nop
  .L800B64CC:
    /* A4CDC 800B64CC 01006324 */  addiu      $v1, $v1, 0x1
  .L800B64D0:
    /* A4CE0 800B64D0 00008280 */  lb         $v0, 0x0($a0)
    /* A4CE4 800B64D4 00000000 */  nop
    /* A4CE8 800B64D8 FCFF4014 */  bnez       $v0, .L800B64CC
    /* A4CEC 800B64DC 01008424 */   addiu     $a0, $a0, 0x1
    /* A4CF0 800B64E0 21106000 */  addu       $v0, $v1, $zero
  .L800B64E4:
    /* A4CF4 800B64E4 0800E003 */  jr         $ra
    /* A4CF8 800B64E8 00000000 */   nop
    /* A4CFC 800B64EC 00000000 */  nop
    /* A4D00 800B64F0 00000000 */  nop
    /* A4D04 800B64F4 00000000 */  nop
endlabel strlen
