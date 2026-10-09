nonmatching func_8001CBA0, 0x74

glabel func_8001CBA0
    /* B3B0 8001CBA0 780080AC */  sw         $zero, 0x78($a0)
    /* B3B4 8001CBA4 3000A28C */  lw         $v0, 0x30($a1)
    /* B3B8 8001CBA8 00000000 */  nop
    /* B3BC 8001CBAC C401458C */  lw         $a1, 0x1C4($v0)
    /* B3C0 8001CBB0 00000000 */  nop
    /* B3C4 8001CBB4 1500A010 */  beqz       $a1, .L8001CC0C
    /* B3C8 8001CBB8 02000624 */   addiu     $a2, $zero, 0x2
  .L8001CBBC:
    /* B3CC 8001CBBC 0000A28C */  lw         $v0, 0x0($a1)
    /* B3D0 8001CBC0 00000000 */  nop
    /* B3D4 8001CBC4 80160200 */  sll        $v0, $v0, 26
    /* B3D8 8001CBC8 C3160200 */  sra        $v0, $v0, 27
    /* B3DC 8001CBCC 09004614 */  bne        $v0, $a2, .L8001CBF4
    /* B3E0 8001CBD0 00000000 */   nop
    /* B3E4 8001CBD4 3000A38C */  lw         $v1, 0x30($a1)
    /* B3E8 8001CBD8 7800828C */  lw         $v0, 0x78($a0)
    /* B3EC 8001CBDC 7404638C */  lw         $v1, 0x474($v1)
    /* B3F0 8001CBE0 00000000 */  nop
    /* B3F4 8001CBE4 2A104300 */  slt        $v0, $v0, $v1
    /* B3F8 8001CBE8 02004010 */  beqz       $v0, .L8001CBF4
    /* B3FC 8001CBEC 00000000 */   nop
    /* B400 8001CBF0 780083AC */  sw         $v1, 0x78($a0)
  .L8001CBF4:
    /* B404 8001CBF4 3000A28C */  lw         $v0, 0x30($a1)
    /* B408 8001CBF8 00000000 */  nop
    /* B40C 8001CBFC C401458C */  lw         $a1, 0x1C4($v0)
    /* B410 8001CC00 00000000 */  nop
    /* B414 8001CC04 EDFFA014 */  bnez       $a1, .L8001CBBC
    /* B418 8001CC08 00000000 */   nop
  .L8001CC0C:
    /* B41C 8001CC0C 0800E003 */  jr         $ra
    /* B420 8001CC10 00000000 */   nop
endlabel func_8001CBA0
