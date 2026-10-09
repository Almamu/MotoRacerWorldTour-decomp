nonmatching func_801425AC, 0x38

glabel func_801425AC
    /* FA78 801425AC 21280000 */  addu       $a1, $zero, $zero
    /* FA7C 801425B0 10000624 */  addiu      $a2, $zero, 0x10
    /* FA80 801425B4 1D80033C */  lui        $v1, %hi(D_801CE840)
    /* FA84 801425B8 40E86324 */  addiu      $v1, $v1, %lo(D_801CE840)
  .L801425BC:
    /* FA88 801425BC 07008310 */  beq        $a0, $v1, .L801425DC
    /* FA8C 801425C0 2110C000 */   addu      $v0, $a2, $zero
    /* FA90 801425C4 1000C624 */  addiu      $a2, $a2, 0x10
    /* FA94 801425C8 0100A524 */  addiu      $a1, $a1, 0x1
    /* FA98 801425CC 0200A228 */  slti       $v0, $a1, 0x2
    /* FA9C 801425D0 FAFF4014 */  bnez       $v0, .L801425BC
    /* FAA0 801425D4 F0006324 */   addiu     $v1, $v1, 0xF0
    /* FAA4 801425D8 FF000224 */  addiu      $v0, $zero, 0xFF
  .L801425DC:
    /* FAA8 801425DC 0800E003 */  jr         $ra
    /* FAAC 801425E0 00000000 */   nop
endlabel func_801425AC
