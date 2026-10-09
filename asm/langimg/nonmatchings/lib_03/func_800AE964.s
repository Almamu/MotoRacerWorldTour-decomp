nonmatching func_800AE964, 0x68

glabel func_800AE964
    /* 9D174 800AE964 0C80023C */  lui        $v0, %hi(D_800C3BB0)
    /* 9D178 800AE968 B03B438C */  lw         $v1, %lo(D_800C3BB0)($v0)
    /* 9D17C 800AE96C 00000000 */  nop
    /* 9D180 800AE970 03006014 */  bnez       $v1, .L800AE980
    /* 9D184 800AE974 21308000 */   addu      $a2, $a0, $zero
    /* 9D188 800AE978 0800E003 */  jr         $ra
    /* 9D18C 800AE97C 21100000 */   addu      $v0, $zero, $zero
  .L800AE980:
    /* 9D190 800AE980 0E80023C */  lui        $v0, %hi(D_800DE340)
    /* 9D194 800AE984 40E34724 */  addiu      $a3, $v0, %lo(D_800DE340)
    /* 9D198 800AE988 0400E524 */  addiu      $a1, $a3, 0x4
    /* 9D19C 800AE98C 0E80033C */  lui        $v1, %hi(D_800DE2F8)
    /* 9D1A0 800AE990 F8E26324 */  addiu      $v1, $v1, %lo(D_800DE2F8)
    /* 9D1A4 800AE994 00110600 */  sll        $v0, $a2, 4
    /* 9D1A8 800AE998 21104600 */  addu       $v0, $v0, $a2
    /* 9D1AC 800AE99C 40100200 */  sll        $v0, $v0, 1
    /* 9D1B0 800AE9A0 21104300 */  addu       $v0, $v0, $v1
    /* 9D1B4 800AE9A4 00004480 */  lb         $a0, 0x0($v0)
    /* 9D1B8 800AE9A8 2118C500 */  addu       $v1, $a2, $a1
    /* 9D1BC 800AE9AC 05008014 */  bnez       $a0, .L800AE9C4
    /* 9D1C0 800AE9B0 000060A0 */   sb        $zero, 0x0($v1)
    /* 9D1C4 800AE9B4 01004290 */  lbu        $v0, 0x1($v0)
    /* 9D1C8 800AE9B8 00000000 */  nop
    /* 9D1CC 800AE9BC 02110200 */  srl        $v0, $v0, 4
    /* 9D1D0 800AE9C0 000062A0 */  sb         $v0, 0x0($v1)
  .L800AE9C4:
    /* 9D1D4 800AE9C4 0800E003 */  jr         $ra
    /* 9D1D8 800AE9C8 2110E000 */   addu      $v0, $a3, $zero
endlabel func_800AE964
