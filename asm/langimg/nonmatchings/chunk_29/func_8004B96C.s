nonmatching func_8004B96C, 0x98

glabel func_8004B96C
    /* 3A17C 8004B96C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3A180 8004B970 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3A184 8004B974 0D80103C */  lui        $s0, %hi(D_800D4798)
    /* 3A188 8004B978 98471026 */  addiu      $s0, $s0, %lo(D_800D4798)
    /* 3A18C 8004B97C 80100400 */  sll        $v0, $a0, 2
    /* 3A190 8004B980 0D80033C */  lui        $v1, %hi(D_800C9E94)
    /* 3A194 8004B984 949E6324 */  addiu      $v1, $v1, %lo(D_800C9E94)
    /* 3A198 8004B988 21104300 */  addu       $v0, $v0, $v1
    /* 3A19C 8004B98C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3A1A0 8004B990 0000458C */  lw         $a1, 0x0($v0)
    /* 3A1A4 8004B994 0C80063C */  lui        $a2, %hi(D_800C6444)
    /* 3A1A8 8004B998 0D800A3C */  lui        $t2, %hi(D_800D4798)
    /* 3A1AC 8004B99C 98474A25 */  addiu      $t2, $t2, %lo(D_800D4798)
    /* 3A1B0 8004B9A0 4464C924 */  addiu      $t1, $a2, %lo(D_800C6444)
    /* 3A1B4 8004B9A4 03002789 */  lwl        $a3, 0x3($t1)
    /* 3A1B8 8004B9A8 00002799 */  lwr        $a3, 0x0($t1)
    /* 3A1BC 8004B9AC 07002889 */  lwl        $t0, 0x7($t1)
    /* 3A1C0 8004B9B0 04002899 */  lwr        $t0, 0x4($t1)
    /* 3A1C4 8004B9B4 030047A9 */  swl        $a3, 0x3($t2)
    /* 3A1C8 8004B9B8 000047B9 */  swr        $a3, 0x0($t2)
    /* 3A1CC 8004B9BC 070048A9 */  swl        $t0, 0x7($t2)
    /* 3A1D0 8004B9C0 040048B9 */  swr        $t0, 0x4($t2)
    /* 3A1D4 8004B9C4 0B002789 */  lwl        $a3, 0xB($t1)
    /* 3A1D8 8004B9C8 08002799 */  lwr        $a3, 0x8($t1)
    /* 3A1DC 8004B9CC 00000000 */  nop
    /* 3A1E0 8004B9D0 0B0047A9 */  swl        $a3, 0xB($t2)
    /* 3A1E4 8004B9D4 080047B9 */  swr        $a3, 0x8($t2)
    /* 3A1E8 8004B9D8 D2D8020C */  jal        func_800B6348
    /* 3A1EC 8004B9DC 21200002 */   addu      $a0, $s0, $zero
    /* 3A1F0 8004B9E0 21200002 */  addu       $a0, $s0, $zero
    /* 3A1F4 8004B9E4 0C80053C */  lui        $a1, %hi(D_800C6450)
    /* 3A1F8 8004B9E8 D2D8020C */  jal        func_800B6348
    /* 3A1FC 8004B9EC 5064A524 */   addiu     $a1, $a1, %lo(D_800C6450)
    /* 3A200 8004B9F0 21100002 */  addu       $v0, $s0, $zero
    /* 3A204 8004B9F4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3A208 8004B9F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 3A20C 8004B9FC 0800E003 */  jr         $ra
    /* 3A210 8004BA00 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8004B96C
