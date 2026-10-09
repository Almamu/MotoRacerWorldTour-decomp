nonmatching func_800A0078, 0x78

glabel func_800A0078
    /* 8E888 800A0078 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8E88C 800A007C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8E890 800A0080 21880000 */  addu       $s1, $zero, $zero
    /* 8E894 800A0084 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8E898 800A0088 21908000 */  addu       $s2, $a0, $zero
    /* 8E89C 800A008C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8E8A0 800A0090 2180A000 */  addu       $s0, $a1, $zero
    /* 8E8A4 800A0094 0F000012 */  beqz       $s0, .L800A00D4
    /* 8E8A8 800A0098 1C00BFAF */   sw        $ra, 0x1C($sp)
    /* 8E8AC 800A009C 00000282 */  lb         $v0, 0x0($s0)
    /* 8E8B0 800A00A0 00000000 */  nop
    /* 8E8B4 800A00A4 0C004010 */  beqz       $v0, .L800A00D8
    /* 8E8B8 800A00A8 21102002 */   addu      $v0, $s1, $zero
    /* 8E8BC 800A00AC 2ED9020C */  jal        strlen
    /* 8E8C0 800A00B0 21200002 */   addu      $a0, $s0, $zero
    /* 8E8C4 800A00B4 0400422C */  sltiu      $v0, $v0, 0x4
    /* 8E8C8 800A00B8 06004010 */  beqz       $v0, .L800A00D4
    /* 8E8CC 800A00BC 21204002 */   addu      $a0, $s2, $zero
    /* 8E8D0 800A00C0 21280002 */  addu       $a1, $s0, $zero
    /* 8E8D4 800A00C4 5ED9020C */  jal        strncpy
    /* 8E8D8 800A00C8 04000624 */   addiu     $a2, $zero, 0x4
    /* 8E8DC 800A00CC 030040A2 */  sb         $zero, 0x3($s2)
    /* 8E8E0 800A00D0 01001124 */  addiu      $s1, $zero, 0x1
  .L800A00D4:
    /* 8E8E4 800A00D4 21102002 */  addu       $v0, $s1, $zero
  .L800A00D8:
    /* 8E8E8 800A00D8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8E8EC 800A00DC 1800B28F */  lw         $s2, 0x18($sp)
    /* 8E8F0 800A00E0 1400B18F */  lw         $s1, 0x14($sp)
    /* 8E8F4 800A00E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 8E8F8 800A00E8 0800E003 */  jr         $ra
    /* 8E8FC 800A00EC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800A0078
