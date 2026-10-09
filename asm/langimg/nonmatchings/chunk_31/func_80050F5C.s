nonmatching func_80050F5C, 0xD0

glabel func_80050F5C
    /* 3F76C 80050F5C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3F770 80050F60 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3F774 80050F64 21800000 */  addu       $s0, $zero, $zero
    /* 3F778 80050F68 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3F77C 80050F6C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3F780 80050F70 CE43010C */  jal        func_80050F38
    /* 3F784 80050F74 21888000 */   addu      $s1, $a0, $zero
    /* 3F788 80050F78 04000424 */  addiu      $a0, $zero, 0x4
    /* 3F78C 80050F7C 94182626 */  addiu      $a2, $s1, 0x1894
    /* 3F790 80050F80 88182526 */  addiu      $a1, $s1, 0x1888
    /* 3F794 80050F84 18002326 */  addiu      $v1, $s1, 0x18
  .L80050F88:
    /* 3F798 80050F88 0000A28C */  lw         $v0, 0x0($a1)
    /* 3F79C 80050F8C 00000000 */  nop
    /* 3F7A0 80050F90 82110200 */  srl        $v0, $v0, 6
    /* 3F7A4 80050F94 01004230 */  andi       $v0, $v0, 0x1
    /* 3F7A8 80050F98 07004010 */  beqz       $v0, .L80050FB8
    /* 3F7AC 80050F9C 00000000 */   nop
    /* 3F7B0 80050FA0 0000C284 */  lh         $v0, 0x0($a2)
    /* 3F7B4 80050FA4 01001026 */  addiu      $s0, $s0, 0x1
    /* 3F7B8 80050FA8 00120200 */  sll        $v0, $v0, 8
    /* 3F7BC 80050FAC 25108200 */  or         $v0, $a0, $v0
    /* 3F7C0 80050FB0 000062AC */  sw         $v0, 0x0($v1)
    /* 3F7C4 80050FB4 04006324 */  addiu      $v1, $v1, 0x4
  .L80050FB8:
    /* 3F7C8 80050FB8 98FAC624 */  addiu      $a2, $a2, -0x568
    /* 3F7CC 80050FBC FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 3F7D0 80050FC0 F1FF8104 */  bgez       $a0, .L80050F88
    /* 3F7D4 80050FC4 98FAA524 */   addiu     $a1, $a1, -0x568
    /* 3F7D8 80050FC8 0200022A */  slti       $v0, $s0, 0x2
    /* 3F7DC 80050FCC 08004014 */  bnez       $v0, .L80050FF0
    /* 3F7E0 80050FD0 FFFF0426 */   addiu     $a0, $s0, -0x1
    /* 3F7E4 80050FD4 18002426 */  addiu      $a0, $s1, 0x18
    /* 3F7E8 80050FD8 0580073C */  lui        $a3, %hi(func_80050F1C)
    /* 3F7EC 80050FDC 21280002 */  addu       $a1, $s0, $zero
    /* 3F7F0 80050FE0 04000624 */  addiu      $a2, $zero, 0x4
    /* 3F7F4 80050FE4 62D8020C */  jal        qsort
    /* 3F7F8 80050FE8 1C0FE724 */   addiu     $a3, $a3, %lo(func_80050F1C)
    /* 3F7FC 80050FEC FFFF0426 */  addiu      $a0, $s0, -0x1
  .L80050FF0:
    /* 3F800 80050FF0 09008004 */  bltz       $a0, .L80051018
    /* 3F804 80050FF4 80100400 */   sll       $v0, $a0, 2
    /* 3F808 80050FF8 18002326 */  addiu      $v1, $s1, 0x18
    /* 3F80C 80050FFC 21184300 */  addu       $v1, $v0, $v1
  .L80051000:
    /* 3F810 80051000 0000628C */  lw         $v0, 0x0($v1)
    /* 3F814 80051004 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 3F818 80051008 0F004230 */  andi       $v0, $v0, 0xF
    /* 3F81C 8005100C 000062AC */  sw         $v0, 0x0($v1)
    /* 3F820 80051010 FBFF8104 */  bgez       $a0, .L80051000
    /* 3F824 80051014 FCFF6324 */   addiu     $v1, $v1, -0x4
  .L80051018:
    /* 3F828 80051018 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3F82C 8005101C 1400B18F */  lw         $s1, 0x14($sp)
    /* 3F830 80051020 1000B08F */  lw         $s0, 0x10($sp)
    /* 3F834 80051024 0800E003 */  jr         $ra
    /* 3F838 80051028 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80050F5C
