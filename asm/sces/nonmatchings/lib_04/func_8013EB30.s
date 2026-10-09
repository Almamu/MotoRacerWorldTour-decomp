nonmatching func_8013EB30, 0xC4

glabel func_8013EB30
    /* BFFC 8013EB30 1C80023C */  lui        $v0, %hi(D_801BFD98)
    /* C000 8013EB34 98FD428C */  lw         $v0, %lo(D_801BFD98)($v0)
    /* C004 8013EB38 00000000 */  nop
    /* C008 8013EB3C 03004014 */  bnez       $v0, .L8013EB4C
    /* C00C 8013EB40 1D80023C */   lui       $v0, %hi(D_801CE6C0)
    /* C010 8013EB44 0800E003 */  jr         $ra
    /* C014 8013EB48 21100000 */   addu      $v0, $zero, $zero
  .L8013EB4C:
    /* C018 8013EB4C C0E640AC */  sw         $zero, %lo(D_801CE6C0)($v0)
    /* C01C 8013EB50 21200000 */  addu       $a0, $zero, $zero
    /* C020 8013EB54 C0E64624 */  addiu      $a2, $v0, %lo(D_801CE6C0)
    /* C024 8013EB58 1D80023C */  lui        $v0, %hi(D_801CE6E8)
    /* C028 8013EB5C E8E64524 */  addiu      $a1, $v0, %lo(D_801CE6E8)
  .L8013EB60:
    /* C02C 8013EB60 21108600 */  addu       $v0, $a0, $a2
    /* C030 8013EB64 21188500 */  addu       $v1, $a0, $a1
    /* C034 8013EB68 01008424 */  addiu      $a0, $a0, 0x1
    /* C038 8013EB6C 040040A0 */  sb         $zero, 0x4($v0)
    /* C03C 8013EB70 02008228 */  slti       $v0, $a0, 0x2
    /* C040 8013EB74 FAFF4014 */  bnez       $v0, .L8013EB60
    /* C044 8013EB78 040060A0 */   sb        $zero, 0x4($v1)
    /* C048 8013EB7C 1D80023C */  lui        $v0, %hi(D_801CE678)
    /* C04C 8013EB80 78E64380 */  lb         $v1, %lo(D_801CE678)($v0)
    /* C050 8013EB84 00000000 */  nop
    /* C054 8013EB88 0A006014 */  bnez       $v1, .L8013EBB4
    /* C058 8013EB8C 78E64424 */   addiu     $a0, $v0, %lo(D_801CE678)
    /* C05C 8013EB90 1D80023C */  lui        $v0, %hi(D_801CE6C0)
    /* C060 8013EB94 C0E6438C */  lw         $v1, %lo(D_801CE6C0)($v0)
    /* C064 8013EB98 00000000 */  nop
    /* C068 8013EB9C 01006324 */  addiu      $v1, $v1, 0x1
    /* C06C 8013EBA0 C0E643AC */  sw         $v1, %lo(D_801CE6C0)($v0)
    /* C070 8013EBA4 01008390 */  lbu        $v1, 0x1($a0)
    /* C074 8013EBA8 C0E64224 */  addiu      $v0, $v0, %lo(D_801CE6C0)
    /* C078 8013EBAC 02190300 */  srl        $v1, $v1, 4
    /* C07C 8013EBB0 040043A0 */  sb         $v1, 0x4($v0)
  .L8013EBB4:
    /* C080 8013EBB4 22008280 */  lb         $v0, 0x22($a0)
    /* C084 8013EBB8 00000000 */  nop
    /* C088 8013EBBC 0A004014 */  bnez       $v0, .L8013EBE8
    /* C08C 8013EBC0 00000000 */   nop
    /* C090 8013EBC4 1D80023C */  lui        $v0, %hi(D_801CE6C0)
    /* C094 8013EBC8 C0E6438C */  lw         $v1, %lo(D_801CE6C0)($v0)
    /* C098 8013EBCC 00000000 */  nop
    /* C09C 8013EBD0 01006324 */  addiu      $v1, $v1, 0x1
    /* C0A0 8013EBD4 C0E643AC */  sw         $v1, %lo(D_801CE6C0)($v0)
    /* C0A4 8013EBD8 23008390 */  lbu        $v1, 0x23($a0)
    /* C0A8 8013EBDC C0E64224 */  addiu      $v0, $v0, %lo(D_801CE6C0)
    /* C0AC 8013EBE0 02190300 */  srl        $v1, $v1, 4
    /* C0B0 8013EBE4 050043A0 */  sb         $v1, 0x5($v0)
  .L8013EBE8:
    /* C0B4 8013EBE8 1D80023C */  lui        $v0, %hi(D_801CE6C0)
    /* C0B8 8013EBEC 0800E003 */  jr         $ra
    /* C0BC 8013EBF0 C0E64224 */   addiu     $v0, $v0, %lo(D_801CE6C0)
endlabel func_8013EB30
