nonmatching func_8001B6B4, 0xB8

glabel func_8001B6B4
    /* 9EC4 8001B6B4 2138A000 */  addu       $a3, $a1, $zero
    /* 9EC8 8001B6B8 000080AC */  sw         $zero, 0x0($a0)
    /* 9ECC 8001B6BC 21300000 */  addu       $a2, $zero, $zero
    /* 9ED0 8001B6C0 90008524 */  addiu      $a1, $a0, 0x90
    /* 9ED4 8001B6C4 2118A000 */  addu       $v1, $a1, $zero
  .L8001B6C8:
    /* 9ED8 8001B6C8 000060AC */  sw         $zero, 0x0($v1)
    /* 9EDC 8001B6CC 0100C624 */  addiu      $a2, $a2, 0x1
    /* 9EE0 8001B6D0 0700C228 */  slti       $v0, $a2, 0x7
    /* 9EE4 8001B6D4 FCFF4014 */  bnez       $v0, .L8001B6C8
    /* 9EE8 8001B6D8 04006324 */   addiu     $v1, $v1, 0x4
    /* 9EEC 8001B6DC 7803EB8C */  lw         $t3, 0x378($a3)
    /* 9EF0 8001B6E0 21380000 */  addu       $a3, $zero, $zero
    /* 9EF4 8001B6E4 44000C24 */  addiu      $t4, $zero, 0x44
    /* 9EF8 8001B6E8 2150A000 */  addu       $t2, $a1, $zero
    /* 9EFC 8001B6EC AC008924 */  addiu      $t1, $a0, 0xAC
    /* 9F00 8001B6F0 E8020824 */  addiu      $t0, $zero, 0x2E8
  .L8001B6F4:
    /* 9F04 8001B6F4 0200E004 */  bltz       $a3, .L8001B700
    /* 9F08 8001B6F8 21180000 */   addu      $v1, $zero, $zero
    /* 9F0C 8001B6FC 21186801 */  addu       $v1, $t3, $t0
  .L8001B700:
    /* 9F10 8001B700 0000628C */  lw         $v0, 0x0($v1)
    /* 9F14 8001B704 00000000 */  nop
    /* 9F18 8001B708 7E004230 */  andi       $v0, $v0, 0x7E
    /* 9F1C 8001B70C 11004C14 */  bne        $v0, $t4, .L8001B754
    /* 9F20 8001B710 00000000 */   nop
    /* 9F24 8001B714 3000668C */  lw         $a2, 0x30($v1)
    /* 9F28 8001B718 00000000 */  nop
    /* 9F2C 8001B71C 7404C48C */  lw         $a0, 0x474($a2)
    /* 9F30 8001B720 00000000 */  nop
    /* 9F34 8001B724 80100400 */  sll        $v0, $a0, 2
    /* 9F38 8001B728 21284201 */  addu       $a1, $t2, $v0
    /* 9F3C 8001B72C 0000A38C */  lw         $v1, 0x0($a1)
    /* 9F40 8001B730 21104400 */  addu       $v0, $v0, $a0
    /* 9F44 8001B734 21104300 */  addu       $v0, $v0, $v1
    /* 9F48 8001B738 80100200 */  sll        $v0, $v0, 2
    /* 9F4C 8001B73C 21102201 */  addu       $v0, $t1, $v0
    /* 9F50 8001B740 000046AC */  sw         $a2, 0x0($v0)
    /* 9F54 8001B744 0000A38C */  lw         $v1, 0x0($a1)
    /* 9F58 8001B748 00000000 */  nop
    /* 9F5C 8001B74C 01006324 */  addiu      $v1, $v1, 0x1
    /* 9F60 8001B750 0000A3AC */  sw         $v1, 0x0($a1)
  .L8001B754:
    /* 9F64 8001B754 0100E724 */  addiu      $a3, $a3, 0x1
    /* 9F68 8001B758 0500E228 */  slti       $v0, $a3, 0x5
    /* 9F6C 8001B75C E5FF4014 */  bnez       $v0, .L8001B6F4
    /* 9F70 8001B760 68050825 */   addiu     $t0, $t0, 0x568
    /* 9F74 8001B764 0800E003 */  jr         $ra
    /* 9F78 8001B768 00000000 */   nop
endlabel func_8001B6B4
