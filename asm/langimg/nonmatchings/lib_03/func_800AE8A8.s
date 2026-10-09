nonmatching func_800AE8A8, 0xBC

glabel func_800AE8A8
    /* 9D0B8 800AE8A8 0C80023C */  lui        $v0, %hi(D_800C3BB0)
    /* 9D0BC 800AE8AC B03B438C */  lw         $v1, %lo(D_800C3BB0)($v0)
    /* 9D0C0 800AE8B0 00000000 */  nop
    /* 9D0C4 800AE8B4 03006014 */  bnez       $v1, .L800AE8C4
    /* 9D0C8 800AE8B8 0E80063C */   lui       $a2, %hi(D_800DE340)
    /* 9D0CC 800AE8BC 0800E003 */  jr         $ra
    /* 9D0D0 800AE8C0 21100000 */   addu      $v0, $zero, $zero
  .L800AE8C4:
    /* 9D0D4 800AE8C4 40E3C0AC */  sw         $zero, %lo(D_800DE340)($a2)
    /* 9D0D8 800AE8C8 21280000 */  addu       $a1, $zero, $zero
    /* 9D0DC 800AE8CC 0E80023C */  lui        $v0, %hi(D_800DE344)
    /* 9D0E0 800AE8D0 44E34824 */  addiu      $t0, $v0, %lo(D_800DE344)
    /* 9D0E4 800AE8D4 0E80033C */  lui        $v1, %hi(D_800DE36C)
    /* 9D0E8 800AE8D8 6CE36724 */  addiu      $a3, $v1, %lo(D_800DE36C)
  .L800AE8DC:
    /* 9D0EC 800AE8DC 2110A800 */  addu       $v0, $a1, $t0
    /* 9D0F0 800AE8E0 2120A700 */  addu       $a0, $a1, $a3
    /* 9D0F4 800AE8E4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 9D0F8 800AE8E8 0200A328 */  slti       $v1, $a1, 0x2
    /* 9D0FC 800AE8EC 000040A0 */  sb         $zero, 0x0($v0)
    /* 9D100 800AE8F0 FAFF6014 */  bnez       $v1, .L800AE8DC
    /* 9D104 800AE8F4 000080A0 */   sb        $zero, 0x0($a0)
    /* 9D108 800AE8F8 0E80023C */  lui        $v0, %hi(D_800DE2F8)
    /* 9D10C 800AE8FC F8E24380 */  lb         $v1, %lo(D_800DE2F8)($v0)
    /* 9D110 800AE900 00000000 */  nop
    /* 9D114 800AE904 09006014 */  bnez       $v1, .L800AE92C
    /* 9D118 800AE908 F8E24524 */   addiu     $a1, $v0, %lo(D_800DE2F8)
    /* 9D11C 800AE90C 40E3C28C */  lw         $v0, %lo(D_800DE340)($a2)
    /* 9D120 800AE910 00000000 */  nop
    /* 9D124 800AE914 01004224 */  addiu      $v0, $v0, 0x1
    /* 9D128 800AE918 40E3C2AC */  sw         $v0, %lo(D_800DE340)($a2)
    /* 9D12C 800AE91C 0100A390 */  lbu        $v1, 0x1($a1)
    /* 9D130 800AE920 40E3C424 */  addiu      $a0, $a2, %lo(D_800DE340)
    /* 9D134 800AE924 02190300 */  srl        $v1, $v1, 4
    /* 9D138 800AE928 040083A0 */  sb         $v1, 0x4($a0)
  .L800AE92C:
    /* 9D13C 800AE92C 2200A280 */  lb         $v0, 0x22($a1)
    /* 9D140 800AE930 00000000 */  nop
    /* 9D144 800AE934 09004014 */  bnez       $v0, .L800AE95C
    /* 9D148 800AE938 40E3C424 */   addiu     $a0, $a2, %lo(D_800DE340)
    /* 9D14C 800AE93C 40E3C28C */  lw         $v0, %lo(D_800DE340)($a2)
    /* 9D150 800AE940 00000000 */  nop
    /* 9D154 800AE944 01004224 */  addiu      $v0, $v0, 0x1
    /* 9D158 800AE948 40E3C2AC */  sw         $v0, %lo(D_800DE340)($a2)
    /* 9D15C 800AE94C 2300A390 */  lbu        $v1, 0x23($a1)
    /* 9D160 800AE950 00000000 */  nop
    /* 9D164 800AE954 02190300 */  srl        $v1, $v1, 4
    /* 9D168 800AE958 050083A0 */  sb         $v1, 0x5($a0)
  .L800AE95C:
    /* 9D16C 800AE95C 0800E003 */  jr         $ra
    /* 9D170 800AE960 40E3C224 */   addiu     $v0, $a2, %lo(D_800DE340)
endlabel func_800AE8A8
