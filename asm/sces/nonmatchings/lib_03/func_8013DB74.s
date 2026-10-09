nonmatching func_8013DB74, 0x40

glabel func_8013DB74
    /* B040 8013DB74 FFFFA624 */  addiu      $a2, $a1, -0x1
    /* B044 8013DB78 1C80033C */  lui        $v1, %hi(D_801BFD40)
    /* B048 8013DB7C 40FD638C */  lw         $v1, %lo(D_801BFD40)($v1)
    /* B04C 8013DB80 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* B050 8013DB84 0900A010 */  beqz       $a1, .L8013DBAC
    /* B054 8013DB88 000062AC */   sw        $v0, 0x0($v1)
    /* B058 8013DB8C FFFF0524 */  addiu      $a1, $zero, -0x1
  .L8013DB90:
    /* B05C 8013DB90 0000838C */  lw         $v1, 0x0($a0)
    /* B060 8013DB94 04008424 */  addiu      $a0, $a0, 0x4
    /* B064 8013DB98 1C80023C */  lui        $v0, %hi(D_801BFD3C)
    /* B068 8013DB9C 3CFD428C */  lw         $v0, %lo(D_801BFD3C)($v0)
    /* B06C 8013DBA0 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* B070 8013DBA4 FAFFC514 */  bne        $a2, $a1, .L8013DB90
    /* B074 8013DBA8 000043AC */   sw        $v1, 0x0($v0)
  .L8013DBAC:
    /* B078 8013DBAC 0800E003 */  jr         $ra
    /* B07C 8013DBB0 21100000 */   addu      $v0, $zero, $zero
endlabel func_8013DB74
