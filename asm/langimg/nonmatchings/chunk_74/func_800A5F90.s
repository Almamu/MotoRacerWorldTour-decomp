nonmatching func_800A5F90, 0x70

glabel func_800A5F90
    /* 947A0 800A5F90 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 947A4 800A5F94 0F000324 */  addiu      $v1, $zero, 0xF
    /* 947A8 800A5F98 EA970208 */  j          .L800A5FA8
    /* 947AC 800A5F9C 0F00A627 */   addiu     $a2, $sp, 0xF
  .L800A5FA0:
    /* 947B0 800A5FA0 0C00E010 */  beqz       $a3, .L800A5FD4
    /* 947B4 800A5FA4 0F000224 */   addiu     $v0, $zero, 0xF
  .L800A5FA8:
    /* 947B8 800A5FA8 0A000824 */  addiu      $t0, $zero, 0xA
    /* 947BC 800A5FAC 1A00A800 */  div        $zero, $a1, $t0
    /* 947C0 800A5FB0 12380000 */  mflo       $a3
    /* 947C4 800A5FB4 2128E000 */  addu       $a1, $a3, $zero
    /* 947C8 800A5FB8 10100000 */  mfhi       $v0
    /* 947CC 800A5FBC 30004224 */  addiu      $v0, $v0, 0x30
    /* 947D0 800A5FC0 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 947D4 800A5FC4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 947D8 800A5FC8 F5FF6014 */  bnez       $v1, .L800A5FA0
    /* 947DC 800A5FCC FFFFC624 */   addiu     $a2, $a2, -0x1
    /* 947E0 800A5FD0 0F000224 */  addiu      $v0, $zero, 0xF
  .L800A5FD4:
    /* 947E4 800A5FD4 23184300 */  subu       $v1, $v0, $v1
  .L800A5FD8:
    /* 947E8 800A5FD8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 947EC 800A5FDC 0000C290 */  lbu        $v0, 0x0($a2)
    /* 947F0 800A5FE0 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 947F4 800A5FE4 000082A0 */  sb         $v0, 0x0($a0)
    /* 947F8 800A5FE8 FBFF6014 */  bnez       $v1, .L800A5FD8
    /* 947FC 800A5FEC 01008424 */   addiu     $a0, $a0, 0x1
    /* 94800 800A5FF0 000080A0 */  sb         $zero, 0x0($a0)
    /* 94804 800A5FF4 21108000 */  addu       $v0, $a0, $zero
    /* 94808 800A5FF8 0800E003 */  jr         $ra
    /* 9480C 800A5FFC 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_800A5F90
