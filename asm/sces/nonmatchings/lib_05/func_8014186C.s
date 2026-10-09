nonmatching func_8014186C, 0x60

glabel func_8014186C
    /* ED38 8014186C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* ED3C 80141870 1000BFAF */  sw         $ra, 0x10($sp)
    /* ED40 80141874 53008290 */  lbu        $v0, 0x53($a0)
    /* ED44 80141878 00000000 */  nop
    /* ED48 8014187C 09004010 */  beqz       $v0, .L801418A4
    /* ED4C 80141880 02000224 */   addiu     $v0, $zero, 0x2
    /* ED50 80141884 46008390 */  lbu        $v1, 0x46($a0)
    /* ED54 80141888 00000000 */  nop
    /* ED58 8014188C 03006214 */  bne        $v1, $v0, .L8014189C
    /* ED5C 80141890 FE000224 */   addiu     $v0, $zero, 0xFE
    /* ED60 80141894 2F060508 */  j          .L801418BC
    /* ED64 80141898 01000224 */   addiu     $v0, $zero, 0x1
  .L8014189C:
    /* ED68 8014189C 2E060508 */  j          .L801418B8
    /* ED6C 801418A0 460082A0 */   sb        $v0, 0x46($a0)
  .L801418A4:
    /* ED70 801418A4 1C80023C */  lui        $v0, %hi(D_801BFE60)
    /* ED74 801418A8 60FE428C */  lw         $v0, %lo(D_801BFE60)($v0)
    /* ED78 801418AC 00000000 */  nop
    /* ED7C 801418B0 09F84000 */  jalr       $v0
    /* ED80 801418B4 00000000 */   nop
  .L801418B8:
    /* ED84 801418B8 21100000 */  addu       $v0, $zero, $zero
  .L801418BC:
    /* ED88 801418BC 1000BF8F */  lw         $ra, 0x10($sp)
    /* ED8C 801418C0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* ED90 801418C4 0800E003 */  jr         $ra
    /* ED94 801418C8 00000000 */   nop
endlabel func_8014186C
