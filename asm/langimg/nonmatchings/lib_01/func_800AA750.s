nonmatching func_800AA750, 0x90

glabel func_800AA750
    /* 98F60 800AA750 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 98F64 800AA754 1400B1AF */  sw         $s1, 0x14($sp)
    /* 98F68 800AA758 21888000 */  addu       $s1, $a0, $zero
    /* 98F6C 800AA75C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 98F70 800AA760 1800BFAF */  sw         $ra, 0x18($sp)
    /* 98F74 800AA764 1BAA020C */  jal        func_800AA86C
    /* 98F78 800AA768 2180A000 */   addu      $s0, $a1, $zero
    /* 98F7C 800AA76C 0C80033C */  lui        $v1, %hi(D_800BD4C8)
    /* 98F80 800AA770 C8D4638C */  lw         $v1, %lo(D_800BD4C8)($v1)
    /* 98F84 800AA774 42811000 */  srl        $s0, $s0, 5
    /* 98F88 800AA778 0000628C */  lw         $v0, 0x0($v1)
    /* 98F8C 800AA77C 00841000 */  sll        $s0, $s0, 16
    /* 98F90 800AA780 88004234 */  ori        $v0, $v0, 0x88
    /* 98F94 800AA784 000062AC */  sw         $v0, 0x0($v1)
    /* 98F98 800AA788 0C80033C */  lui        $v1, %hi(D_800BD490)
    /* 98F9C 800AA78C 90D4638C */  lw         $v1, %lo(D_800BD490)($v1)
    /* 98FA0 800AA790 04002226 */  addiu      $v0, $s1, 0x4
    /* 98FA4 800AA794 000062AC */  sw         $v0, 0x0($v1)
    /* 98FA8 800AA798 0C80023C */  lui        $v0, %hi(D_800BD494)
    /* 98FAC 800AA79C 94D4428C */  lw         $v0, %lo(D_800BD494)($v0)
    /* 98FB0 800AA7A0 20001036 */  ori        $s0, $s0, 0x20
    /* 98FB4 800AA7A4 000050AC */  sw         $s0, 0x0($v0)
    /* 98FB8 800AA7A8 0C80033C */  lui        $v1, %hi(D_800BD4C0)
    /* 98FBC 800AA7AC C0D4638C */  lw         $v1, %lo(D_800BD4C0)($v1)
    /* 98FC0 800AA7B0 0000228E */  lw         $v0, 0x0($s1)
    /* 98FC4 800AA7B4 0001043C */  lui        $a0, (0x1000201 >> 16)
    /* 98FC8 800AA7B8 000062AC */  sw         $v0, 0x0($v1)
    /* 98FCC 800AA7BC 0C80023C */  lui        $v0, %hi(D_800BD498)
    /* 98FD0 800AA7C0 98D4428C */  lw         $v0, %lo(D_800BD498)($v0)
    /* 98FD4 800AA7C4 01028434 */  ori        $a0, $a0, (0x1000201 & 0xFFFF)
    /* 98FD8 800AA7C8 000044AC */  sw         $a0, 0x0($v0)
    /* 98FDC 800AA7CC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 98FE0 800AA7D0 1400B18F */  lw         $s1, 0x14($sp)
    /* 98FE4 800AA7D4 1000B08F */  lw         $s0, 0x10($sp)
    /* 98FE8 800AA7D8 0800E003 */  jr         $ra
    /* 98FEC 800AA7DC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AA750
