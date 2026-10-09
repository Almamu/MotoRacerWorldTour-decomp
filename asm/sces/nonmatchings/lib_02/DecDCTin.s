nonmatching DecDCTin, 0x7C

glabel DecDCTin
    /* 8088 8013ABBC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 808C 8013ABC0 0100A230 */  andi       $v0, $a1, 0x1
    /* 8090 8013ABC4 06004010 */  beqz       $v0, .L8013ABE0
    /* 8094 8013ABC8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 8098 8013ABCC FFF7033C */  lui        $v1, (0xF7FFFFFF >> 16)
    /* 809C 8013ABD0 0000828C */  lw         $v0, 0x0($a0)
    /* 80A0 8013ABD4 FFFF6334 */  ori        $v1, $v1, (0xF7FFFFFF & 0xFFFF)
    /* 80A4 8013ABD8 FBEA0408 */  j          .L8013ABEC
    /* 80A8 8013ABDC 24104300 */   and       $v0, $v0, $v1
  .L8013ABE0:
    /* 80AC 8013ABE0 0000828C */  lw         $v0, 0x0($a0)
    /* 80B0 8013ABE4 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 80B4 8013ABE8 25104300 */  or         $v0, $v0, $v1
  .L8013ABEC:
    /* 80B8 8013ABEC 000082AC */  sw         $v0, 0x0($a0)
    /* 80BC 8013ABF0 0200A230 */  andi       $v0, $a1, 0x2
    /* 80C0 8013ABF4 04004010 */  beqz       $v0, .L8013AC08
    /* 80C4 8013ABF8 0002033C */   lui       $v1, (0x2000000 >> 16)
    /* 80C8 8013ABFC 0000828C */  lw         $v0, 0x0($a0)
    /* 80CC 8013AC00 06EB0408 */  j          .L8013AC18
    /* 80D0 8013AC04 25104300 */   or        $v0, $v0, $v1
  .L8013AC08:
    /* 80D4 8013AC08 FFFD033C */  lui        $v1, (0xFDFFFFFF >> 16)
    /* 80D8 8013AC0C 0000828C */  lw         $v0, 0x0($a0)
    /* 80DC 8013AC10 FFFF6334 */  ori        $v1, $v1, (0xFDFFFFFF & 0xFFFF)
    /* 80E0 8013AC14 24104300 */  and        $v0, $v0, $v1
  .L8013AC18:
    /* 80E4 8013AC18 000082AC */  sw         $v0, 0x0($a0)
    /* 80E8 8013AC1C 00008594 */  lhu        $a1, 0x0($a0)
    /* 80EC 8013AC20 6AEB040C */  jal        func_8013ADA8
    /* 80F0 8013AC24 00000000 */   nop
    /* 80F4 8013AC28 1000BF8F */  lw         $ra, 0x10($sp)
    /* 80F8 8013AC2C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 80FC 8013AC30 0800E003 */  jr         $ra
    /* 8100 8013AC34 00000000 */   nop
endlabel DecDCTin
