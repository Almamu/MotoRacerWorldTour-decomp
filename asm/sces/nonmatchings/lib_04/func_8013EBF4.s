nonmatching func_8013EBF4, 0x68

glabel func_8013EBF4
    /* C0C0 8013EBF4 1C80023C */  lui        $v0, %hi(D_801BFD98)
    /* C0C4 8013EBF8 98FD428C */  lw         $v0, %lo(D_801BFD98)($v0)
    /* C0C8 8013EBFC 00000000 */  nop
    /* C0CC 8013EC00 03004014 */  bnez       $v0, .L8013EC10
    /* C0D0 8013EC04 1D80023C */   lui       $v0, %hi(D_801CE6C0)
    /* C0D4 8013EC08 0800E003 */  jr         $ra
    /* C0D8 8013EC0C 21100000 */   addu      $v0, $zero, $zero
  .L8013EC10:
    /* C0DC 8013EC10 C0E64624 */  addiu      $a2, $v0, %lo(D_801CE6C0)
    /* C0E0 8013EC14 21288600 */  addu       $a1, $a0, $a2
    /* C0E4 8013EC18 1D80033C */  lui        $v1, %hi(D_801CE678)
    /* C0E8 8013EC1C 78E66324 */  addiu      $v1, $v1, %lo(D_801CE678)
    /* C0EC 8013EC20 00110400 */  sll        $v0, $a0, 4
    /* C0F0 8013EC24 21104400 */  addu       $v0, $v0, $a0
    /* C0F4 8013EC28 40100200 */  sll        $v0, $v0, 1
    /* C0F8 8013EC2C 21184300 */  addu       $v1, $v0, $v1
    /* C0FC 8013EC30 0400A0A0 */  sb         $zero, 0x4($a1)
    /* C100 8013EC34 00006280 */  lb         $v0, 0x0($v1)
    /* C104 8013EC38 00000000 */  nop
    /* C108 8013EC3C 05004014 */  bnez       $v0, .L8013EC54
    /* C10C 8013EC40 00000000 */   nop
    /* C110 8013EC44 01006290 */  lbu        $v0, 0x1($v1)
    /* C114 8013EC48 00000000 */  nop
    /* C118 8013EC4C 02110200 */  srl        $v0, $v0, 4
    /* C11C 8013EC50 0400A2A0 */  sb         $v0, 0x4($a1)
  .L8013EC54:
    /* C120 8013EC54 0800E003 */  jr         $ra
    /* C124 8013EC58 2110C000 */   addu      $v0, $a2, $zero
endlabel func_8013EBF4
