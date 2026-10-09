nonmatching func_800AD7A8, 0x40

glabel func_800AD7A8
    /* 9BFB8 800AD7A8 FFFFA624 */  addiu      $a2, $a1, -0x1
    /* 9BFBC 800AD7AC 0C80033C */  lui        $v1, %hi(D_800BF348)
    /* 9BFC0 800AD7B0 48F3638C */  lw         $v1, %lo(D_800BF348)($v1)
    /* 9BFC4 800AD7B4 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* 9BFC8 800AD7B8 0900A010 */  beqz       $a1, .L800AD7E0
    /* 9BFCC 800AD7BC 000062AC */   sw        $v0, 0x0($v1)
    /* 9BFD0 800AD7C0 FFFF0524 */  addiu      $a1, $zero, -0x1
  .L800AD7C4:
    /* 9BFD4 800AD7C4 0000838C */  lw         $v1, 0x0($a0)
    /* 9BFD8 800AD7C8 04008424 */  addiu      $a0, $a0, 0x4
    /* 9BFDC 800AD7CC 0C80023C */  lui        $v0, %hi(D_800BF344)
    /* 9BFE0 800AD7D0 44F3428C */  lw         $v0, %lo(D_800BF344)($v0)
    /* 9BFE4 800AD7D4 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 9BFE8 800AD7D8 FAFFC514 */  bne        $a2, $a1, .L800AD7C4
    /* 9BFEC 800AD7DC 000043AC */   sw        $v1, 0x0($v0)
  .L800AD7E0:
    /* 9BFF0 800AD7E0 0800E003 */  jr         $ra
    /* 9BFF4 800AD7E4 21100000 */   addu      $v0, $zero, $zero
endlabel func_800AD7A8
