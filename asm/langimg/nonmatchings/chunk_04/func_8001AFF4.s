/* Handwritten function */
nonmatching func_8001AFF4, 0x168

glabel func_8001AFF4
    /* 9804 8001AFF4 21608000 */  addu       $t4, $a0, $zero
    /* 9808 8001AFF8 14008725 */  addiu      $a3, $t4, 0x14
    /* 980C 8001AFFC 21C0A000 */  addu       $t8, $a1, $zero
    /* 9810 8001B000 2C00838D */  lw         $v1, 0x2C($t4)
    /* 9814 8001B004 00000000 */  nop
    /* 9818 8001B008 00806230 */  andi       $v0, $v1, 0x8000
    /* 981C 8001B00C 07004010 */  beqz       $v0, .L8001B02C
    /* 9820 8001B010 30008A25 */   addiu     $t2, $t4, 0x30
    /* 9824 8001B014 21680000 */  addu       $t5, $zero, $zero
    /* 9828 8001B018 21580000 */  addu       $t3, $zero, $zero
    /* 982C 8001B01C 21480000 */  addu       $t1, $zero, $zero
    /* 9830 8001B020 21780000 */  addu       $t7, $zero, $zero
    /* 9834 8001B024 1C6C0008 */  j          .L8001B070
    /* 9838 8001B028 21700000 */   addu      $t6, $zero, $zero
  .L8001B02C:
    /* 983C 8001B02C 037C0300 */  sra        $t7, $v1, 16
    /* 9840 8001B030 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 9844 8001B034 0C80023C */  lui        $v0, %hi(D_800BF3A0)
    /* 9848 8001B038 A0F34224 */  addiu      $v0, $v0, %lo(D_800BF3A0)
    /* 984C 8001B03C 80180300 */  sll        $v1, $v1, 2
    /* 9850 8001B040 21186200 */  addu       $v1, $v1, $v0
    /* 9854 8001B044 0000648C */  lw         $a0, 0x0($v1)
    /* 9858 8001B048 06004E85 */  lh         $t6, 0x6($t2)
    /* 985C 8001B04C 30008285 */  lh         $v0, 0x30($t4)
    /* 9860 8001B050 04004385 */  lh         $v1, 0x4($t2)
    /* 9864 8001B054 02004595 */  lhu        $a1, 0x2($t2)
    /* 9868 8001B058 026C0400 */  srl        $t5, $a0, 16
    /* 986C 8001B05C FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 9870 8001B060 00140200 */  sll        $v0, $v0, 16
    /* 9874 8001B064 25588200 */  or         $t3, $a0, $v0
    /* 9878 8001B068 001C0300 */  sll        $v1, $v1, 16
    /* 987C 8001B06C 2548A300 */  or         $t1, $a1, $v1
  .L8001B070:
    /* 9880 8001B070 0200E894 */  lhu        $t0, 0x2($a3)
    /* 9884 8001B074 0200E284 */  lh         $v0, 0x2($a3)
    /* 9888 8001B078 0000E394 */  lhu        $v1, 0x0($a3)
    /* 988C 8001B07C 0400E484 */  lh         $a0, 0x4($a3)
    /* 9890 8001B080 0600E584 */  lh         $a1, 0x6($a3)
    /* 9894 8001B084 00140200 */  sll        $v0, $v0, 16
    /* 9898 8001B088 25186200 */  or         $v1, $v1, $v0
    /* 989C 8001B08C 0040CD48 */  ctc2       $t5, $8 /* handwritten instruction */
    /* 98A0 8001B090 0048CB48 */  ctc2       $t3, $9 /* handwritten instruction */
    /* 98A4 8001B094 0050C948 */  ctc2       $t1, $10 /* handwritten instruction */
    /* 98A8 8001B098 0058C348 */  ctc2       $v1, $11 /* handwritten instruction */
    /* 98AC 8001B09C 0060C448 */  ctc2       $a0, $12 /* handwritten instruction */
    /* 98B0 8001B0A0 0068CF48 */  ctc2       $t7, $13 /* handwritten instruction */
    /* 98B4 8001B0A4 0070CE48 */  ctc2       $t6, $14 /* handwritten instruction */
    /* 98B8 8001B0A8 0078C548 */  ctc2       $a1, $15 /* handwritten instruction */
    /* 98BC 8001B0AC 21280000 */  addu       $a1, $zero, $zero
    /* 98C0 8001B0B0 0000048F */  lw         $a0, 0x0($t8)
    /* 98C4 8001B0B4 0000828D */  lw         $v0, 0x0($t4)
    /* 98C8 8001B0B8 0800038F */  lw         $v1, 0x8($t8)
    /* 98CC 8001B0BC 23208200 */  subu       $a0, $a0, $v0
    /* 98D0 8001B0C0 0800828D */  lw         $v0, 0x8($t4)
    /* 98D4 8001B0C4 43210400 */  sra        $a0, $a0, 5
    /* 98D8 8001B0C8 23186200 */  subu       $v1, $v1, $v0
    /* 98DC 8001B0CC 43190300 */  sra        $v1, $v1, 5
    /* 98E0 8001B0D0 00488448 */  mtc2       $a0, $9 /* handwritten instruction */
    /* 98E4 8001B0D4 00508548 */  mtc2       $a1, $10 /* handwritten instruction */
    /* 98E8 8001B0D8 00588348 */  mtc2       $v1, $11 /* handwritten instruction */
    /* 98EC 8001B0DC 00000000 */  nop
    /* 98F0 8001B0E0 00000000 */  nop
    /* 98F4 8001B0E4 12A04B4A */  mvmva      1, 1, 3, 1, 0
    /* 98F8 8001B0E8 00C80248 */  mfc2       $v0, $25 /* handwritten instruction */
    /* 98FC 8001B0EC 00D80548 */  mfc2       $a1, $27 /* handwritten instruction */
    /* 9900 8001B0F0 04004018 */  blez       $v0, .L8001B104
    /* 9904 8001B0F4 00000000 */   nop
    /* 9908 8001B0F8 21384001 */  addu       $a3, $t2, $zero
    /* 990C 8001B0FC 00D00548 */  mfc2       $a1, $26 /* handwritten instruction */
    /* 9910 8001B100 0200E894 */  lhu        $t0, 0x2($a3)
  .L8001B104:
    /* 9914 8001B104 0A00C010 */  beqz       $a2, .L8001B130
    /* 9918 8001B108 001C0800 */   sll       $v1, $t0, 16
    /* 991C 8001B10C 0000E284 */  lh         $v0, 0x0($a3)
    /* 9920 8001B110 0400E484 */  lh         $a0, 0x4($a3)
    /* 9924 8001B114 03190300 */  sra        $v1, $v1, 4
    /* 9928 8001B118 0400C3AC */  sw         $v1, 0x4($a2)
    /* 992C 8001B11C 00130200 */  sll        $v0, $v0, 12
    /* 9930 8001B120 00230400 */  sll        $a0, $a0, 12
    /* 9934 8001B124 0000C2AC */  sw         $v0, 0x0($a2)
    /* 9938 8001B128 0800C4AC */  sw         $a0, 0x8($a2)
    /* 993C 8001B12C 0200E894 */  lhu        $t0, 0x2($a3)
  .L8001B130:
    /* 9940 8001B130 00230500 */  sll        $a0, $a1, 12
    /* 9944 8001B134 001C0800 */  sll        $v1, $t0, 16
    /* 9948 8001B138 031C0300 */  sra        $v1, $v1, 16
    /* 994C 8001B13C 1A008300 */  div        $zero, $a0, $v1
    /* 9950 8001B140 12180000 */  mflo       $v1
    /* 9954 8001B144 0400828D */  lw         $v0, 0x4($t4)
    /* 9958 8001B148 00000000 */  nop
    /* 995C 8001B14C 03120200 */  sra        $v0, $v0, 8
    /* 9960 8001B150 40210300 */  sll        $a0, $v1, 5
    /* 9964 8001B154 0800E003 */  jr         $ra
    /* 9968 8001B158 23104400 */   subu      $v0, $v0, $a0
endlabel func_8001AFF4
