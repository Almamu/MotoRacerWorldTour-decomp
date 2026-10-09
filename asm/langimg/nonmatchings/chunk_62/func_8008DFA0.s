/* Handwritten function */
nonmatching func_8008DFA0, 0xB4

glabel func_8008DFA0
    /* 7C7B0 8008DFA0 0200822C */  sltiu      $v0, $a0, 0x2
    /* 7C7B4 8008DFA4 03004010 */  beqz       $v0, .L8008DFB4
    /* 7C7B8 8008DFA8 21388000 */   addu      $a3, $a0, $zero
    /* 7C7BC 8008DFAC 0800E003 */  jr         $ra
    /* 7C7C0 8008DFB0 21108000 */   addu      $v0, $a0, $zero
  .L8008DFB4:
    /* 7C7C4 8008DFB4 21280000 */  addu       $a1, $zero, $zero
    /* 7C7C8 8008DFB8 21300000 */  addu       $a2, $zero, $zero
    /* 7C7CC 8008DFBC 0C008004 */  bltz       $a0, .L8008DFF0
    /* 7C7D0 8008DFC0 0F000824 */   addiu     $t0, $zero, 0xF
    /* 7C7D4 8008DFC4 00F08448 */  mtc2       $a0, $30 /* handwritten instruction */
    /* 7C7D8 8008DFC8 00000000 */  nop
    /* 7C7DC 8008DFCC 00000000 */  nop
    /* 7C7E0 8008DFD0 00F80248 */  mfc2       $v0, $31 /* handwritten instruction */
    /* 7C7E4 8008DFD4 00000000 */  nop
    /* 7C7E8 8008DFD8 C21F0200 */  srl        $v1, $v0, 31
    /* 7C7EC 8008DFDC 21104300 */  addu       $v0, $v0, $v1
    /* 7C7F0 8008DFE0 43100200 */  sra        $v0, $v0, 1
    /* 7C7F4 8008DFE4 23400201 */  subu       $t0, $t0, $v0
    /* 7C7F8 8008DFE8 40100200 */  sll        $v0, $v0, 1
    /* 7C7FC 8008DFEC 04384400 */  sllv       $a3, $a0, $v0
  .L8008DFF0:
    /* 7C800 8008DFF0 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* 7C804 8008DFF4 80180600 */  sll        $v1, $a2, 2
  .L8008DFF8:
    /* 7C808 8008DFF8 82170700 */  srl        $v0, $a3, 30
    /* 7C80C 8008DFFC 25306200 */  or         $a2, $v1, $v0
    /* 7C810 8008E000 40280500 */  sll        $a1, $a1, 1
    /* 7C814 8008E004 40100500 */  sll        $v0, $a1, 1
    /* 7C818 8008E008 01004224 */  addiu      $v0, $v0, 0x1
    /* 7C81C 8008E00C 2B18C200 */  sltu       $v1, $a2, $v0
    /* 7C820 8008E010 03006014 */  bnez       $v1, .L8008E020
    /* 7C824 8008E014 80380700 */   sll       $a3, $a3, 2
    /* 7C828 8008E018 0100A524 */  addiu      $a1, $a1, 0x1
    /* 7C82C 8008E01C 2330C200 */  subu       $a2, $a2, $v0
  .L8008E020:
    /* 7C830 8008E020 FFFF0825 */  addiu      $t0, $t0, -0x1
    /* 7C834 8008E024 F4FF0915 */  bne        $t0, $t1, .L8008DFF8
    /* 7C838 8008E028 80180600 */   sll       $v1, $a2, 2
    /* 7C83C 8008E02C 1800A500 */  mult       $a1, $a1
    /* 7C840 8008E030 FFFFA324 */  addiu      $v1, $a1, -0x1
    /* 7C844 8008E034 12100000 */  mflo       $v0
    /* 7C848 8008E038 23108200 */  subu       $v0, $a0, $v0
    /* 7C84C 8008E03C 2B104300 */  sltu       $v0, $v0, $v1
    /* 7C850 8008E040 02004014 */  bnez       $v0, .L8008E04C
    /* 7C854 8008E044 00000000 */   nop
    /* 7C858 8008E048 0100A524 */  addiu      $a1, $a1, 0x1
  .L8008E04C:
    /* 7C85C 8008E04C 0800E003 */  jr         $ra
    /* 7C860 8008E050 2110A000 */   addu      $v0, $a1, $zero
endlabel func_8008DFA0
