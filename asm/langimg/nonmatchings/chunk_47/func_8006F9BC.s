nonmatching func_8006F9BC, 0x74

glabel func_8006F9BC
    /* 5E1CC 8006F9BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5E1D0 8006F9C0 01000224 */  addiu      $v0, $zero, 0x1
    /* 5E1D4 8006F9C4 11008210 */  beq        $a0, $v0, .L8006FA0C
    /* 5E1D8 8006F9C8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 5E1DC 8006F9CC 02008228 */  slti       $v0, $a0, 0x2
    /* 5E1E0 8006F9D0 05004010 */  beqz       $v0, .L8006F9E8
    /* 5E1E4 8006F9D4 00000000 */   nop
    /* 5E1E8 8006F9D8 08008010 */  beqz       $a0, .L8006F9FC
    /* 5E1EC 8006F9DC 00000000 */   nop
    /* 5E1F0 8006F9E0 88BE0108 */  j          .L8006FA20
    /* 5E1F4 8006F9E4 00000000 */   nop
  .L8006F9E8:
    /* 5E1F8 8006F9E8 02000224 */  addiu      $v0, $zero, 0x2
    /* 5E1FC 8006F9EC 07008210 */  beq        $a0, $v0, .L8006FA0C
    /* 5E200 8006F9F0 00000000 */   nop
    /* 5E204 8006F9F4 88BE0108 */  j          .L8006FA20
    /* 5E208 8006F9F8 00000000 */   nop
  .L8006F9FC:
    /* 5E20C 8006F9FC CC55000C */  jal        func_80015730
    /* 5E210 8006FA00 00000000 */   nop
    /* 5E214 8006FA04 86BE0108 */  j          .L8006FA18
    /* 5E218 8006FA08 21200000 */   addu      $a0, $zero, $zero
  .L8006FA0C:
    /* 5E21C 8006FA0C D955000C */  jal        func_80015764
    /* 5E220 8006FA10 00000000 */   nop
    /* 5E224 8006FA14 01000424 */  addiu      $a0, $zero, 0x1
  .L8006FA18:
    /* 5E228 8006FA18 7048000C */  jal        func_800121C0
    /* 5E22C 8006FA1C 00000000 */   nop
  .L8006FA20:
    /* 5E230 8006FA20 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5E234 8006FA24 00000000 */  nop
    /* 5E238 8006FA28 0800E003 */  jr         $ra
    /* 5E23C 8006FA2C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006F9BC
