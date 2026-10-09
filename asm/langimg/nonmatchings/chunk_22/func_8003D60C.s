nonmatching func_8003D60C, 0x68

glabel func_8003D60C
    /* 2BE1C 8003D60C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2BE20 8003D610 14008010 */  beqz       $a0, .L8003D664
    /* 2BE24 8003D614 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2BE28 8003D618 900A838C */  lw         $v1, 0xA90($a0)
    /* 2BE2C 8003D61C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BE30 8003D620 03006210 */  beq        $v1, $v0, .L8003D630
    /* 2BE34 8003D624 04000224 */   addiu     $v0, $zero, 0x4
    /* 2BE38 8003D628 04006214 */  bne        $v1, $v0, .L8003D63C
    /* 2BE3C 8003D62C 00000000 */   nop
  .L8003D630:
    /* 2BE40 8003D630 840A828C */  lw         $v0, 0xA84($a0)
    /* 2BE44 8003D634 90F50008 */  j          .L8003D640
    /* 2BE48 8003D638 00000000 */   nop
  .L8003D63C:
    /* 2BE4C 8003D63C 800A828C */  lw         $v0, 0xA80($a0)
  .L8003D640:
    /* 2BE50 8003D640 00000000 */  nop
    /* 2BE54 8003D644 07004010 */  beqz       $v0, .L8003D664
    /* 2BE58 8003D648 00000000 */   nop
    /* 2BE5C 8003D64C 7000428C */  lw         $v0, 0x70($v0)
    /* 2BE60 8003D650 00000000 */  nop
    /* 2BE64 8003D654 03004010 */  beqz       $v0, .L8003D664
    /* 2BE68 8003D658 00000000 */   nop
    /* 2BE6C 8003D65C 09F84000 */  jalr       $v0
    /* 2BE70 8003D660 00000000 */   nop
  .L8003D664:
    /* 2BE74 8003D664 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2BE78 8003D668 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BE7C 8003D66C 0800E003 */  jr         $ra
    /* 2BE80 8003D670 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8003D60C
