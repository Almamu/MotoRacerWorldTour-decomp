nonmatching func_80040E18, 0x38

glabel func_80040E18
    /* 2F628 80040E18 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2F62C 80040E1C 0D80033C */  lui        $v1, %hi(D_800D49EC)
    /* 2F630 80040E20 EC49638C */  lw         $v1, %lo(D_800D49EC)($v1)
    /* 2F634 80040E24 0A000224 */  addiu      $v0, $zero, 0xA
    /* 2F638 80040E28 05006214 */  bne        $v1, $v0, .L80040E40
    /* 2F63C 80040E2C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2F640 80040E30 A000848C */  lw         $a0, 0xA0($a0)
    /* 2F644 80040E34 01000524 */  addiu      $a1, $zero, 0x1
    /* 2F648 80040E38 CDED000C */  jal        func_8003B734
    /* 2F64C 80040E3C 21300000 */   addu      $a2, $zero, $zero
  .L80040E40:
    /* 2F650 80040E40 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2F654 80040E44 00000000 */  nop
    /* 2F658 80040E48 0800E003 */  jr         $ra
    /* 2F65C 80040E4C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80040E18
