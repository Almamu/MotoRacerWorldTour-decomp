nonmatching func_8009F390, 0x5C

glabel func_8009F390
    /* 8DBA0 8009F390 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DBA4 8009F394 0400C38C */  lw         $v1, 0x4($a2)
    /* 8DBA8 8009F398 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 8DBAC 8009F39C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DBB0 8009F3A0 0000858C */  lw         $a1, 0x0($a0)
    /* 8DBB4 8009F3A4 0D80043C */  lui        $a0, %hi(D_800C886C)
    /* 8DBB8 8009F3A8 6C88848C */  lw         $a0, %lo(D_800C886C)($a0)
    /* 8DBBC 8009F3AC 980A638C */  lw         $v1, 0xA98($v1)
    /* 8DBC0 8009F3B0 0A00A214 */  bne        $a1, $v0, .L8009F3DC
    /* 8DBC4 8009F3B4 00000000 */   nop
    /* 8DBC8 8009F3B8 0001628C */  lw         $v0, 0x100($v1)
    /* 8DBCC 8009F3BC 00000000 */  nop
    /* 8DBD0 8009F3C0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8DBD4 8009F3C4 02004104 */  bgez       $v0, .L8009F3D0
    /* 8DBD8 8009F3C8 000162AC */   sw        $v0, 0x100($v1)
    /* 8DBDC 8009F3CC 000160AC */  sw         $zero, 0x100($v1)
  .L8009F3D0:
    /* 8DBE0 8009F3D0 0001628C */  lw         $v0, 0x100($v1)
    /* 8DBE4 8009F3D4 B7E4010C */  jal        func_800792DC
    /* 8DBE8 8009F3D8 640182AC */   sw        $v0, 0x164($a0)
  .L8009F3DC:
    /* 8DBEC 8009F3DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DBF0 8009F3E0 00000000 */  nop
    /* 8DBF4 8009F3E4 0800E003 */  jr         $ra
    /* 8DBF8 8009F3E8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009F390
