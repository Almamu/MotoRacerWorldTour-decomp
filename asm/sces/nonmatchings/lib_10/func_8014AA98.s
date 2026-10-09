nonmatching func_8014AA98, 0x74

glabel func_8014AA98
    /* 17F64 8014AA98 21380000 */  addu       $a3, $zero, $zero
    /* 17F68 8014AA9C FCFF0824 */  addiu      $t0, $zero, -0x4
    /* 17F6C 8014AAA0 1D80023C */  lui        $v0, %hi(D_801CFD88)
    /* 17F70 8014AAA4 88FD468C */  lw         $a2, %lo(D_801CFD88)($v0)
    /* 17F74 8014AAA8 1580023C */  lui        $v0, %hi(D_8014D478)
    /* 17F78 8014AAAC 78D4438C */  lw         $v1, %lo(D_8014D478)($v0)
    /* 17F7C 8014AAB0 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* 17F80 8014AAB4 21186200 */  addu       $v1, $v1, $v0
  .L8014AAB8:
    /* 17F84 8014AAB8 0400C58C */  lw         $a1, 0x4($a2)
    /* 17F88 8014AABC 00000000 */  nop
    /* 17F8C 8014AAC0 0100A230 */  andi       $v0, $a1, 0x1
    /* 17F90 8014AAC4 05004014 */  bnez       $v0, .L8014AADC
    /* 17F94 8014AAC8 2420A800 */   and       $a0, $a1, $t0
    /* 17F98 8014AACC 2B10E400 */  sltu       $v0, $a3, $a0
    /* 17F9C 8014AAD0 03004010 */  beqz       $v0, .L8014AAE0
    /* 17FA0 8014AAD4 0200A230 */   andi      $v0, $a1, 0x2
    /* 17FA4 8014AAD8 F8FF8724 */  addiu      $a3, $a0, -0x8
  .L8014AADC:
    /* 17FA8 8014AADC 0200A230 */  andi       $v0, $a1, 0x2
  .L8014AAE0:
    /* 17FAC 8014AAE0 04004014 */  bnez       $v0, .L8014AAF4
    /* 17FB0 8014AAE4 2130C400 */   addu      $a2, $a2, $a0
    /* 17FB4 8014AAE8 2B10C300 */  sltu       $v0, $a2, $v1
    /* 17FB8 8014AAEC F2FF4014 */  bnez       $v0, .L8014AAB8
    /* 17FBC 8014AAF0 00000000 */   nop
  .L8014AAF4:
    /* 17FC0 8014AAF4 2B106600 */  sltu       $v0, $v1, $a2
    /* 17FC4 8014AAF8 02004010 */  beqz       $v0, .L8014AB04
    /* 17FC8 8014AAFC 00000000 */   nop
    /* 17FCC 8014AB00 21380000 */  addu       $a3, $zero, $zero
  .L8014AB04:
    /* 17FD0 8014AB04 0800E003 */  jr         $ra
    /* 17FD4 8014AB08 2110E000 */   addu      $v0, $a3, $zero
endlabel func_8014AA98
