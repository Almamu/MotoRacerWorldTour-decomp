nonmatching func_8001B778, 0xD4

glabel func_8001B778
    /* 9F88 8001B778 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9F8C 8001B77C 21488000 */  addu       $t1, $a0, $zero
    /* 9F90 8001B780 21200000 */  addu       $a0, $zero, $zero
    /* 9F94 8001B784 2118A003 */  addu       $v1, $sp, $zero
  .L8001B788:
    /* 9F98 8001B788 000060AC */  sw         $zero, 0x0($v1)
    /* 9F9C 8001B78C 01008424 */  addiu      $a0, $a0, 0x1
    /* 9FA0 8001B790 07008228 */  slti       $v0, $a0, 0x7
    /* 9FA4 8001B794 FCFF4014 */  bnez       $v0, .L8001B788
    /* 9FA8 8001B798 04006324 */   addiu     $v1, $v1, 0x4
    /* 9FAC 8001B79C 7803AB8C */  lw         $t3, 0x378($a1)
    /* 9FB0 8001B7A0 21380000 */  addu       $a3, $zero, $zero
    /* 9FB4 8001B7A4 44000C24 */  addiu      $t4, $zero, 0x44
    /* 9FB8 8001B7A8 AC002A25 */  addiu      $t2, $t1, 0xAC
    /* 9FBC 8001B7AC E8020824 */  addiu      $t0, $zero, 0x2E8
  .L8001B7B0:
    /* 9FC0 8001B7B0 0200E004 */  bltz       $a3, .L8001B7BC
    /* 9FC4 8001B7B4 21180000 */   addu      $v1, $zero, $zero
    /* 9FC8 8001B7B8 21186801 */  addu       $v1, $t3, $t0
  .L8001B7BC:
    /* 9FCC 8001B7BC 0000628C */  lw         $v0, 0x0($v1)
    /* 9FD0 8001B7C0 00000000 */  nop
    /* 9FD4 8001B7C4 7E004230 */  andi       $v0, $v0, 0x7E
    /* 9FD8 8001B7C8 0F004C14 */  bne        $v0, $t4, .L8001B808
    /* 9FDC 8001B7CC 00000000 */   nop
    /* 9FE0 8001B7D0 3000668C */  lw         $a2, 0x30($v1)
    /* 9FE4 8001B7D4 00000000 */  nop
    /* 9FE8 8001B7D8 7404C48C */  lw         $a0, 0x474($a2)
    /* 9FEC 8001B7DC 00000000 */  nop
    /* 9FF0 8001B7E0 80100400 */  sll        $v0, $a0, 2
    /* 9FF4 8001B7E4 2128A203 */  addu       $a1, $sp, $v0
    /* 9FF8 8001B7E8 0000A38C */  lw         $v1, 0x0($a1)
    /* 9FFC 8001B7EC 21104400 */  addu       $v0, $v0, $a0
    /* A000 8001B7F0 21104300 */  addu       $v0, $v0, $v1
    /* A004 8001B7F4 80100200 */  sll        $v0, $v0, 2
    /* A008 8001B7F8 21104201 */  addu       $v0, $t2, $v0
    /* A00C 8001B7FC 01006324 */  addiu      $v1, $v1, 0x1
    /* A010 8001B800 000046AC */  sw         $a2, 0x0($v0)
    /* A014 8001B804 0000A3AC */  sw         $v1, 0x0($a1)
  .L8001B808:
    /* A018 8001B808 0100E724 */  addiu      $a3, $a3, 0x1
    /* A01C 8001B80C 0500E228 */  slti       $v0, $a3, 0x5
    /* A020 8001B810 E7FF4014 */  bnez       $v0, .L8001B7B0
    /* A024 8001B814 68050825 */   addiu     $t0, $t0, 0x568
    /* A028 8001B818 3412023C */  lui        $v0, (0x12345678 >> 16)
    /* A02C 8001B81C 78564234 */  ori        $v0, $v0, (0x12345678 & 0xFFFF)
    /* A030 8001B820 07000324 */  addiu      $v1, $zero, 0x7
    /* A034 8001B824 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* A038 8001B828 740020AD */  sw         $zero, 0x74($t1)
    /* A03C 8001B82C 780020AD */  sw         $zero, 0x78($t1)
    /* A040 8001B830 7C0023AD */  sw         $v1, 0x7C($t1)
    /* A044 8001B834 800024AD */  sw         $a0, 0x80($t1)
    /* A048 8001B838 880020AD */  sw         $zero, 0x88($t1)
    /* A04C 8001B83C 840024AD */  sw         $a0, 0x84($t1)
    /* A050 8001B840 800122AD */  sw         $v0, 0x180($t1)
    /* A054 8001B844 0800E003 */  jr         $ra
    /* A058 8001B848 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_8001B778
