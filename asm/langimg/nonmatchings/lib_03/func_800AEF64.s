nonmatching func_800AEF64, 0x70

glabel func_800AEF64
    /* 9D774 800AEF64 0E80013C */  lui        $at, %hi(D_800DE388)
    /* 9D778 800AEF68 88E33FAC */  sw         $ra, %lo(D_800DE388)($at)
    /* 9D77C 800AEF6C E0D6020C */  jal        func_800B5B80
    /* 9D780 800AEF70 00000000 */   nop
    /* 9D784 800AEF74 56000924 */  addiu      $t1, $zero, 0x56
    /* 9D788 800AEF78 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 9D78C 800AEF7C 09F84001 */  jalr       $t2
    /* 9D790 800AEF80 00000000 */   nop
    /* 9D794 800AEF84 1800428C */  lw         $v0, 0x18($v0)
    /* 9D798 800AEF88 0B800A3C */  lui        $t2, %hi(D_800AEFD4)
    /* 9D79C 800AEF8C D4EF4A25 */  addiu      $t2, $t2, %lo(D_800AEFD4)
    /* 9D7A0 800AEF90 0B80093C */  lui        $t1, %hi(D_800AEFE0)
    /* 9D7A4 800AEF94 E0EF2925 */  addiu      $t1, $t1, %lo(D_800AEFE0)
  .L800AEF98:
    /* 9D7A8 800AEF98 0000438D */  lw         $v1, 0x0($t2)
    /* 9D7AC 800AEF9C 00000000 */  nop
    /* 9D7B0 800AEFA0 700043AC */  sw         $v1, 0x70($v0)
    /* 9D7B4 800AEFA4 04004A25 */  addiu      $t2, $t2, 0x4
    /* 9D7B8 800AEFA8 FBFF4915 */  bne        $t2, $t1, .L800AEF98
    /* 9D7BC 800AEFAC 04004224 */   addiu     $v0, $v0, 0x4
    /* 9D7C0 800AEFB0 A8D6020C */  jal        func_800B5AA0
    /* 9D7C4 800AEFB4 00000000 */   nop
    /* 9D7C8 800AEFB8 E4D6020C */  jal        func_800B5B90
    /* 9D7CC 800AEFBC 00000000 */   nop
    /* 9D7D0 800AEFC0 0E801F3C */  lui        $ra, %hi(D_800DE388)
    /* 9D7D4 800AEFC4 88E3FF8F */  lw         $ra, %lo(D_800DE388)($ra)
    /* 9D7D8 800AEFC8 00000000 */  nop
    /* 9D7DC 800AEFCC 0800E003 */  jr         $ra
    /* 9D7E0 800AEFD0 00000000 */   nop
endlabel func_800AEF64
  alabel D_800AEFD4
    /* 9D7E4 800AEFD4 00000000 */  nop
    /* 9D7E8 800AEFD8 00000000 */  nop
    /* 9D7EC 800AEFDC 00000000 */  nop
  alabel D_800AEFE0
    /* 9D7F0 800AEFE0 00000000 */  nop
