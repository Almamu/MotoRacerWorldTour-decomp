nonmatching func_800AE9CC, 0x64

glabel func_800AE9CC
    /* 9D1DC 800AE9CC 0C80023C */  lui        $v0, %hi(D_800C3BB0)
    /* 9D1E0 800AE9D0 B03B438C */  lw         $v1, %lo(D_800C3BB0)($v0)
    /* 9D1E4 800AE9D4 00000000 */  nop
    /* 9D1E8 800AE9D8 03006014 */  bnez       $v1, .L800AE9E8
    /* 9D1EC 800AE9DC 0E80043C */   lui       $a0, %hi(D_800DE340)
    /* 9D1F0 800AE9E0 0800E003 */  jr         $ra
    /* 9D1F4 800AE9E4 21100000 */   addu      $v0, $zero, $zero
  .L800AE9E8:
    /* 9D1F8 800AE9E8 0E80023C */  lui        $v0, %hi(D_800DE2F8)
    /* 9D1FC 800AE9EC F8E24380 */  lb         $v1, %lo(D_800DE2F8)($v0)
    /* 9D200 800AE9F0 F8E24524 */  addiu      $a1, $v0, %lo(D_800DE2F8)
    /* 9D204 800AE9F4 03006014 */  bnez       $v1, .L800AEA04
    /* 9D208 800AE9F8 40E380AC */   sw        $zero, %lo(D_800DE340)($a0)
    /* 9D20C 800AE9FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 9D210 800AEA00 40E382AC */  sw         $v0, %lo(D_800DE340)($a0)
  .L800AEA04:
    /* 9D214 800AEA04 2200A280 */  lb         $v0, 0x22($a1)
    /* 9D218 800AEA08 00000000 */  nop
    /* 9D21C 800AEA0C 05004014 */  bnez       $v0, .L800AEA24
    /* 9D220 800AEA10 00000000 */   nop
    /* 9D224 800AEA14 40E3828C */  lw         $v0, %lo(D_800DE340)($a0)
    /* 9D228 800AEA18 00000000 */  nop
    /* 9D22C 800AEA1C 01004224 */  addiu      $v0, $v0, 0x1
    /* 9D230 800AEA20 40E382AC */  sw         $v0, %lo(D_800DE340)($a0)
  .L800AEA24:
    /* 9D234 800AEA24 40E3828C */  lw         $v0, %lo(D_800DE340)($a0)
    /* 9D238 800AEA28 0800E003 */  jr         $ra
    /* 9D23C 800AEA2C 00000000 */   nop
endlabel func_800AE9CC
