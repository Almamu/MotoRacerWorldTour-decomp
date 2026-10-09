nonmatching func_8013E7F4, 0xAC

glabel func_8013E7F4
    /* BCC0 8013E7F4 1D80013C */  lui        $at, %hi(D_801CE668)
    /* BCC4 8013E7F8 68E63FAC */  sw         $ra, %lo(D_801CE668)($at)
    /* BCC8 8013E7FC FF2A050C */  jal        func_8014ABFC
    /* BCCC 8013E800 00000000 */   nop
    /* BCD0 8013E804 56000924 */  addiu      $t1, $zero, 0x56
    /* BCD4 8013E808 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* BCD8 8013E80C 09F84001 */  jalr       $t2
    /* BCDC 8013E810 00000000 */   nop
    /* BCE0 8013E814 1800428C */  lw         $v0, 0x18($v0)
    /* BCE4 8013E818 00000000 */  nop
    /* BCE8 8013E81C 28004224 */  addiu      $v0, $v0, 0x28
    /* BCEC 8013E820 21784000 */  addu       $t7, $v0, $zero
    /* BCF0 8013E824 14800A3C */  lui        $t2, %hi(func_8013E8A0)
    /* BCF4 8013E828 A0E84A25 */  addiu      $t2, $t2, %lo(func_8013E8A0)
    /* BCF8 8013E82C 1480093C */  lui        $t1, %hi(D_8013E8B8)
    /* BCFC 8013E830 B8E82925 */  addiu      $t1, $t1, %lo(D_8013E8B8)
  .L8013E834:
    /* BD00 8013E834 0000438D */  lw         $v1, 0x0($t2)
    /* BD04 8013E838 00004B8C */  lw         $t3, 0x0($v0)
    /* BD08 8013E83C 04004A25 */  addiu      $t2, $t2, 0x4
    /* BD0C 8013E840 0E006B14 */  bne        $v1, $t3, .L8013E87C
    /* BD10 8013E844 04004224 */   addiu     $v0, $v0, 0x4
    /* BD14 8013E848 FAFF4915 */  bne        $t2, $t1, .L8013E834
    /* BD18 8013E84C 00000000 */   nop
    /* BD1C 8013E850 2110E001 */  addu       $v0, $t7, $zero
    /* BD20 8013E854 14800A3C */  lui        $t2, %hi(D_8013E8B8)
    /* BD24 8013E858 B8E84A25 */  addiu      $t2, $t2, %lo(D_8013E8B8)
    /* BD28 8013E85C 1480093C */  lui        $t1, %hi(D_8013E8D0)
    /* BD2C 8013E860 D0E82925 */  addiu      $t1, $t1, %lo(D_8013E8D0)
  .L8013E864:
    /* BD30 8013E864 0000438D */  lw         $v1, 0x0($t2)
    /* BD34 8013E868 00000000 */  nop
    /* BD38 8013E86C 000043AC */  sw         $v1, 0x0($v0)
    /* BD3C 8013E870 04004A25 */  addiu      $t2, $t2, 0x4
    /* BD40 8013E874 FBFF4915 */  bne        $t2, $t1, .L8013E864
    /* BD44 8013E878 04004224 */   addiu     $v0, $v0, 0x4
  .L8013E87C:
    /* BD48 8013E87C C72A050C */  jal        func_8014AB1C
    /* BD4C 8013E880 00000000 */   nop
    /* BD50 8013E884 032B050C */  jal        func_8014AC0C
    /* BD54 8013E888 00000000 */   nop
    /* BD58 8013E88C 1D801F3C */  lui        $ra, %hi(D_801CE668)
    /* BD5C 8013E890 68E6FF8F */  lw         $ra, %lo(D_801CE668)($ra)
    /* BD60 8013E894 00000000 */  nop
    /* BD64 8013E898 0800E003 */  jr         $ra
    /* BD68 8013E89C 00000000 */   nop
endlabel func_8013E7F4
