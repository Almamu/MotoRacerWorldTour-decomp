nonmatching func_8005DF6C, 0x94

glabel func_8005DF6C
    /* 4C77C 8005DF6C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4C780 8005DF70 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4C784 8005DF74 0803828C */  lw         $v0, 0x308($a0)
    /* 4C788 8005DF78 00000000 */  nop
    /* 4C78C 8005DF7C 1C004010 */  beqz       $v0, .L8005DFF0
    /* 4C790 8005DF80 21100000 */   addu      $v0, $zero, $zero
    /* 4C794 8005DF84 7803838C */  lw         $v1, 0x378($a0)
    /* 4C798 8005DF88 00000000 */  nop
    /* 4C79C 8005DF8C 0000628C */  lw         $v0, 0x0($v1)
    /* 4C7A0 8005DF90 00000000 */  nop
    /* 4C7A4 8005DF94 54004230 */  andi       $v0, $v0, 0x54
    /* 4C7A8 8005DF98 15004010 */  beqz       $v0, .L8005DFF0
    /* 4C7AC 8005DF9C 01000224 */   addiu     $v0, $zero, 0x1
    /* 4C7B0 8005DFA0 0403828C */  lw         $v0, 0x304($a0)
    /* 4C7B4 8005DFA4 00000000 */  nop
    /* 4C7B8 8005DFA8 11004014 */  bnez       $v0, .L8005DFF0
    /* 4C7BC 8005DFAC 01000224 */   addiu     $v0, $zero, 0x1
    /* 4C7C0 8005DFB0 21380000 */  addu       $a3, $zero, $zero
    /* 4C7C4 8005DFB4 E8026324 */  addiu      $v1, $v1, 0x2E8
    /* 4C7C8 8005DFB8 F3770108 */  j          .L8005DFCC
    /* 4C7CC 8005DFBC 42000824 */   addiu     $t0, $zero, 0x42
  .L8005DFC0:
    /* 4C7D0 8005DFC0 0500E228 */  slti       $v0, $a3, 0x5
    /* 4C7D4 8005DFC4 09004010 */  beqz       $v0, .L8005DFEC
    /* 4C7D8 8005DFC8 68056324 */   addiu     $v1, $v1, 0x568
  .L8005DFCC:
    /* 4C7DC 8005DFCC 0000628C */  lw         $v0, 0x0($v1)
    /* 4C7E0 8005DFD0 00000000 */  nop
    /* 4C7E4 8005DFD4 7E004230 */  andi       $v0, $v0, 0x7E
    /* 4C7E8 8005DFD8 F9FF4814 */  bne        $v0, $t0, .L8005DFC0
    /* 4C7EC 8005DFDC 0100E724 */   addiu     $a3, $a3, 0x1
    /* 4C7F0 8005DFE0 0803848C */  lw         $a0, 0x308($a0)
    /* 4C7F4 8005DFE4 25B0010C */  jal        func_8006C094
    /* 4C7F8 8005DFE8 00000000 */   nop
  .L8005DFEC:
    /* 4C7FC 8005DFEC 01000224 */  addiu      $v0, $zero, 0x1
  .L8005DFF0:
    /* 4C800 8005DFF0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4C804 8005DFF4 00000000 */  nop
    /* 4C808 8005DFF8 0800E003 */  jr         $ra
    /* 4C80C 8005DFFC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005DF6C
