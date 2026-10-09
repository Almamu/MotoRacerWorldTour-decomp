nonmatching func_8001CF34, 0xE4

glabel func_8001CF34
    /* B744 8001CF34 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* B748 8001CF38 8C00828C */  lw         $v0, 0x8C($a0)
    /* B74C 8001CF3C 21C80000 */  addu       $t9, $zero, $zero
    /* B750 8001CF40 32004018 */  blez       $v0, .L8001D00C
    /* B754 8001CF44 0000B0AF */   sw        $s0, 0x0($sp)
    /* B758 8001CF48 21680000 */  addu       $t5, $zero, $zero
    /* B75C 8001CF4C 90009824 */  addiu      $t8, $a0, 0x90
    /* B760 8001CF50 AC009024 */  addiu      $s0, $a0, 0xAC
  .L8001CF54:
    /* B764 8001CF54 00000C8F */  lw         $t4, 0x0($t8)
    /* B768 8001CF58 00000000 */  nop
    /* B76C 8001CF5C FFFF8725 */  addiu      $a3, $t4, -0x1
    /* B770 8001CF60 1A00E018 */  blez       $a3, .L8001CFCC
    /* B774 8001CF64 80180700 */   sll       $v1, $a3, 2
    /* B778 8001CF68 2178A001 */  addu       $t7, $t5, $zero
    /* B77C 8001CF6C AC008E24 */  addiu      $t6, $a0, 0xAC
    /* B780 8001CF70 2110CD01 */  addu       $v0, $t6, $t5
    /* B784 8001CF74 21586200 */  addu       $t3, $v1, $v0
  .L8001CF78:
    /* B788 8001CF78 1100E018 */  blez       $a3, .L8001CFC0
    /* B78C 8001CF7C 21480000 */   addu      $t1, $zero, $zero
    /* B790 8001CF80 21506001 */  addu       $t2, $t3, $zero
    /* B794 8001CF84 2130EE01 */  addu       $a2, $t7, $t6
  .L8001CF88:
    /* B798 8001CF88 0000C88C */  lw         $t0, 0x0($a2)
    /* B79C 8001CF8C 0000458D */  lw         $a1, 0x0($t2)
    /* B7A0 8001CF90 1402038D */  lw         $v1, 0x214($t0)
    /* B7A4 8001CF94 1402A28C */  lw         $v0, 0x214($a1)
    /* B7A8 8001CF98 00000000 */  nop
    /* B7AC 8001CF9C 2A186200 */  slt        $v1, $v1, $v0
    /* B7B0 8001CFA0 03006010 */  beqz       $v1, .L8001CFB0
    /* B7B4 8001CFA4 00000000 */   nop
    /* B7B8 8001CFA8 0000C5AC */  sw         $a1, 0x0($a2)
    /* B7BC 8001CFAC 000048AD */  sw         $t0, 0x0($t2)
  .L8001CFB0:
    /* B7C0 8001CFB0 01002925 */  addiu      $t1, $t1, 0x1
    /* B7C4 8001CFB4 2A102701 */  slt        $v0, $t1, $a3
    /* B7C8 8001CFB8 F3FF4014 */  bnez       $v0, .L8001CF88
    /* B7CC 8001CFBC 0400C624 */   addiu     $a2, $a2, 0x4
  .L8001CFC0:
    /* B7D0 8001CFC0 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* B7D4 8001CFC4 ECFFE01C */  bgtz       $a3, .L8001CF78
    /* B7D8 8001CFC8 FCFF6B25 */   addiu     $t3, $t3, -0x4
  .L8001CFCC:
    /* B7DC 8001CFCC 09008019 */  blez       $t4, .L8001CFF4
    /* B7E0 8001CFD0 21380000 */   addu      $a3, $zero, $zero
    /* B7E4 8001CFD4 2128B001 */  addu       $a1, $t5, $s0
  .L8001CFD8:
    /* B7E8 8001CFD8 0000A38C */  lw         $v1, 0x0($a1)
    /* B7EC 8001CFDC 00000000 */  nop
    /* B7F0 8001CFE0 180267AC */  sw         $a3, 0x218($v1)
    /* B7F4 8001CFE4 0100E724 */  addiu      $a3, $a3, 0x1
    /* B7F8 8001CFE8 2A10EC00 */  slt        $v0, $a3, $t4
    /* B7FC 8001CFEC FAFF4014 */  bnez       $v0, .L8001CFD8
    /* B800 8001CFF0 0400A524 */   addiu     $a1, $a1, 0x4
  .L8001CFF4:
    /* B804 8001CFF4 1400AD25 */  addiu      $t5, $t5, 0x14
    /* B808 8001CFF8 8C00828C */  lw         $v0, 0x8C($a0)
    /* B80C 8001CFFC 01003927 */  addiu      $t9, $t9, 0x1
    /* B810 8001D000 2A102203 */  slt        $v0, $t9, $v0
    /* B814 8001D004 D3FF4014 */  bnez       $v0, .L8001CF54
    /* B818 8001D008 04001827 */   addiu     $t8, $t8, 0x4
  .L8001D00C:
    /* B81C 8001D00C 0000B08F */  lw         $s0, 0x0($sp)
    /* B820 8001D010 0800E003 */  jr         $ra
    /* B824 8001D014 0800BD27 */   addiu     $sp, $sp, 0x8
endlabel func_8001CF34
