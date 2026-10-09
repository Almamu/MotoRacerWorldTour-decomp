nonmatching func_800AD884, 0x2B0

glabel func_800AD884
    /* 9C094 800AD884 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9C098 800AD888 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9C09C 800AD88C 21988000 */  addu       $s3, $a0, $zero
    /* 9C0A0 800AD890 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9C0A4 800AD894 2180A000 */  addu       $s0, $a1, $zero
    /* 9C0A8 800AD898 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9C0AC 800AD89C 2188C000 */  addu       $s1, $a2, $zero
    /* 9C0B0 800AD8A0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9C0B4 800AD8A4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9C0B8 800AD8A8 08B8020C */  jal        func_800AE020
    /* 9C0BC 800AD8AC 2190E000 */   addu      $s2, $a3, $zero
    /* 9C0C0 800AD8B0 34B60208 */  j          .L800AD8D0
    /* 9C0C4 800AD8B4 00000000 */   nop
  .L800AD8B8:
    /* 9C0C8 800AD8B8 15B8020C */  jal        func_800AE054
    /* 9C0CC 800AD8BC 00000000 */   nop
    /* 9C0D0 800AD8C0 95004014 */  bnez       $v0, .L800ADB18
    /* 9C0D4 800AD8C4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 9C0D8 800AD8C8 CDB6020C */  jal        func_800ADB34
    /* 9C0DC 800AD8CC 00000000 */   nop
  .L800AD8D0:
    /* 9C0E0 800AD8D0 0C80023C */  lui        $v0, %hi(D_800BF368)
    /* 9C0E4 800AD8D4 68F3428C */  lw         $v0, %lo(D_800BF368)($v0)
    /* 9C0E8 800AD8D8 0C80033C */  lui        $v1, %hi(D_800BF36C)
    /* 9C0EC 800AD8DC 6CF3638C */  lw         $v1, %lo(D_800BF36C)($v1)
    /* 9C0F0 800AD8E0 01004224 */  addiu      $v0, $v0, 0x1
    /* 9C0F4 800AD8E4 3F004230 */  andi       $v0, $v0, 0x3F
    /* 9C0F8 800AD8E8 F3FF4310 */  beq        $v0, $v1, .L800AD8B8
    /* 9C0FC 800AD8EC 00000000 */   nop
    /* 9C100 800AD8F0 79AB020C */  jal        func_800AADE4
    /* 9C104 800AD8F4 21200000 */   addu      $a0, $zero, $zero
    /* 9C108 800AD8F8 0C80043C */  lui        $a0, %hi(D_800BF240)
    /* 9C10C 800AD8FC 40F28424 */  addiu      $a0, $a0, %lo(D_800BF240)
    /* 9C110 800AD900 0C80013C */  lui        $at, %hi(D_800BF370)
    /* 9C114 800AD904 70F322AC */  sw         $v0, %lo(D_800BF370)($at)
    /* 9C118 800AD908 01008390 */  lbu        $v1, 0x1($a0)
    /* 9C11C 800AD90C 01000224 */  addiu      $v0, $zero, 0x1
    /* 9C120 800AD910 14006010 */  beqz       $v1, .L800AD964
    /* 9C124 800AD914 080082AC */   sw        $v0, 0x8($a0)
    /* 9C128 800AD918 0C80033C */  lui        $v1, %hi(D_800BF368)
    /* 9C12C 800AD91C 68F3638C */  lw         $v1, %lo(D_800BF368)($v1)
    /* 9C130 800AD920 0C80023C */  lui        $v0, %hi(D_800BF36C)
    /* 9C134 800AD924 6CF3428C */  lw         $v0, %lo(D_800BF36C)($v0)
    /* 9C138 800AD928 00000000 */  nop
    /* 9C13C 800AD92C 1E006214 */  bne        $v1, $v0, .L800AD9A8
    /* 9C140 800AD930 00000000 */   nop
    /* 9C144 800AD934 0C80023C */  lui        $v0, %hi(D_800BF354)
    /* 9C148 800AD938 54F3428C */  lw         $v0, %lo(D_800BF354)($v0)
    /* 9C14C 800AD93C 00000000 */  nop
    /* 9C150 800AD940 0000428C */  lw         $v0, 0x0($v0)
    /* 9C154 800AD944 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 9C158 800AD948 24104300 */  and        $v0, $v0, $v1
    /* 9C15C 800AD94C 16004014 */  bnez       $v0, .L800AD9A8
    /* 9C160 800AD950 00000000 */   nop
    /* 9C164 800AD954 0C00828C */  lw         $v0, 0xC($a0)
    /* 9C168 800AD958 00000000 */  nop
    /* 9C16C 800AD95C 12004014 */  bnez       $v0, .L800AD9A8
    /* 9C170 800AD960 00000000 */   nop
  .L800AD964:
    /* 9C174 800AD964 0C80033C */  lui        $v1, %hi(D_800BF348)
    /* 9C178 800AD968 48F3638C */  lw         $v1, %lo(D_800BF348)($v1)
    /* 9C17C 800AD96C 0004043C */  lui        $a0, (0x4000000 >> 16)
  .L800AD970:
    /* 9C180 800AD970 0000628C */  lw         $v0, 0x0($v1)
    /* 9C184 800AD974 00000000 */  nop
    /* 9C188 800AD978 24104400 */  and        $v0, $v0, $a0
    /* 9C18C 800AD97C FCFF4010 */  beqz       $v0, .L800AD970
    /* 9C190 800AD980 00000000 */   nop
    /* 9C194 800AD984 21200002 */  addu       $a0, $s0, $zero
    /* 9C198 800AD988 09F86002 */  jalr       $s3
    /* 9C19C 800AD98C 21284002 */   addu      $a1, $s2, $zero
    /* 9C1A0 800AD990 0C80043C */  lui        $a0, %hi(D_800BF370)
    /* 9C1A4 800AD994 70F3848C */  lw         $a0, %lo(D_800BF370)($a0)
    /* 9C1A8 800AD998 79AB020C */  jal        func_800AADE4
    /* 9C1AC 800AD99C 00000000 */   nop
    /* 9C1B0 800AD9A0 C6B60208 */  j          .L800ADB18
    /* 9C1B4 800AD9A4 21100000 */   addu      $v0, $zero, $zero
  .L800AD9A8:
    /* 9C1B8 800AD9A8 0B80053C */  lui        $a1, %hi(func_800ADB34)
    /* 9C1BC 800AD9AC 34DBA524 */  addiu      $a1, $a1, %lo(func_800ADB34)
    /* 9C1C0 800AD9B0 50AB020C */  jal        func_800AAD40
    /* 9C1C4 800AD9B4 02000424 */   addiu     $a0, $zero, 0x2
    /* 9C1C8 800AD9B8 2A002012 */  beqz       $s1, .L800ADA64
    /* 9C1CC 800AD9BC 21300000 */   addu      $a2, $zero, $zero
    /* 9C1D0 800AD9C0 0E80083C */  lui        $t0, %hi(D_800DCAF4)
    /* 9C1D4 800AD9C4 F4CA0825 */  addiu      $t0, $t0, %lo(D_800DCAF4)
    /* 9C1D8 800AD9C8 21380002 */  addu       $a3, $s0, $zero
    /* 9C1DC 800AD9CC 21102002 */  addu       $v0, $s1, $zero
  .L800AD9D0:
    /* 9C1E0 800AD9D0 02004104 */  bgez       $v0, .L800AD9DC
    /* 9C1E4 800AD9D4 00000000 */   nop
    /* 9C1E8 800AD9D8 03004224 */  addiu      $v0, $v0, 0x3
  .L800AD9DC:
    /* 9C1EC 800AD9DC 83100200 */  sra        $v0, $v0, 2
    /* 9C1F0 800AD9E0 2A10C200 */  slt        $v0, $a2, $v0
    /* 9C1F4 800AD9E4 0E004010 */  beqz       $v0, .L800ADA20
    /* 9C1F8 800AD9E8 80200600 */   sll       $a0, $a2, 2
    /* 9C1FC 800AD9EC 0000E58C */  lw         $a1, 0x0($a3)
    /* 9C200 800AD9F0 0400E724 */  addiu      $a3, $a3, 0x4
    /* 9C204 800AD9F4 0C80033C */  lui        $v1, %hi(D_800BF368)
    /* 9C208 800AD9F8 68F3638C */  lw         $v1, %lo(D_800BF368)($v1)
    /* 9C20C 800AD9FC 0100C624 */  addiu      $a2, $a2, 0x1
    /* 9C210 800ADA00 40100300 */  sll        $v0, $v1, 1
    /* 9C214 800ADA04 21104300 */  addu       $v0, $v0, $v1
    /* 9C218 800ADA08 40110200 */  sll        $v0, $v0, 5
    /* 9C21C 800ADA0C 21104800 */  addu       $v0, $v0, $t0
    /* 9C220 800ADA10 21208200 */  addu       $a0, $a0, $v0
    /* 9C224 800ADA14 000085AC */  sw         $a1, 0x0($a0)
    /* 9C228 800ADA18 74B60208 */  j          .L800AD9D0
    /* 9C22C 800ADA1C 21102002 */   addu      $v0, $s1, $zero
  .L800ADA20:
    /* 9C230 800ADA20 0C80023C */  lui        $v0, %hi(D_800BF368)
    /* 9C234 800ADA24 68F3428C */  lw         $v0, %lo(D_800BF368)($v0)
    /* 9C238 800ADA28 0C80033C */  lui        $v1, %hi(D_800BF368)
    /* 9C23C 800ADA2C 68F3638C */  lw         $v1, %lo(D_800BF368)($v1)
    /* 9C240 800ADA30 40200200 */  sll        $a0, $v0, 1
    /* 9C244 800ADA34 21208200 */  addu       $a0, $a0, $v0
    /* 9C248 800ADA38 40210400 */  sll        $a0, $a0, 5
    /* 9C24C 800ADA3C 40100300 */  sll        $v0, $v1, 1
    /* 9C250 800ADA40 21104300 */  addu       $v0, $v0, $v1
    /* 9C254 800ADA44 40110200 */  sll        $v0, $v0, 5
    /* 9C258 800ADA48 0E80033C */  lui        $v1, %hi(D_800DCAF4)
    /* 9C25C 800ADA4C F4CA6324 */  addiu      $v1, $v1, %lo(D_800DCAF4)
    /* 9C260 800ADA50 21104300 */  addu       $v0, $v0, $v1
    /* 9C264 800ADA54 0E80013C */  lui        $at, %hi(D_800DCAEC)
    /* 9C268 800ADA58 21082400 */  addu       $at, $at, $a0
    /* 9C26C 800ADA5C A2B60208 */  j          .L800ADA88
    /* 9C270 800ADA60 ECCA22AC */   sw        $v0, %lo(D_800DCAEC)($at)
  .L800ADA64:
    /* 9C274 800ADA64 0C80033C */  lui        $v1, %hi(D_800BF368)
    /* 9C278 800ADA68 68F3638C */  lw         $v1, %lo(D_800BF368)($v1)
    /* 9C27C 800ADA6C 00000000 */  nop
    /* 9C280 800ADA70 40100300 */  sll        $v0, $v1, 1
    /* 9C284 800ADA74 21104300 */  addu       $v0, $v0, $v1
    /* 9C288 800ADA78 40110200 */  sll        $v0, $v0, 5
    /* 9C28C 800ADA7C 0E80013C */  lui        $at, %hi(D_800DCAEC)
    /* 9C290 800ADA80 21082200 */  addu       $at, $at, $v0
    /* 9C294 800ADA84 ECCA30AC */  sw         $s0, %lo(D_800DCAEC)($at)
  .L800ADA88:
    /* 9C298 800ADA88 0C80033C */  lui        $v1, %hi(D_800BF368)
    /* 9C29C 800ADA8C 68F3638C */  lw         $v1, %lo(D_800BF368)($v1)
    /* 9C2A0 800ADA90 00000000 */  nop
    /* 9C2A4 800ADA94 40100300 */  sll        $v0, $v1, 1
    /* 9C2A8 800ADA98 21104300 */  addu       $v0, $v0, $v1
    /* 9C2AC 800ADA9C 40110200 */  sll        $v0, $v0, 5
    /* 9C2B0 800ADAA0 0E80013C */  lui        $at, %hi(D_800DCAF0)
    /* 9C2B4 800ADAA4 21082200 */  addu       $at, $at, $v0
    /* 9C2B8 800ADAA8 F0CA32AC */  sw         $s2, %lo(D_800DCAF0)($at)
    /* 9C2BC 800ADAAC 0C80033C */  lui        $v1, %hi(D_800BF368)
    /* 9C2C0 800ADAB0 68F3638C */  lw         $v1, %lo(D_800BF368)($v1)
    /* 9C2C4 800ADAB4 00000000 */  nop
    /* 9C2C8 800ADAB8 40100300 */  sll        $v0, $v1, 1
    /* 9C2CC 800ADABC 21104300 */  addu       $v0, $v0, $v1
    /* 9C2D0 800ADAC0 40110200 */  sll        $v0, $v0, 5
    /* 9C2D4 800ADAC4 0E80013C */  lui        $at, %hi(D_800DCAE8)
    /* 9C2D8 800ADAC8 21082200 */  addu       $at, $at, $v0
    /* 9C2DC 800ADACC E8CA33AC */  sw         $s3, %lo(D_800DCAE8)($at)
    /* 9C2E0 800ADAD0 0C80023C */  lui        $v0, %hi(D_800BF368)
    /* 9C2E4 800ADAD4 68F3428C */  lw         $v0, %lo(D_800BF368)($v0)
    /* 9C2E8 800ADAD8 0C80043C */  lui        $a0, %hi(D_800BF370)
    /* 9C2EC 800ADADC 70F3848C */  lw         $a0, %lo(D_800BF370)($a0)
    /* 9C2F0 800ADAE0 01004224 */  addiu      $v0, $v0, 0x1
    /* 9C2F4 800ADAE4 3F004230 */  andi       $v0, $v0, 0x3F
    /* 9C2F8 800ADAE8 0C80013C */  lui        $at, %hi(D_800BF368)
    /* 9C2FC 800ADAEC 79AB020C */  jal        func_800AADE4
    /* 9C300 800ADAF0 68F322AC */   sw        $v0, %lo(D_800BF368)($at)
    /* 9C304 800ADAF4 CDB6020C */  jal        func_800ADB34
    /* 9C308 800ADAF8 00000000 */   nop
    /* 9C30C 800ADAFC 0C80023C */  lui        $v0, %hi(D_800BF368)
    /* 9C310 800ADB00 68F3428C */  lw         $v0, %lo(D_800BF368)($v0)
    /* 9C314 800ADB04 0C80033C */  lui        $v1, %hi(D_800BF36C)
    /* 9C318 800ADB08 6CF3638C */  lw         $v1, %lo(D_800BF36C)($v1)
    /* 9C31C 800ADB0C 00000000 */  nop
    /* 9C320 800ADB10 23104300 */  subu       $v0, $v0, $v1
    /* 9C324 800ADB14 3F004230 */  andi       $v0, $v0, 0x3F
  .L800ADB18:
    /* 9C328 800ADB18 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9C32C 800ADB1C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9C330 800ADB20 1800B28F */  lw         $s2, 0x18($sp)
    /* 9C334 800ADB24 1400B18F */  lw         $s1, 0x14($sp)
    /* 9C338 800ADB28 1000B08F */  lw         $s0, 0x10($sp)
    /* 9C33C 800ADB2C 0800E003 */  jr         $ra
    /* 9C340 800ADB30 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AD884
