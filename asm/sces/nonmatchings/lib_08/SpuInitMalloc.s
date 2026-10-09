nonmatching SpuInitMalloc, 0x60

glabel SpuInitMalloc
    /* 155B0 801480E4 21108000 */  addu       $v0, $a0, $zero
    /* 155B4 801480E8 0300401C */  bgtz       $v0, .L801480F8
    /* 155B8 801480EC 0040033C */   lui       $v1, (0x40001010 >> 16)
    /* 155BC 801480F0 4C200508 */  j          .L80148130
    /* 155C0 801480F4 21100000 */   addu      $v0, $zero, $zero
  .L801480F8:
    /* 155C4 801480F8 1C80043C */  lui        $a0, %hi(_spu_mem_mode_plus)
    /* 155C8 801480FC 3CFF848C */  lw         $a0, %lo(_spu_mem_mode_plus)($a0)
    /* 155CC 80148100 10106334 */  ori        $v1, $v1, (0x40001010 & 0xFFFF)
    /* 155D0 80148104 0000A3AC */  sw         $v1, 0x0($a1)
    /* 155D4 80148108 0100033C */  lui        $v1, (0x10000 >> 16)
    /* 155D8 8014810C 1C80013C */  lui        $at, %hi(_spu_memList)
    /* 155DC 80148110 FCFF25AC */  sw         $a1, %lo(_spu_memList)($at)
    /* 155E0 80148114 1C80013C */  lui        $at, %hi(_spu_AllocLastNum)
    /* 155E4 80148118 F8FF20AC */  sw         $zero, %lo(_spu_AllocLastNum)($at)
    /* 155E8 8014811C 1C80013C */  lui        $at, %hi(_spu_AllocBlockNum)
    /* 155EC 80148120 F4FF22AC */  sw         $v0, %lo(_spu_AllocBlockNum)($at)
    /* 155F0 80148124 04188300 */  sllv       $v1, $v1, $a0
    /* 155F4 80148128 F0EF6324 */  addiu      $v1, $v1, -0x1010
    /* 155F8 8014812C 0400A3AC */  sw         $v1, 0x4($a1)
  .L80148130:
    /* 155FC 80148130 0800E003 */  jr         $ra
    /* 15600 80148134 00000000 */   nop
    /* 15604 80148138 00000000 */  nop
    /* 15608 8014813C 00000000 */  nop
    /* 1560C 80148140 00000000 */  nop
endlabel SpuInitMalloc
