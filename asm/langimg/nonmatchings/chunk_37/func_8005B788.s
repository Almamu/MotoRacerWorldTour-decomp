nonmatching func_8005B788, 0x148

glabel func_8005B788
    /* 49F98 8005B788 21600000 */  addu       $t4, $zero, $zero
    /* 49F9C 8005B78C 21500000 */  addu       $t2, $zero, $zero
    /* 49FA0 8005B790 21380000 */  addu       $a3, $zero, $zero
    /* 49FA4 8005B794 01000B24 */  addiu      $t3, $zero, 0x1
    /* 49FA8 8005B798 7803898C */  lw         $t1, 0x378($a0)
    /* 49FAC 8005B79C 21300000 */  addu       $a2, $zero, $zero
    /* 49FB0 8005B7A0 E8022825 */  addiu      $t0, $t1, 0x2E8
    /* 49FB4 8005B7A4 88182525 */  addiu      $a1, $t1, 0x1888
  .L8005B7A8:
    /* 49FB8 8005B7A8 0000A38C */  lw         $v1, 0x0($a1)
    /* 49FBC 8005B7AC 00000000 */  nop
    /* 49FC0 8005B7B0 82110300 */  srl        $v0, $v1, 6
    /* 49FC4 8005B7B4 01004230 */  andi       $v0, $v0, 0x1
    /* 49FC8 8005B7B8 05004010 */  beqz       $v0, .L8005B7D0
    /* 49FCC 8005B7BC 80160300 */   sll       $v0, $v1, 26
    /* 49FD0 8005B7C0 C3160200 */  sra        $v0, $v0, 27
    /* 49FD4 8005B7C4 03004B14 */  bne        $v0, $t3, .L8005B7D4
    /* 49FD8 8005B7C8 2110A000 */   addu      $v0, $a1, $zero
    /* 49FDC 8005B7CC 0100C624 */  addiu      $a2, $a2, 0x1
  .L8005B7D0:
    /* 49FE0 8005B7D0 2110A000 */  addu       $v0, $a1, $zero
  .L8005B7D4:
    /* 49FE4 8005B7D4 F4FF4814 */  bne        $v0, $t0, .L8005B7A8
    /* 49FE8 8005B7D8 98FAA524 */   addiu     $a1, $a1, -0x568
    /* 49FEC 8005B7DC 2140C000 */  addu       $t0, $a2, $zero
    /* 49FF0 8005B7E0 02000D24 */  addiu      $t5, $zero, 0x2
    /* 49FF4 8005B7E4 21300000 */  addu       $a2, $zero, $zero
    /* 49FF8 8005B7E8 E8022B25 */  addiu      $t3, $t1, 0x2E8
    /* 49FFC 8005B7EC 88182525 */  addiu      $a1, $t1, 0x1888
  .L8005B7F0:
    /* 4A000 8005B7F0 0000A38C */  lw         $v1, 0x0($a1)
    /* 4A004 8005B7F4 00000000 */  nop
    /* 4A008 8005B7F8 82110300 */  srl        $v0, $v1, 6
    /* 4A00C 8005B7FC 01004230 */  andi       $v0, $v0, 0x1
    /* 4A010 8005B800 05004010 */  beqz       $v0, .L8005B818
    /* 4A014 8005B804 80160300 */   sll       $v0, $v1, 26
    /* 4A018 8005B808 C3160200 */  sra        $v0, $v0, 27
    /* 4A01C 8005B80C 03004D14 */  bne        $v0, $t5, .L8005B81C
    /* 4A020 8005B810 2110A000 */   addu      $v0, $a1, $zero
    /* 4A024 8005B814 0100C624 */  addiu      $a2, $a2, 0x1
  .L8005B818:
    /* 4A028 8005B818 2110A000 */  addu       $v0, $a1, $zero
  .L8005B81C:
    /* 4A02C 8005B81C F4FF4B14 */  bne        $v0, $t3, .L8005B7F0
    /* 4A030 8005B820 98FAA524 */   addiu     $a1, $a1, -0x568
    /* 4A034 8005B824 2128C000 */  addu       $a1, $a2, $zero
    /* 4A038 8005B828 0D00A018 */  blez       $a1, .L8005B860
    /* 4A03C 8005B82C 80100700 */   sll       $v0, $a3, 2
    /* 4A040 8005B830 0D80033C */  lui        $v1, %hi(D_800D5F70)
    /* 4A044 8005B834 705F6324 */  addiu      $v1, $v1, %lo(D_800D5F70)
    /* 4A048 8005B838 21304300 */  addu       $a2, $v0, $v1
  .L8005B83C:
    /* 4A04C 8005B83C 0100E724 */  addiu      $a3, $a3, 0x1
    /* 4A050 8005B840 7803828C */  lw         $v0, 0x378($a0)
    /* 4A054 8005B844 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 4A058 8005B848 21104A00 */  addu       $v0, $v0, $t2
    /* 4A05C 8005B84C 261E4380 */  lb         $v1, 0x1E26($v0)
    /* 4A060 8005B850 01004A25 */  addiu      $t2, $t2, 0x1
    /* 4A064 8005B854 0000C3AC */  sw         $v1, 0x0($a2)
    /* 4A068 8005B858 F8FFA014 */  bnez       $a1, .L8005B83C
    /* 4A06C 8005B85C 0400C624 */   addiu     $a2, $a2, 0x4
  .L8005B860:
    /* 4A070 8005B860 0D000019 */  blez       $t0, .L8005B898
    /* 4A074 8005B864 80100700 */   sll       $v0, $a3, 2
    /* 4A078 8005B868 0D80033C */  lui        $v1, %hi(D_800D5F70)
    /* 4A07C 8005B86C 705F6324 */  addiu      $v1, $v1, %lo(D_800D5F70)
    /* 4A080 8005B870 21284300 */  addu       $a1, $v0, $v1
  .L8005B874:
    /* 4A084 8005B874 0100E724 */  addiu      $a3, $a3, 0x1
    /* 4A088 8005B878 7803828C */  lw         $v0, 0x378($a0)
    /* 4A08C 8005B87C FFFF0825 */  addiu      $t0, $t0, -0x1
    /* 4A090 8005B880 21104C00 */  addu       $v0, $v0, $t4
    /* 4A094 8005B884 241E4380 */  lb         $v1, 0x1E24($v0)
    /* 4A098 8005B888 01008C25 */  addiu      $t4, $t4, 0x1
    /* 4A09C 8005B88C 0000A3AC */  sw         $v1, 0x0($a1)
    /* 4A0A0 8005B890 F8FF0015 */  bnez       $t0, .L8005B874
    /* 4A0A4 8005B894 0400A524 */   addiu     $a1, $a1, 0x4
  .L8005B898:
    /* 4A0A8 8005B898 04000224 */  addiu      $v0, $zero, 0x4
    /* 4A0AC 8005B89C 23204700 */  subu       $a0, $v0, $a3
    /* 4A0B0 8005B8A0 09008018 */  blez       $a0, .L8005B8C8
    /* 4A0B4 8005B8A4 FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 4A0B8 8005B8A8 0D80033C */  lui        $v1, %hi(D_800D5F70)
    /* 4A0BC 8005B8AC 705F6324 */  addiu      $v1, $v1, %lo(D_800D5F70)
    /* 4A0C0 8005B8B0 80100700 */  sll        $v0, $a3, 2
    /* 4A0C4 8005B8B4 21104300 */  addu       $v0, $v0, $v1
  .L8005B8B8:
    /* 4A0C8 8005B8B8 000045AC */  sw         $a1, 0x0($v0)
    /* 4A0CC 8005B8BC FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 4A0D0 8005B8C0 FDFF8104 */  bgez       $a0, .L8005B8B8
    /* 4A0D4 8005B8C4 04004224 */   addiu     $v0, $v0, 0x4
  .L8005B8C8:
    /* 4A0D8 8005B8C8 0800E003 */  jr         $ra
    /* 4A0DC 8005B8CC 00000000 */   nop
endlabel func_8005B788
