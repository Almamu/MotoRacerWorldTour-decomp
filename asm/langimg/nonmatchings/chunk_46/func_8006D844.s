nonmatching func_8006D844, 0x724

glabel func_8006D844
    /* 5C054 8006D844 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 5C058 8006D848 5400B7AF */  sw         $s7, 0x54($sp)
    /* 5C05C 8006D84C 21B8A000 */  addu       $s7, $a1, $zero
    /* 5C060 8006D850 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 5C064 8006D854 21888000 */  addu       $s1, $a0, $zero
    /* 5C068 8006D858 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 5C06C 8006D85C 5800BEAF */  sw         $fp, 0x58($sp)
    /* 5C070 8006D860 5000B6AF */  sw         $s6, 0x50($sp)
    /* 5C074 8006D864 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 5C078 8006D868 4800B4AF */  sw         $s4, 0x48($sp)
    /* 5C07C 8006D86C 4400B3AF */  sw         $s3, 0x44($sp)
    /* 5C080 8006D870 4000B2AF */  sw         $s2, 0x40($sp)
    /* 5C084 8006D874 3800B0AF */  sw         $s0, 0x38($sp)
    /* 5C088 8006D878 0400308E */  lw         $s0, 0x4($s1)
    /* 5C08C 8006D87C 00000000 */  nop
    /* 5C090 8006D880 AD010012 */  beqz       $s0, .L8006DF38
    /* 5C094 8006D884 21B0C000 */   addu      $s6, $a2, $zero
    /* 5C098 8006D888 21F00000 */  addu       $fp, $zero, $zero
    /* 5C09C 8006D88C 3000A0AF */  sw         $zero, 0x30($sp)
    /* 5C0A0 8006D890 38000296 */  lhu        $v0, 0x38($s0)
    /* 5C0A4 8006D894 1400248E */  lw         $a0, 0x14($s1)
    /* 5C0A8 8006D898 0D80083C */  lui        $t0, %hi(D_800D11D0)
    /* 5C0AC 8006D89C 260022A6 */  sh         $v0, 0x26($s1)
    /* 5C0B0 8006D8A0 0D80033C */  lui        $v1, %hi(D_800D6124)
    /* 5C0B4 8006D8A4 2461638C */  lw         $v1, %lo(D_800D6124)($v1)
    /* 5C0B8 8006D8A8 D0110225 */  addiu      $v0, $t0, %lo(D_800D11D0)
    /* 5C0BC 8006D8AC D41C56AC */  sw         $s6, 0x1CD4($v0)
    /* 5C0C0 8006D8B0 D81C40AC */  sw         $zero, 0x1CD8($v0)
    /* 5C0C4 8006D8B4 2E000296 */  lhu        $v0, 0x2E($s0)
    /* 5C0C8 8006D8B8 80980300 */  sll        $s3, $v1, 2
    /* 5C0CC 8006D8BC 83981300 */  sra        $s3, $s3, 2
    /* 5C0D0 8006D8C0 06004230 */  andi       $v0, $v0, 0x6
    /* 5C0D4 8006D8C4 15004010 */  beqz       $v0, .L8006D91C
    /* 5C0D8 8006D8C8 23A86402 */   subu      $s5, $s3, $a0
    /* 5C0DC 8006D8CC 2000A427 */  addiu      $a0, $sp, 0x20
    /* 5C0E0 8006D8D0 2128C002 */  addu       $a1, $s6, $zero
    /* 5C0E4 8006D8D4 3466020C */  jal        func_800998D0
    /* 5C0E8 8006D8D8 F800E624 */   addiu     $a2, $a3, 0xF8
    /* 5C0EC 8006D8DC 1000A727 */  addiu      $a3, $sp, 0x10
    /* 5C0F0 8006D8E0 2000A28F */  lw         $v0, 0x20($sp)
    /* 5C0F4 8006D8E4 2400A38F */  lw         $v1, 0x24($sp)
    /* 5C0F8 8006D8E8 2800A58F */  lw         $a1, 0x28($sp)
    /* 5C0FC 8006D8EC 2120E000 */  addu       $a0, $a3, $zero
    /* 5C100 8006D8F0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 5C104 8006D8F4 0400E3AC */  sw         $v1, 0x4($a3)
    /* 5C108 8006D8F8 8F64020C */  jal        func_8009923C
    /* 5C10C 8006D8FC 0800E5AC */   sw        $a1, 0x8($a3)
    /* 5C110 8006D900 3E000386 */  lh         $v1, 0x3E($s0)
    /* 5C114 8006D904 00000000 */  nop
    /* 5C118 8006D908 001B0300 */  sll        $v1, $v1, 12
    /* 5C11C 8006D90C 2A186200 */  slt        $v1, $v1, $v0
    /* 5C120 8006D910 02006010 */  beqz       $v1, .L8006D91C
    /* 5C124 8006D914 3000A2AF */   sw        $v0, 0x30($sp)
    /* 5C128 8006D918 21B80000 */  addu       $s7, $zero, $zero
  .L8006D91C:
    /* 5C12C 8006D91C 0700E012 */  beqz       $s7, .L8006D93C
    /* 5C130 8006D920 00000000 */   nop
    /* 5C134 8006D924 2B002282 */  lb         $v0, 0x2B($s1)
    /* 5C138 8006D928 00000000 */  nop
    /* 5C13C 8006D92C 03004014 */  bnez       $v0, .L8006D93C
    /* 5C140 8006D930 00000000 */   nop
    /* 5C144 8006D934 2CB5010C */  jal        func_8006D4B0
    /* 5C148 8006D938 21202002 */   addu      $a0, $s1, $zero
  .L8006D93C:
    /* 5C14C 8006D93C 2E000296 */  lhu        $v0, 0x2E($s0)
    /* 5C150 8006D940 00000000 */  nop
    /* 5C154 8006D944 00084230 */  andi       $v0, $v0, 0x800
    /* 5C158 8006D948 16004010 */  beqz       $v0, .L8006D9A4
    /* 5C15C 8006D94C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 5C160 8006D950 A038838F */  lw         $v1, %gp_rel(D_800C7F90)($gp)
    /* 5C164 8006D954 0C80053C */  lui        $a1, %hi(D_800C5E14)
    /* 5C168 8006D958 145EA58C */  lw         $a1, %lo(D_800C5E14)($a1)
    /* 5C16C 8006D95C 40100300 */  sll        $v0, $v1, 1
    /* 5C170 8006D960 21104300 */  addu       $v0, $v0, $v1
    /* 5C174 8006D964 80100200 */  sll        $v0, $v0, 2
    /* 5C178 8006D968 23104300 */  subu       $v0, $v0, $v1
    /* 5C17C 8006D96C 80100200 */  sll        $v0, $v0, 2
    /* 5C180 8006D970 23104300 */  subu       $v0, $v0, $v1
    /* 5C184 8006D974 80100200 */  sll        $v0, $v0, 2
    /* 5C188 8006D978 21104300 */  addu       $v0, $v0, $v1
    /* 5C18C 8006D97C 7803A68C */  lw         $a2, 0x378($a1)
    /* 5C190 8006D980 C0100200 */  sll        $v0, $v0, 3
    /* 5C194 8006D984 21104600 */  addu       $v0, $v0, $a2
    /* 5C198 8006D988 1803458C */  lw         $a1, 0x318($v0)
    /* 5C19C 8006D98C 2130C002 */  addu       $a2, $s6, $zero
    /* 5C1A0 8006D990 3466020C */  jal        func_800998D0
    /* 5C1A4 8006D994 6400A524 */   addiu     $a1, $a1, 0x64
    /* 5C1A8 8006D998 8F64020C */  jal        func_8009923C
    /* 5C1AC 8006D99C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 5C1B0 8006D9A0 21F04000 */  addu       $fp, $v0, $zero
  .L8006D9A4:
    /* 5C1B4 8006D9A4 0500E016 */  bnez       $s7, .L8006D9BC
    /* 5C1B8 8006D9A8 00000000 */   nop
    /* 5C1BC 8006D9AC F9B5010C */  jal        func_8006D7E4
    /* 5C1C0 8006D9B0 21202002 */   addu      $a0, $s1, $zero
    /* 5C1C4 8006D9B4 C1B70108 */  j          .L8006DF04
    /* 5C1C8 8006D9B8 00000000 */   nop
  .L8006D9BC:
    /* 5C1CC 8006D9BC 2E000496 */  lhu        $a0, 0x2E($s0)
    /* 5C1D0 8006D9C0 00000000 */  nop
    /* 5C1D4 8006D9C4 01008230 */  andi       $v0, $a0, 0x1
    /* 5C1D8 8006D9C8 0C004010 */  beqz       $v0, .L8006D9FC
    /* 5C1DC 8006D9CC 05000224 */   addiu     $v0, $zero, 0x5
    /* 5C1E0 8006D9D0 28002392 */  lbu        $v1, 0x28($s1)
    /* 5C1E4 8006D9D4 00000000 */  nop
    /* 5C1E8 8006D9D8 08006214 */  bne        $v1, $v0, .L8006D9FC
    /* 5C1EC 8006D9DC 00000000 */   nop
    /* 5C1F0 8006D9E0 2A002282 */  lb         $v0, 0x2A($s1)
    /* 5C1F4 8006D9E4 00000000 */  nop
    /* 5C1F8 8006D9E8 04004010 */  beqz       $v0, .L8006D9FC
    /* 5C1FC 8006D9EC 00000000 */   nop
    /* 5C200 8006D9F0 D2B5010C */  jal        func_8006D748
    /* 5C204 8006D9F4 21202002 */   addu      $a0, $s1, $zero
    /* 5C208 8006D9F8 2E000496 */  lhu        $a0, 0x2E($s0)
  .L8006D9FC:
    /* 5C20C 8006D9FC 36001486 */  lh         $s4, 0x36($s0)
    /* 5C210 8006DA00 00018230 */  andi       $v0, $a0, 0x100
    /* 5C214 8006DA04 18004010 */  beqz       $v0, .L8006DA68
    /* 5C218 8006DA08 00000000 */   nop
    /* 5C21C 8006DA0C 2800068E */  lw         $a2, 0x28($s0)
    /* 5C220 8006DA10 00000000 */  nop
    /* 5C224 8006DA14 1400C010 */  beqz       $a2, .L8006DA68
    /* 5C228 8006DA18 21900000 */   addu      $s2, $zero, $zero
    /* 5C22C 8006DA1C 0300C104 */  bgez       $a2, .L8006DA2C
    /* 5C230 8006DA20 2120A002 */   addu      $a0, $s5, $zero
    /* 5C234 8006DA24 23300600 */  negu       $a2, $a2
    /* 5C238 8006DA28 00081224 */  addiu      $s2, $zero, 0x800
  .L8006DA2C:
    /* 5C23C 8006DA2C E89B020C */  jal        func_800A6FA0
    /* 5C240 8006DA30 00100524 */   addiu     $a1, $zero, 0x1000
    /* 5C244 8006DA34 0C80073C */  lui        $a3, %hi(D_800BF3A0)
    /* 5C248 8006DA38 A0F3E724 */  addiu      $a3, $a3, %lo(D_800BF3A0)
    /* 5C24C 8006DA3C 21104202 */  addu       $v0, $s2, $v0
    /* 5C250 8006DA40 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 5C254 8006DA44 80100200 */  sll        $v0, $v0, 2
    /* 5C258 8006DA48 21104700 */  addu       $v0, $v0, $a3
    /* 5C25C 8006DA4C 2C000386 */  lh         $v1, 0x2C($s0)
    /* 5C260 8006DA50 00004484 */  lh         $a0, 0x0($v0)
    /* 5C264 8006DA54 00000000 */  nop
    /* 5C268 8006DA58 18006400 */  mult       $v1, $a0
    /* 5C26C 8006DA5C 12180000 */  mflo       $v1
    /* 5C270 8006DA60 031B0300 */  sra        $v1, $v1, 12
    /* 5C274 8006DA64 21A08302 */  addu       $s4, $s4, $v1
  .L8006DA68:
    /* 5C278 8006DA68 28002392 */  lbu        $v1, 0x28($s1)
    /* 5C27C 8006DA6C 05000624 */  addiu      $a2, $zero, 0x5
    /* 5C280 8006DA70 77006610 */  beq        $v1, $a2, .L8006DC50
    /* 5C284 8006DA74 06006228 */   slti      $v0, $v1, 0x6
    /* 5C288 8006DA78 0F004010 */  beqz       $v0, .L8006DAB8
    /* 5C28C 8006DA7C 02000424 */   addiu     $a0, $zero, 0x2
    /* 5C290 8006DA80 24006410 */  beq        $v1, $a0, .L8006DB14
    /* 5C294 8006DA84 03006228 */   slti      $v0, $v1, 0x3
    /* 5C298 8006DA88 05004010 */  beqz       $v0, .L8006DAA0
    /* 5C29C 8006DA8C 03000224 */   addiu     $v0, $zero, 0x3
    /* 5C2A0 8006DA90 19006010 */  beqz       $v1, .L8006DAF8
    /* 5C2A4 8006DA94 00000000 */   nop
    /* 5C2A8 8006DA98 BFB70108 */  j          .L8006DEFC
    /* 5C2AC 8006DA9C 240034A6 */   sh        $s4, 0x24($s1)
  .L8006DAA0:
    /* 5C2B0 8006DAA0 2B006210 */  beq        $v1, $v0, .L8006DB50
    /* 5C2B4 8006DAA4 04000224 */   addiu     $v0, $zero, 0x4
    /* 5C2B8 8006DAA8 49006210 */  beq        $v1, $v0, .L8006DBD0
    /* 5C2BC 8006DAAC 1800B402 */   mult      $s5, $s4
    /* 5C2C0 8006DAB0 BFB70108 */  j          .L8006DEFC
    /* 5C2C4 8006DAB4 240034A6 */   sh        $s4, 0x24($s1)
  .L8006DAB8:
    /* 5C2C8 8006DAB8 08000224 */  addiu      $v0, $zero, 0x8
    /* 5C2CC 8006DABC FC006210 */  beq        $v1, $v0, .L8006DEB0
    /* 5C2D0 8006DAC0 09006228 */   slti      $v0, $v1, 0x9
    /* 5C2D4 8006DAC4 07004010 */  beqz       $v0, .L8006DAE4
    /* 5C2D8 8006DAC8 06000224 */   addiu     $v0, $zero, 0x6
    /* 5C2DC 8006DACC C7006210 */  beq        $v1, $v0, .L8006DDEC
    /* 5C2E0 8006DAD0 07000224 */   addiu     $v0, $zero, 0x7
    /* 5C2E4 8006DAD4 EA006210 */  beq        $v1, $v0, .L8006DE80
    /* 5C2E8 8006DAD8 00000000 */   nop
    /* 5C2EC 8006DADC BFB70108 */  j          .L8006DEFC
    /* 5C2F0 8006DAE0 240034A6 */   sh        $s4, 0x24($s1)
  .L8006DAE4:
    /* 5C2F4 8006DAE4 09000224 */  addiu      $v0, $zero, 0x9
    /* 5C2F8 8006DAE8 F8006210 */  beq        $v1, $v0, .L8006DECC
    /* 5C2FC 8006DAEC 00000000 */   nop
    /* 5C300 8006DAF0 BFB70108 */  j          .L8006DEFC
    /* 5C304 8006DAF4 240034A6 */   sh        $s4, 0x24($s1)
  .L8006DAF8:
    /* 5C308 8006DAF8 1800228E */  lw         $v0, 0x18($s1)
    /* 5C30C 8006DAFC 00000000 */  nop
    /* 5C310 8006DB00 2B105500 */  sltu       $v0, $v0, $s5
    /* 5C314 8006DB04 FC004010 */  beqz       $v0, .L8006DEF8
    /* 5C318 8006DB08 00000000 */   nop
    /* 5C31C 8006DB0C BEB70108 */  j          .L8006DEF8
    /* 5C320 8006DB10 280024A2 */   sb        $a0, 0x28($s1)
  .L8006DB14:
    /* 5C324 8006DB14 2E000296 */  lhu        $v0, 0x2E($s0)
    /* 5C328 8006DB18 00000000 */  nop
    /* 5C32C 8006DB1C 00084230 */  andi       $v0, $v0, 0x800
    /* 5C330 8006DB20 F1004010 */  beqz       $v0, .L8006DEE8
    /* 5C334 8006DB24 03000224 */   addiu     $v0, $zero, 0x3
    /* 5C338 8006DB28 3A000386 */  lh         $v1, 0x3A($s0)
    /* 5C33C 8006DB2C 3000228E */  lw         $v0, 0x30($s1)
    /* 5C340 8006DB30 001B0300 */  sll        $v1, $v1, 12
    /* 5C344 8006DB34 2A106200 */  slt        $v0, $v1, $v0
    /* 5C348 8006DB38 EF004010 */  beqz       $v0, .L8006DEF8
    /* 5C34C 8006DB3C 2A107E00 */   slt       $v0, $v1, $fp
    /* 5C350 8006DB40 ED004014 */  bnez       $v0, .L8006DEF8
    /* 5C354 8006DB44 03000224 */   addiu     $v0, $zero, 0x3
    /* 5C358 8006DB48 BEB70108 */  j          .L8006DEF8
    /* 5C35C 8006DB4C 280022A2 */   sb        $v0, 0x28($s1)
  .L8006DB50:
    /* 5C360 8006DB50 140033AE */  sw         $s3, 0x14($s1)
    /* 5C364 8006DB54 2E000296 */  lhu        $v0, 0x2E($s0)
    /* 5C368 8006DB58 00000000 */  nop
    /* 5C36C 8006DB5C 10004230 */  andi       $v0, $v0, 0x10
    /* 5C370 8006DB60 04004010 */  beqz       $v0, .L8006DB74
    /* 5C374 8006DB64 04000224 */   addiu     $v0, $zero, 0x4
    /* 5C378 8006DB68 21A00000 */  addu       $s4, $zero, $zero
    /* 5C37C 8006DB6C DEB60108 */  j          .L8006DB78
    /* 5C380 8006DB70 280022A2 */   sb        $v0, 0x28($s1)
  .L8006DB74:
    /* 5C384 8006DB74 280026A2 */  sb         $a2, 0x28($s1)
  .L8006DB78:
    /* 5C388 8006DB78 2E000296 */  lhu        $v0, 0x2E($s0)
    /* 5C38C 8006DB7C 00000000 */  nop
    /* 5C390 8006DB80 08004230 */  andi       $v0, $v0, 0x8
    /* 5C394 8006DB84 0C004010 */  beqz       $v0, .L8006DBB8
    /* 5C398 8006DB88 00000000 */   nop
    /* 5C39C 8006DB8C C6D8020C */  jal        func_800B6318
    /* 5C3A0 8006DB90 00000000 */   nop
    /* 5C3A4 8006DB94 21184000 */  addu       $v1, $v0, $zero
    /* 5C3A8 8006DB98 03006104 */  bgez       $v1, .L8006DBA8
    /* 5C3AC 8006DB9C C3110200 */   sra       $v0, $v0, 7
    /* 5C3B0 8006DBA0 7F006224 */  addiu      $v0, $v1, 0x7F
    /* 5C3B4 8006DBA4 C3110200 */  sra        $v0, $v0, 7
  .L8006DBA8:
    /* 5C3B8 8006DBA8 C0110200 */  sll        $v0, $v0, 7
    /* 5C3BC 8006DBAC 23106200 */  subu       $v0, $v1, $v0
    /* 5C3C0 8006DBB0 C0FF4224 */  addiu      $v0, $v0, -0x40
    /* 5C3C4 8006DBB4 260022A6 */  sh         $v0, 0x26($s1)
  .L8006DBB8:
    /* 5C3C8 8006DBB8 CF00E012 */  beqz       $s7, .L8006DEF8
    /* 5C3CC 8006DBBC 00000000 */   nop
    /* 5C3D0 8006DBC0 D2B5010C */  jal        func_8006D748
    /* 5C3D4 8006DBC4 21202002 */   addu      $a0, $s1, $zero
    /* 5C3D8 8006DBC8 BFB70108 */  j          .L8006DEFC
    /* 5C3DC 8006DBCC 240034A6 */   sh        $s4, 0x24($s1)
  .L8006DBD0:
    /* 5C3E0 8006DBD0 12180000 */  mflo       $v1
    /* 5C3E4 8006DBD4 2000058E */  lw         $a1, 0x20($s0)
    /* 5C3E8 8006DBD8 00000000 */  nop
    /* 5C3EC 8006DBDC 1B006500 */  divu       $zero, $v1, $a1
    /* 5C3F0 8006DBE0 12180000 */  mflo       $v1
    /* 5C3F4 8006DBE4 2E000496 */  lhu        $a0, 0x2E($s0)
    /* 5C3F8 8006DBE8 2A108302 */  slt        $v0, $s4, $v1
    /* 5C3FC 8006DBEC 02004010 */  beqz       $v0, .L8006DBF8
    /* 5C400 8006DBF0 40008230 */   andi      $v0, $a0, 0x40
    /* 5C404 8006DBF4 21188002 */  addu       $v1, $s4, $zero
  .L8006DBF8:
    /* 5C408 8006DBF8 0E004010 */  beqz       $v0, .L8006DC34
    /* 5C40C 8006DBFC 21A06000 */   addu      $s4, $v1, $zero
    /* 5C410 8006DC00 32000386 */  lh         $v1, 0x32($s0)
    /* 5C414 8006DC04 00000000 */  nop
    /* 5C418 8006DC08 1800A302 */  mult       $s5, $v1
    /* 5C41C 8006DC0C 12180000 */  mflo       $v1
    /* 5C420 8006DC10 00000000 */  nop
    /* 5C424 8006DC14 00000000 */  nop
    /* 5C428 8006DC18 1B006500 */  divu       $zero, $v1, $a1
    /* 5C42C 8006DC1C 12180000 */  mflo       $v1
    /* 5C430 8006DC20 20002296 */  lhu        $v0, 0x20($s1)
    /* 5C434 8006DC24 00000000 */  nop
    /* 5C438 8006DC28 21104300 */  addu       $v0, $v0, $v1
    /* 5C43C 8006DC2C 220022A6 */  sh         $v0, 0x22($s1)
    /* 5C440 8006DC30 2000058E */  lw         $a1, 0x20($s0)
  .L8006DC34:
    /* 5C444 8006DC34 00000000 */  nop
    /* 5C448 8006DC38 2B10B500 */  sltu       $v0, $a1, $s5
    /* 5C44C 8006DC3C AE004010 */  beqz       $v0, .L8006DEF8
    /* 5C450 8006DC40 00000000 */   nop
    /* 5C454 8006DC44 140033AE */  sw         $s3, 0x14($s1)
    /* 5C458 8006DC48 BEB70108 */  j          .L8006DEF8
    /* 5C45C 8006DC4C 280026A2 */   sb        $a2, 0x28($s1)
  .L8006DC50:
    /* 5C460 8006DC50 2E000396 */  lhu        $v1, 0x2E($s0)
    /* 5C464 8006DC54 00000000 */  nop
    /* 5C468 8006DC58 80006230 */  andi       $v0, $v1, 0x80
    /* 5C46C 8006DC5C 14004014 */  bnez       $v0, .L8006DCB0
    /* 5C470 8006DC60 00046230 */   andi      $v0, $v1, 0x400
    /* 5C474 8006DC64 08004010 */  beqz       $v0, .L8006DC88
    /* 5C478 8006DC68 0D80083C */   lui       $t0, %hi(D_800D11D0)
    /* 5C47C 8006DC6C 1000258E */  lw         $a1, 0x10($s1)
    /* 5C480 8006DC70 5B51000C */  jal        func_8001456C
    /* 5C484 8006DC74 D0110425 */   addiu     $a0, $t0, %lo(D_800D11D0)
    /* 5C488 8006DC78 0D004014 */  bnez       $v0, .L8006DCB0
    /* 5C48C 8006DC7C 07000224 */   addiu     $v0, $zero, 0x7
    /* 5C490 8006DC80 2BB70108 */  j          .L8006DCAC
    /* 5C494 8006DC84 280022A2 */   sb        $v0, 0x28($s1)
  .L8006DC88:
    /* 5C498 8006DC88 1C00228E */  lw         $v0, 0x1C($s1)
    /* 5C49C 8006DC8C 00000000 */  nop
    /* 5C4A0 8006DC90 2B105500 */  sltu       $v0, $v0, $s5
    /* 5C4A4 8006DC94 06004010 */  beqz       $v0, .L8006DCB0
    /* 5C4A8 8006DC98 20006230 */   andi      $v0, $v1, 0x20
    /* 5C4AC 8006DC9C 02004010 */  beqz       $v0, .L8006DCA8
    /* 5C4B0 8006DCA0 07000424 */   addiu     $a0, $zero, 0x7
    /* 5C4B4 8006DCA4 06000424 */  addiu      $a0, $zero, 0x6
  .L8006DCA8:
    /* 5C4B8 8006DCA8 280024A2 */  sb         $a0, 0x28($s1)
  .L8006DCAC:
    /* 5C4BC 8006DCAC 140033AE */  sw         $s3, 0x14($s1)
  .L8006DCB0:
    /* 5C4C0 8006DCB0 2E000496 */  lhu        $a0, 0x2E($s0)
    /* 5C4C4 8006DCB4 00000000 */  nop
    /* 5C4C8 8006DCB8 00108230 */  andi       $v0, $a0, 0x1000
    /* 5C4CC 8006DCBC 35004010 */  beqz       $v0, .L8006DD94
    /* 5C4D0 8006DCC0 34002526 */   addiu     $a1, $s1, 0x34
    /* 5C4D4 8006DCC4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 5C4D8 8006DCC8 3466020C */  jal        func_800998D0
    /* 5C4DC 8006DCCC 2130C002 */   addu      $a2, $s6, $zero
    /* 5C4E0 8006DCD0 8F64020C */  jal        func_8009923C
    /* 5C4E4 8006DCD4 1000A427 */   addiu     $a0, $sp, 0x10
    /* 5C4E8 8006DCD8 21284000 */  addu       $a1, $v0, $zero
    /* 5C4EC 8006DCDC 1600A018 */  blez       $a1, .L8006DD38
    /* 5C4F0 8006DCE0 0028A228 */   slti      $v0, $a1, 0x2800
    /* 5C4F4 8006DCE4 12004010 */  beqz       $v0, .L8006DD30
    /* 5C4F8 8006DCE8 6666033C */   lui       $v1, (0x66666667 >> 16)
    /* 5C4FC 8006DCEC 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* 5C500 8006DCF0 40100500 */  sll        $v0, $a1, 1
    /* 5C504 8006DCF4 21104500 */  addu       $v0, $v0, $a1
    /* 5C508 8006DCF8 C0100200 */  sll        $v0, $v0, 3
    /* 5C50C 8006DCFC 23104500 */  subu       $v0, $v0, $a1
    /* 5C510 8006DD00 40110200 */  sll        $v0, $v0, 5
    /* 5C514 8006DD04 21104500 */  addu       $v0, $v0, $a1
    /* 5C518 8006DD08 80200200 */  sll        $a0, $v0, 2
    /* 5C51C 8006DD0C 21104400 */  addu       $v0, $v0, $a0
    /* 5C520 8006DD10 21104500 */  addu       $v0, $v0, $a1
    /* 5C524 8006DD14 18004300 */  mult       $v0, $v1
    /* 5C528 8006DD18 C3170200 */  sra        $v0, $v0, 31
    /* 5C52C 8006DD1C 10180000 */  mfhi       $v1
    /* 5C530 8006DD20 031B0300 */  sra        $v1, $v1, 12
    /* 5C534 8006DD24 23186200 */  subu       $v1, $v1, $v0
    /* 5C538 8006DD28 4FB70108 */  j          .L8006DD3C
    /* 5C53C 8006DD2C 66066424 */   addiu     $a0, $v1, 0x666
  .L8006DD30:
    /* 5C540 8006DD30 4FB70108 */  j          .L8006DD3C
    /* 5C544 8006DD34 CC140424 */   addiu     $a0, $zero, 0x14CC
  .L8006DD38:
    /* 5C548 8006DD38 66060424 */  addiu      $a0, $zero, 0x666
  .L8006DD3C:
    /* 5C54C 8006DD3C 9A01A228 */  slti       $v0, $a1, 0x19A
    /* 5C550 8006DD40 0C004014 */  bnez       $v0, .L8006DD74
    /* 5C554 8006DD44 21180000 */   addu      $v1, $zero, $zero
    /* 5C558 8006DD48 9909A228 */  slti       $v0, $a1, 0x999
    /* 5C55C 8006DD4C 08004010 */  beqz       $v0, .L8006DD70
    /* 5C560 8006DD50 67FEA324 */   addiu     $v1, $a1, -0x199
    /* 5C564 8006DD54 C0110300 */  sll        $v0, $v1, 7
    /* 5C568 8006DD58 23104300 */  subu       $v0, $v0, $v1
    /* 5C56C 8006DD5C 05004104 */  bgez       $v0, .L8006DD74
    /* 5C570 8006DD60 C31A0200 */   sra       $v1, $v0, 11
    /* 5C574 8006DD64 FF074224 */  addiu      $v0, $v0, 0x7FF
    /* 5C578 8006DD68 5DB70108 */  j          .L8006DD74
    /* 5C57C 8006DD6C C31A0200 */   sra       $v1, $v0, 11
  .L8006DD70:
    /* 5C580 8006DD70 7F000324 */  addiu      $v1, $zero, 0x7F
  .L8006DD74:
    /* 5C584 8006DD74 20002286 */  lh         $v0, 0x20($s1)
    /* 5C588 8006DD78 00000000 */  nop
    /* 5C58C 8006DD7C 18004400 */  mult       $v0, $a0
    /* 5C590 8006DD80 21A06000 */  addu       $s4, $v1, $zero
    /* 5C594 8006DD84 12100000 */  mflo       $v0
    /* 5C598 8006DD88 03130200 */  sra        $v0, $v0, 12
    /* 5C59C 8006DD8C 220022A6 */  sh         $v0, 0x22($s1)
    /* 5C5A0 8006DD90 2E000496 */  lhu        $a0, 0x2E($s0)
  .L8006DD94:
    /* 5C5A4 8006DD94 00000000 */  nop
    /* 5C5A8 8006DD98 00028230 */  andi       $v0, $a0, 0x200
    /* 5C5AC 8006DD9C 56004010 */  beqz       $v0, .L8006DEF8
    /* 5C5B0 8006DDA0 00131500 */   sll       $v0, $s5, 12
    /* 5C5B4 8006DDA4 1800048E */  lw         $a0, 0x18($s0)
    /* 5C5B8 8006DDA8 00000000 */  nop
    /* 5C5BC 8006DDAC 1B004400 */  divu       $zero, $v0, $a0
    /* 5C5C0 8006DDB0 12100000 */  mflo       $v0
    /* 5C5C4 8006DDB4 0C80033C */  lui        $v1, %hi(D_800BF3A0)
    /* 5C5C8 8006DDB8 A0F36324 */  addiu      $v1, $v1, %lo(D_800BF3A0)
    /* 5C5CC 8006DDBC 32000496 */  lhu        $a0, 0x32($s0)
    /* 5C5D0 8006DDC0 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 5C5D4 8006DDC4 80100200 */  sll        $v0, $v0, 2
    /* 5C5D8 8006DDC8 21104300 */  addu       $v0, $v0, $v1
    /* 5C5DC 8006DDCC 00004594 */  lhu        $a1, 0x0($v0)
    /* 5C5E0 8006DDD0 00000000 */  nop
    /* 5C5E4 8006DDD4 18008500 */  mult       $a0, $a1
    /* 5C5E8 8006DDD8 20002396 */  lhu        $v1, 0x20($s1)
    /* 5C5EC 8006DDDC 12200000 */  mflo       $a0
    /* 5C5F0 8006DDE0 21186400 */  addu       $v1, $v1, $a0
    /* 5C5F4 8006DDE4 BEB70108 */  j          .L8006DEF8
    /* 5C5F8 8006DDE8 220023A6 */   sh        $v1, 0x22($s1)
  .L8006DDEC:
    /* 5C5FC 8006DDEC 2400058E */  lw         $a1, 0x24($s0)
    /* 5C600 8006DDF0 00000000 */  nop
    /* 5C604 8006DDF4 2B10B500 */  sltu       $v0, $a1, $s5
    /* 5C608 8006DDF8 05004010 */  beqz       $v0, .L8006DE10
    /* 5C60C 8006DDFC 21200000 */   addu      $a0, $zero, $zero
    /* 5C610 8006DE00 07000224 */  addiu      $v0, $zero, 0x7
    /* 5C614 8006DE04 140033AE */  sw         $s3, 0x14($s1)
    /* 5C618 8006DE08 9EB70108 */  j          .L8006DE78
    /* 5C61C 8006DE0C 280022A2 */   sb        $v0, 0x28($s1)
  .L8006DE10:
    /* 5C620 8006DE10 2E000296 */  lhu        $v0, 0x2E($s0)
    /* 5C624 8006DE14 00000000 */  nop
    /* 5C628 8006DE18 40004230 */  andi       $v0, $v0, 0x40
    /* 5C62C 8006DE1C 0E004010 */  beqz       $v0, .L8006DE58
    /* 5C630 8006DE20 2318B500 */   subu      $v1, $a1, $s5
    /* 5C634 8006DE24 32000486 */  lh         $a0, 0x32($s0)
    /* 5C638 8006DE28 00000000 */  nop
    /* 5C63C 8006DE2C 18006400 */  mult       $v1, $a0
    /* 5C640 8006DE30 12180000 */  mflo       $v1
    /* 5C644 8006DE34 00000000 */  nop
    /* 5C648 8006DE38 00000000 */  nop
    /* 5C64C 8006DE3C 1B006500 */  divu       $zero, $v1, $a1
    /* 5C650 8006DE40 12180000 */  mflo       $v1
    /* 5C654 8006DE44 20002296 */  lhu        $v0, 0x20($s1)
    /* 5C658 8006DE48 00000000 */  nop
    /* 5C65C 8006DE4C 21104300 */  addu       $v0, $v0, $v1
    /* 5C660 8006DE50 220022A6 */  sh         $v0, 0x22($s1)
    /* 5C664 8006DE54 2400058E */  lw         $a1, 0x24($s0)
  .L8006DE58:
    /* 5C668 8006DE58 00000000 */  nop
    /* 5C66C 8006DE5C 2310B500 */  subu       $v0, $a1, $s5
    /* 5C670 8006DE60 18005400 */  mult       $v0, $s4
    /* 5C674 8006DE64 12100000 */  mflo       $v0
    /* 5C678 8006DE68 00000000 */  nop
    /* 5C67C 8006DE6C 00000000 */  nop
    /* 5C680 8006DE70 1A004500 */  div        $zero, $v0, $a1
    /* 5C684 8006DE74 12200000 */  mflo       $a0
  .L8006DE78:
    /* 5C688 8006DE78 BEB70108 */  j          .L8006DEF8
    /* 5C68C 8006DE7C 21A08000 */   addu      $s4, $a0, $zero
  .L8006DE80:
    /* 5C690 8006DE80 140033AE */  sw         $s3, 0x14($s1)
    /* 5C694 8006DE84 2E000296 */  lhu        $v0, 0x2E($s0)
    /* 5C698 8006DE88 00000000 */  nop
    /* 5C69C 8006DE8C 00204230 */  andi       $v0, $v0, 0x2000
    /* 5C6A0 8006DE90 02004010 */  beqz       $v0, .L8006DE9C
    /* 5C6A4 8006DE94 09000324 */   addiu     $v1, $zero, 0x9
    /* 5C6A8 8006DE98 08000324 */  addiu      $v1, $zero, 0x8
  .L8006DE9C:
    /* 5C6AC 8006DE9C 280023A2 */  sb         $v1, 0x28($s1)
    /* 5C6B0 8006DEA0 F9B5010C */  jal        func_8006D7E4
    /* 5C6B4 8006DEA4 21202002 */   addu      $a0, $s1, $zero
    /* 5C6B8 8006DEA8 BFB70108 */  j          .L8006DEFC
    /* 5C6BC 8006DEAC 240034A6 */   sh        $s4, 0x24($s1)
  .L8006DEB0:
    /* 5C6C0 8006DEB0 1800228E */  lw         $v0, 0x18($s1)
    /* 5C6C4 8006DEB4 00000000 */  nop
    /* 5C6C8 8006DEB8 2B10A202 */  sltu       $v0, $s5, $v0
    /* 5C6CC 8006DEBC 0E004010 */  beqz       $v0, .L8006DEF8
    /* 5C6D0 8006DEC0 09000224 */   addiu     $v0, $zero, 0x9
    /* 5C6D4 8006DEC4 BEB70108 */  j          .L8006DEF8
    /* 5C6D8 8006DEC8 280022A2 */   sb        $v0, 0x28($s1)
  .L8006DECC:
    /* 5C6DC 8006DECC 29002292 */  lbu        $v0, 0x29($s1)
    /* 5C6E0 8006DED0 00000000 */  nop
    /* 5C6E4 8006DED4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 5C6E8 8006DED8 290022A2 */  sb         $v0, 0x29($s1)
    /* 5C6EC 8006DEDC 00160200 */  sll        $v0, $v0, 24
    /* 5C6F0 8006DEE0 03004018 */  blez       $v0, .L8006DEF0
    /* 5C6F4 8006DEE4 03000224 */   addiu     $v0, $zero, 0x3
  .L8006DEE8:
    /* 5C6F8 8006DEE8 BEB70108 */  j          .L8006DEF8
    /* 5C6FC 8006DEEC 280022A2 */   sb        $v0, 0x28($s1)
  .L8006DEF0:
    /* 5C700 8006DEF0 2CB5010C */  jal        func_8006D4B0
    /* 5C704 8006DEF4 21202002 */   addu      $a0, $s1, $zero
  .L8006DEF8:
    /* 5C708 8006DEF8 240034A6 */  sh         $s4, 0x24($s1)
  .L8006DEFC:
    /* 5C70C 8006DEFC B2B5010C */  jal        func_8006D6C8
    /* 5C710 8006DF00 21202002 */   addu      $a0, $s1, $zero
  .L8006DF04:
    /* 5C714 8006DF04 3000A88F */  lw         $t0, 0x30($sp)
    /* 5C718 8006DF08 00000000 */  nop
    /* 5C71C 8006DF0C 2C0028AE */  sw         $t0, 0x2C($s1)
    /* 5C720 8006DF10 30003EAE */  sw         $fp, 0x30($s1)
    /* 5C724 8006DF14 0800C012 */  beqz       $s6, .L8006DF38
    /* 5C728 8006DF18 2B0037A2 */   sb        $s7, 0x2B($s1)
    /* 5C72C 8006DF1C 0000C38E */  lw         $v1, 0x0($s6)
    /* 5C730 8006DF20 0400C48E */  lw         $a0, 0x4($s6)
    /* 5C734 8006DF24 0800C58E */  lw         $a1, 0x8($s6)
    /* 5C738 8006DF28 34002226 */  addiu      $v0, $s1, 0x34
    /* 5C73C 8006DF2C 340023AE */  sw         $v1, 0x34($s1)
    /* 5C740 8006DF30 040044AC */  sw         $a0, 0x4($v0)
    /* 5C744 8006DF34 080045AC */  sw         $a1, 0x8($v0)
  .L8006DF38:
    /* 5C748 8006DF38 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 5C74C 8006DF3C 5800BE8F */  lw         $fp, 0x58($sp)
    /* 5C750 8006DF40 5400B78F */  lw         $s7, 0x54($sp)
    /* 5C754 8006DF44 5000B68F */  lw         $s6, 0x50($sp)
    /* 5C758 8006DF48 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 5C75C 8006DF4C 4800B48F */  lw         $s4, 0x48($sp)
    /* 5C760 8006DF50 4400B38F */  lw         $s3, 0x44($sp)
    /* 5C764 8006DF54 4000B28F */  lw         $s2, 0x40($sp)
    /* 5C768 8006DF58 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 5C76C 8006DF5C 3800B08F */  lw         $s0, 0x38($sp)
    /* 5C770 8006DF60 0800E003 */  jr         $ra
    /* 5C774 8006DF64 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_8006D844
