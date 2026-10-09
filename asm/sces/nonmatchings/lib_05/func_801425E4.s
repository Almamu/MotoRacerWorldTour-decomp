nonmatching func_801425E4, 0x20

glabel func_801425E4
    /* FAB0 801425E4 1D80023C */  lui        $v0, %hi(D_801CE840)
    /* FAB4 801425E8 40E84224 */  addiu      $v0, $v0, %lo(D_801CE840)
    /* FAB8 801425EC F0008430 */  andi       $a0, $a0, 0xF0
    /* FABC 801425F0 02008010 */  beqz       $a0, .L801425FC
    /* FAC0 801425F4 00000000 */   nop
    /* FAC4 801425F8 F0004224 */  addiu      $v0, $v0, 0xF0
  .L801425FC:
    /* FAC8 801425FC 0800E003 */  jr         $ra
    /* FACC 80142600 00000000 */   nop
endlabel func_801425E4
    /* FAD0 80142604 00000000 */  nop
