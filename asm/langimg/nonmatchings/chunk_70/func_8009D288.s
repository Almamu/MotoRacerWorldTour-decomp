nonmatching func_8009D288, 0x40

glabel func_8009D288
    /* 8BA98 8009D288 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8BA9C 8009D28C 0D80033C */  lui        $v1, %hi(D_800D5F0C)
    /* 8BAA0 8009D290 0C5F638C */  lw         $v1, %lo(D_800D5F0C)($v1)
    /* 8BAA4 8009D294 01000224 */  addiu      $v0, $zero, 0x1
    /* 8BAA8 8009D298 04006210 */  beq        $v1, $v0, .L8009D2AC
    /* 8BAAC 8009D29C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 8BAB0 8009D2A0 04000224 */  addiu      $v0, $zero, 0x4
    /* 8BAB4 8009D2A4 02006214 */  bne        $v1, $v0, .L8009D2B0
    /* 8BAB8 8009D2A8 12000424 */   addiu     $a0, $zero, 0x12
  .L8009D2AC:
    /* 8BABC 8009D2AC 13000424 */  addiu      $a0, $zero, 0x13
  .L8009D2B0:
    /* 8BAC0 8009D2B0 E299020C */  jal        func_800A6788
    /* 8BAC4 8009D2B4 21280000 */   addu      $a1, $zero, $zero
    /* 8BAC8 8009D2B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8BACC 8009D2BC 00000000 */  nop
    /* 8BAD0 8009D2C0 0800E003 */  jr         $ra
    /* 8BAD4 8009D2C4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8009D288
