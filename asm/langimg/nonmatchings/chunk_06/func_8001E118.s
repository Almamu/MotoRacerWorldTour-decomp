/* Handwritten function */
nonmatching func_8001E118, 0xB0

glabel func_8001E118
    /* C928 8001E118 2150C000 */  addu       $t2, $a2, $zero
    /* C92C 8001E11C 0000A78C */  lw         $a3, 0x0($a1)
    /* C930 8001E120 0D80023C */  lui        $v0, %hi(D_800C8864)
    /* C934 8001E124 6488428C */  lw         $v0, %lo(D_800C8864)($v0)
    /* C938 8001E128 0400A98C */  lw         $t1, 0x4($a1)
    /* C93C 8001E12C 0800A88C */  lw         $t0, 0x8($a1)
    /* C940 8001E130 F800438C */  lw         $v1, 0xF8($v0)
    /* C944 8001E134 FC00458C */  lw         $a1, 0xFC($v0)
    /* C948 8001E138 0001468C */  lw         $a2, 0x100($v0)
    /* C94C 8001E13C 2338E300 */  subu       $a3, $a3, $v1
    /* C950 8001E140 23482501 */  subu       $t1, $t1, $a1
    /* C954 8001E144 23400601 */  subu       $t0, $t0, $a2
    /* C958 8001E148 033A0700 */  sra        $a3, $a3, 8
    /* C95C 8001E14C 034A0900 */  sra        $t1, $t1, 8
    /* C960 8001E150 03420800 */  sra        $t0, $t0, 8
    /* C964 8001E154 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* C968 8001E158 00508948 */  mtc2       $t1, $10 /* handwritten instruction */
    /* C96C 8001E15C 00588848 */  mtc2       $t0, $11 /* handwritten instruction */
    /* C970 8001E160 00000000 */  nop
    /* C974 8001E164 00000000 */  nop
    /* C978 8001E168 12E04B4A */  mvmva      1, 1, 3, 3, 0
    /* C97C 8001E16C 00C80748 */  mfc2       $a3, $25 /* handwritten instruction */
    /* C980 8001E170 00D00948 */  mfc2       $t1, $26 /* handwritten instruction */
    /* C984 8001E174 00D80848 */  mfc2       $t0, $27 /* handwritten instruction */
    /* C988 8001E178 03520A00 */  sra        $t2, $t2, 8
    /* C98C 8001E17C 2A10EA00 */  slt        $v0, $a3, $t2
    /* C990 8001E180 05004010 */  beqz       $v0, .L8001E198
    /* C994 8001E184 21280000 */   addu      $a1, $zero, $zero
    /* C998 8001E188 2A102A01 */  slt        $v0, $t1, $t2
    /* C99C 8001E18C 02004010 */  beqz       $v0, .L8001E198
    /* C9A0 8001E190 00000000 */   nop
    /* C9A4 8001E194 2A280A01 */  slt        $a1, $t0, $t2
  .L8001E198:
    /* C9A8 8001E198 4001828C */  lw         $v0, 0x140($a0)
    /* C9AC 8001E19C 00000000 */  nop
    /* C9B0 8001E1A0 07004004 */  bltz       $v0, .L8001E1C0
    /* C9B4 8001E1A4 00000000 */   nop
    /* C9B8 8001E1A8 0400A010 */  beqz       $a1, .L8001E1BC
    /* C9BC 8001E1AC 21180000 */   addu      $v1, $zero, $zero
    /* C9C0 8001E1B0 23180900 */  negu       $v1, $t1
    /* C9C4 8001E1B4 21104A00 */  addu       $v0, $v0, $t2
    /* C9C8 8001E1B8 2A186200 */  slt        $v1, $v1, $v0
  .L8001E1BC:
    /* C9CC 8001E1BC 21286000 */  addu       $a1, $v1, $zero
  .L8001E1C0:
    /* C9D0 8001E1C0 0800E003 */  jr         $ra
    /* C9D4 8001E1C4 2110A000 */   addu      $v0, $a1, $zero
endlabel func_8001E118
