nonmatching SsVabOpenHead, 0xA0

glabel SsVabOpenHead
    /* 16EA4 801499D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 16EA8 801499DC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 16EAC 801499E0 002C0500 */  sll        $a1, $a1, 16
    /* 16EB0 801499E4 032C0500 */  sra        $a1, $a1, 16
    /* 16EB4 801499E8 1580063C */  lui        $a2, %hi(SsVabOpenHead + 0x34)
    /* 16EB8 801499EC 0C9AC624 */  addiu      $a2, $a2, %lo(SsVabOpenHead + 0x34)
    /* 16EBC 801499F0 5227050C */  jal        _SsVabOpenHeadWithMode
    /* 16EC0 801499F4 21380000 */   addu      $a3, $zero, $zero
    /* 16EC4 801499F8 00140200 */  sll        $v0, $v0, 16
    /* 16EC8 801499FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 16ECC 80149A00 03140200 */  sra        $v0, $v0, 16
    /* 16ED0 80149A04 0800E003 */  jr         $ra
    /* 16ED4 80149A08 1800BD27 */   addiu     $sp, $sp, 0x18
    /* 16ED8 80149A0C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 16EDC 80149A10 1000B0AF */  sw         $s0, 0x10($sp)
    /* 16EE0 80149A14 1400BFAF */  sw         $ra, 0x14($sp)
    /* 16EE4 80149A18 9E26050C */  jal        SpuMalloc
    /* 16EE8 80149A1C 2180C000 */   addu      $s0, $a2, $zero
    /* 16EEC 80149A20 21184000 */  addu       $v1, $v0, $zero
    /* 16EF0 80149A24 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 16EF4 80149A28 0E006214 */  bne        $v1, $v0, .L80149A64
    /* 16EF8 80149A2C 21106000 */   addu      $v0, $v1, $zero
    /* 16EFC 80149A30 00141000 */  sll        $v0, $s0, 16
    /* 16F00 80149A34 03140200 */  sra        $v0, $v0, 16
    /* 16F04 80149A38 1D80013C */  lui        $at, %hi(_svm_vab_used)
    /* 16F08 80149A3C 21082200 */  addu       $at, $at, $v0
    /* 16F0C 80149A40 D0FB20A0 */  sb         $zero, %lo(_svm_vab_used)($at)
    /* 16F10 80149A44 5120050C */  jal        _spu_setInTransfer
    /* 16F14 80149A48 21200000 */   addu      $a0, $zero, $zero
    /* 16F18 80149A4C 1D80033C */  lui        $v1, %hi(_svm_vab_count)
    /* 16F1C 80149A50 28FC6394 */  lhu        $v1, %lo(_svm_vab_count)($v1)
    /* 16F20 80149A54 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 16F24 80149A58 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 16F28 80149A5C 1D80013C */  lui        $at, %hi(_svm_vab_count)
    /* 16F2C 80149A60 28FC23A4 */  sh         $v1, %lo(_svm_vab_count)($at)
  .L80149A64:
    /* 16F30 80149A64 1400BF8F */  lw         $ra, 0x14($sp)
    /* 16F34 80149A68 1000B08F */  lw         $s0, 0x10($sp)
    /* 16F38 80149A6C 0800E003 */  jr         $ra
    /* 16F3C 80149A70 1800BD27 */   addiu     $sp, $sp, 0x18
    /* 16F40 80149A74 00000000 */  nop
endlabel SsVabOpenHead
