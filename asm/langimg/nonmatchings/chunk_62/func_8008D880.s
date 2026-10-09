/* Handwritten function */
nonmatching func_8008D880, 0x720

glabel func_8008D880
    /* 7C090 8008D880 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 7C094 8008D884 0300183C */  lui        $t8, (0x3FFFF >> 16)
    /* 7C098 8008D888 FFFF1837 */  ori        $t8, $t8, (0x3FFFF & 0xFFFF)
    /* 7C09C 8008D88C 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 7C0A0 8008D890 5800BEAF */  sw         $fp, 0x58($sp)
    /* 7C0A4 8008D894 5400B7AF */  sw         $s7, 0x54($sp)
    /* 7C0A8 8008D898 5000B6AF */  sw         $s6, 0x50($sp)
    /* 7C0AC 8008D89C 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 7C0B0 8008D8A0 4800B4AF */  sw         $s4, 0x48($sp)
    /* 7C0B4 8008D8A4 4400B3AF */  sw         $s3, 0x44($sp)
    /* 7C0B8 8008D8A8 4000B2AF */  sw         $s2, 0x40($sp)
    /* 7C0BC 8008D8AC 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 7C0C0 8008D8B0 3800B0AF */  sw         $s0, 0x38($sp)
    /* 7C0C4 8008D8B4 2C00A0AF */  sw         $zero, 0x2C($sp)
    /* 7C0C8 8008D8B8 3000B8AF */  sw         $t8, 0x30($sp)
    /* 7C0CC 8008D8BC 6000A4AF */  sw         $a0, 0x60($sp)
    /* 7C0D0 8008D8C0 0800998C */  lw         $t9, 0x8($a0)
    /* 7C0D4 8008D8C4 00000000 */  nop
    /* 7C0D8 8008D8C8 1000B9AF */  sw         $t9, 0x10($sp)
    /* 7C0DC 8008D8CC 5400388F */  lw         $t8, 0x54($t9)
    /* 7C0E0 8008D8D0 08003E8F */  lw         $fp, 0x8($t9)
    /* 7C0E4 8008D8D4 1400B8AF */  sw         $t8, 0x14($sp)
    /* 7C0E8 8008D8D8 5800398F */  lw         $t9, 0x58($t9)
    /* 7C0EC 8008D8DC 1000B88F */  lw         $t8, 0x10($sp)
    /* 7C0F0 8008D8E0 1800B9AF */  sw         $t9, 0x18($sp)
    /* 7C0F4 8008D8E4 5C00188F */  lw         $t8, 0x5C($t8)
    /* 7C0F8 8008D8E8 1000B98F */  lw         $t9, 0x10($sp)
    /* 7C0FC 8008D8EC 1C00B8AF */  sw         $t8, 0x1C($sp)
    /* 7C100 8008D8F0 1C00398F */  lw         $t9, 0x1C($t9)
    /* 7C104 8008D8F4 1000B88F */  lw         $t8, 0x10($sp)
    /* 7C108 8008D8F8 0C000224 */  addiu      $v0, $zero, 0xC
    /* 7C10C 8008D8FC 2000B9AF */  sw         $t9, 0x20($sp)
    /* 7C110 8008D900 2000188F */  lw         $t8, 0x20($t8)
    /* 7C114 8008D904 1000B98F */  lw         $t9, 0x10($sp)
    /* 7C118 8008D908 23B84500 */  subu       $s7, $v0, $a1
    /* 7C11C 8008D90C 2400B8AF */  sw         $t8, 0x24($sp)
    /* 7C120 8008D910 2000B88F */  lw         $t8, 0x20($sp)
    /* 7C124 8008D914 2400398F */  lw         $t9, 0x24($t9)
    /* 7C128 8008D918 04C0F802 */  sllv       $t8, $t8, $s7
    /* 7C12C 8008D91C 2800B9AF */  sw         $t9, 0x28($sp)
    /* 7C130 8008D920 2000B8AF */  sw         $t8, 0x20($sp)
    /* 7C134 8008D924 2400B98F */  lw         $t9, 0x24($sp)
    /* 7C138 8008D928 2800B88F */  lw         $t8, 0x28($sp)
    /* 7C13C 8008D92C 04C8F902 */  sllv       $t9, $t9, $s7
    /* 7C140 8008D930 04C0F802 */  sllv       $t8, $t8, $s7
    /* 7C144 8008D934 2400B9AF */  sw         $t9, 0x24($sp)
    /* 7C148 8008D938 2800B8AF */  sw         $t8, 0x28($sp)
  .L8008D93C:
    /* 7C14C 8008D93C 2C00B98F */  lw         $t9, 0x2C($sp)
    /* 7C150 8008D940 00000000 */  nop
    /* 7C154 8008D944 40002017 */  bnez       $t9, .L8008DA48
    /* 7C158 8008D948 00000000 */   nop
    /* 7C15C 8008D94C 6000B88F */  lw         $t8, 0x60($sp)
    /* 7C160 8008D950 2000B98F */  lw         $t9, 0x20($sp)
    /* 7C164 8008D954 1C00158F */  lw         $s5, 0x1C($t8)
    /* 7C168 8008D958 2000128F */  lw         $s2, 0x20($t8)
    /* 7C16C 8008D95C 2400118F */  lw         $s1, 0x24($t8)
    /* 7C170 8008D960 2400B88F */  lw         $t8, 0x24($sp)
    /* 7C174 8008D964 04A8F502 */  sllv       $s5, $s5, $s7
    /* 7C178 8008D968 0490F202 */  sllv       $s2, $s2, $s7
    /* 7C17C 8008D96C 0488F102 */  sllv       $s1, $s1, $s7
    /* 7C180 8008D970 23983503 */  subu       $s3, $t9, $s5
    /* 7C184 8008D974 23A01203 */  subu       $s4, $t8, $s2
    /* 7C188 8008D978 21206002 */  addu       $a0, $s3, $zero
    /* 7C18C 8008D97C 2800B98F */  lw         $t9, 0x28($sp)
    /* 7C190 8008D980 21288002 */  addu       $a1, $s4, $zero
    /* 7C194 8008D984 23803103 */  subu       $s0, $t9, $s1
    /* 7C198 8008D988 9F34020C */  jal        func_8008D27C
    /* 7C19C 8008D98C 21300002 */   addu      $a2, $s0, $zero
    /* 7C1A0 8008D990 E837020C */  jal        func_8008DFA0
    /* 7C1A4 8008D994 21204000 */   addu      $a0, $v0, $zero
    /* 7C1A8 8008D998 21204000 */  addu       $a0, $v0, $zero
    /* 7C1AC 8008D99C C09B1300 */  sll        $s3, $s3, 15
    /* 7C1B0 8008D9A0 C0A31400 */  sll        $s4, $s4, 15
    /* 7C1B4 8008D9A4 0B008010 */  beqz       $a0, .L8008D9D4
    /* 7C1B8 8008D9A8 C0831000 */   sll       $s0, $s0, 15
    /* 7C1BC 8008D9AC 1A006402 */  div        $zero, $s3, $a0
    /* 7C1C0 8008D9B0 12980000 */  mflo       $s3
    /* 7C1C4 8008D9B4 00000000 */  nop
    /* 7C1C8 8008D9B8 00000000 */  nop
    /* 7C1CC 8008D9BC 1A008402 */  div        $zero, $s4, $a0
    /* 7C1D0 8008D9C0 12A00000 */  mflo       $s4
    /* 7C1D4 8008D9C4 00000000 */  nop
    /* 7C1D8 8008D9C8 00000000 */  nop
    /* 7C1DC 8008D9CC 1A000402 */  div        $zero, $s0, $a0
    /* 7C1E0 8008D9D0 12800000 */  mflo       $s0
  .L8008D9D4:
    /* 7C1E4 8008D9D4 6000B88F */  lw         $t8, 0x60($sp)
    /* 7C1E8 8008D9D8 00000000 */  nop
    /* 7C1EC 8008D9DC 6000158F */  lw         $s5, 0x60($t8)
    /* 7C1F0 8008D9E0 6400128F */  lw         $s2, 0x64($t8)
    /* 7C1F4 8008D9E4 6800118F */  lw         $s1, 0x68($t8)
    /* 7C1F8 8008D9E8 2120A002 */  addu       $a0, $s5, $zero
    /* 7C1FC 8008D9EC 21284002 */  addu       $a1, $s2, $zero
    /* 7C200 8008D9F0 9F34020C */  jal        func_8008D27C
    /* 7C204 8008D9F4 21302002 */   addu      $a2, $s1, $zero
    /* 7C208 8008D9F8 E837020C */  jal        func_8008DFA0
    /* 7C20C 8008D9FC 21204000 */   addu      $a0, $v0, $zero
    /* 7C210 8008DA00 21204000 */  addu       $a0, $v0, $zero
    /* 7C214 8008DA04 C0AB1500 */  sll        $s5, $s5, 15
    /* 7C218 8008DA08 C0931200 */  sll        $s2, $s2, 15
    /* 7C21C 8008DA0C 50008010 */  beqz       $a0, .L8008DB50
    /* 7C220 8008DA10 C08B1100 */   sll       $s1, $s1, 15
    /* 7C224 8008DA14 1A00A402 */  div        $zero, $s5, $a0
    /* 7C228 8008DA18 12A80000 */  mflo       $s5
    /* 7C22C 8008DA1C 00000000 */  nop
    /* 7C230 8008DA20 00000000 */  nop
    /* 7C234 8008DA24 1A004402 */  div        $zero, $s2, $a0
    /* 7C238 8008DA28 12900000 */  mflo       $s2
    /* 7C23C 8008DA2C 00000000 */  nop
    /* 7C240 8008DA30 00000000 */  nop
    /* 7C244 8008DA34 1A002402 */  div        $zero, $s1, $a0
    /* 7C248 8008DA38 12880000 */  mflo       $s1
    /* 7C24C 8008DA3C 00000000 */  nop
    /* 7C250 8008DA40 D7360208 */  j          .L8008DB5C
    /* 7C254 8008DA44 18007502 */   mult      $s3, $s5
  .L8008DA48:
    /* 7C258 8008DA48 5400D58F */  lw         $s5, 0x54($fp)
    /* 7C25C 8008DA4C 5800D28F */  lw         $s2, 0x58($fp)
    /* 7C260 8008DA50 5C00D18F */  lw         $s1, 0x5C($fp)
    /* 7C264 8008DA54 1400B88F */  lw         $t8, 0x14($sp)
    /* 7C268 8008DA58 1800B98F */  lw         $t9, 0x18($sp)
    /* 7C26C 8008DA5C 04A8F502 */  sllv       $s5, $s5, $s7
    /* 7C270 8008DA60 0490F202 */  sllv       $s2, $s2, $s7
    /* 7C274 8008DA64 0488F102 */  sllv       $s1, $s1, $s7
    /* 7C278 8008DA68 23A8B802 */  subu       $s5, $s5, $t8
    /* 7C27C 8008DA6C 23905902 */  subu       $s2, $s2, $t9
    /* 7C280 8008DA70 2120A002 */  addu       $a0, $s5, $zero
    /* 7C284 8008DA74 1C00B88F */  lw         $t8, 0x1C($sp)
    /* 7C288 8008DA78 21284002 */  addu       $a1, $s2, $zero
    /* 7C28C 8008DA7C 23883802 */  subu       $s1, $s1, $t8
    /* 7C290 8008DA80 9F34020C */  jal        func_8008D27C
    /* 7C294 8008DA84 21302002 */   addu      $a2, $s1, $zero
    /* 7C298 8008DA88 E837020C */  jal        func_8008DFA0
    /* 7C29C 8008DA8C 21204000 */   addu      $a0, $v0, $zero
    /* 7C2A0 8008DA90 21204000 */  addu       $a0, $v0, $zero
    /* 7C2A4 8008DA94 C0AB1500 */  sll        $s5, $s5, 15
    /* 7C2A8 8008DA98 C0931200 */  sll        $s2, $s2, 15
    /* 7C2AC 8008DA9C 0B008010 */  beqz       $a0, .L8008DACC
    /* 7C2B0 8008DAA0 C08B1100 */   sll       $s1, $s1, 15
    /* 7C2B4 8008DAA4 1A00A402 */  div        $zero, $s5, $a0
    /* 7C2B8 8008DAA8 12A80000 */  mflo       $s5
    /* 7C2BC 8008DAAC 00000000 */  nop
    /* 7C2C0 8008DAB0 00000000 */  nop
    /* 7C2C4 8008DAB4 1A004402 */  div        $zero, $s2, $a0
    /* 7C2C8 8008DAB8 12900000 */  mflo       $s2
    /* 7C2CC 8008DABC 00000000 */  nop
    /* 7C2D0 8008DAC0 00000000 */  nop
    /* 7C2D4 8008DAC4 1A002402 */  div        $zero, $s1, $a0
    /* 7C2D8 8008DAC8 12880000 */  mflo       $s1
  .L8008DACC:
    /* 7C2DC 8008DACC 1C00D38F */  lw         $s3, 0x1C($fp)
    /* 7C2E0 8008DAD0 2000D48F */  lw         $s4, 0x20($fp)
    /* 7C2E4 8008DAD4 2400D08F */  lw         $s0, 0x24($fp)
    /* 7C2E8 8008DAD8 2000B88F */  lw         $t8, 0x20($sp)
    /* 7C2EC 8008DADC 2400B98F */  lw         $t9, 0x24($sp)
    /* 7C2F0 8008DAE0 0498F302 */  sllv       $s3, $s3, $s7
    /* 7C2F4 8008DAE4 04A0F402 */  sllv       $s4, $s4, $s7
    /* 7C2F8 8008DAE8 0480F002 */  sllv       $s0, $s0, $s7
    /* 7C2FC 8008DAEC 23987802 */  subu       $s3, $s3, $t8
    /* 7C300 8008DAF0 23A09902 */  subu       $s4, $s4, $t9
    /* 7C304 8008DAF4 21206002 */  addu       $a0, $s3, $zero
    /* 7C308 8008DAF8 2800B88F */  lw         $t8, 0x28($sp)
    /* 7C30C 8008DAFC 21288002 */  addu       $a1, $s4, $zero
    /* 7C310 8008DB00 23801802 */  subu       $s0, $s0, $t8
    /* 7C314 8008DB04 9F34020C */  jal        func_8008D27C
    /* 7C318 8008DB08 21300002 */   addu      $a2, $s0, $zero
    /* 7C31C 8008DB0C E837020C */  jal        func_8008DFA0
    /* 7C320 8008DB10 21204000 */   addu      $a0, $v0, $zero
    /* 7C324 8008DB14 21204000 */  addu       $a0, $v0, $zero
    /* 7C328 8008DB18 C09B1300 */  sll        $s3, $s3, 15
    /* 7C32C 8008DB1C C0A31400 */  sll        $s4, $s4, 15
    /* 7C330 8008DB20 0B008010 */  beqz       $a0, .L8008DB50
    /* 7C334 8008DB24 C0831000 */   sll       $s0, $s0, 15
    /* 7C338 8008DB28 1A006402 */  div        $zero, $s3, $a0
    /* 7C33C 8008DB2C 12980000 */  mflo       $s3
    /* 7C340 8008DB30 00000000 */  nop
    /* 7C344 8008DB34 00000000 */  nop
    /* 7C348 8008DB38 1A008402 */  div        $zero, $s4, $a0
    /* 7C34C 8008DB3C 12A00000 */  mflo       $s4
    /* 7C350 8008DB40 00000000 */  nop
    /* 7C354 8008DB44 00000000 */  nop
    /* 7C358 8008DB48 1A000402 */  div        $zero, $s0, $a0
    /* 7C35C 8008DB4C 12800000 */  mflo       $s0
  .L8008DB50:
    /* 7C360 8008DB50 00000000 */  nop
    /* 7C364 8008DB54 00000000 */  nop
    /* 7C368 8008DB58 18007502 */  mult       $s3, $s5
  .L8008DB5C:
    /* 7C36C 8008DB5C 12180000 */  mflo       $v1
    /* 7C370 8008DB60 00000000 */  nop
    /* 7C374 8008DB64 00000000 */  nop
    /* 7C378 8008DB68 18009202 */  mult       $s4, $s2
    /* 7C37C 8008DB6C 12100000 */  mflo       $v0
    /* 7C380 8008DB70 00000000 */  nop
    /* 7C384 8008DB74 00000000 */  nop
    /* 7C388 8008DB78 18001102 */  mult       $s0, $s1
    /* 7C38C 8008DB7C 3000B88F */  lw         $t8, 0x30($sp)
    /* 7C390 8008DB80 21186200 */  addu       $v1, $v1, $v0
    /* 7C394 8008DB84 12200000 */  mflo       $a0
    /* 7C398 8008DB88 21B06400 */  addu       $s6, $v1, $a0
    /* 7C39C 8008DB8C 03B31600 */  sra        $s6, $s6, 12
    /* 7C3A0 8008DB90 2A101603 */  slt        $v0, $t8, $s6
    /* 7C3A4 8008DB94 04004010 */  beqz       $v0, .L8008DBA8
    /* 7C3A8 8008DB98 FCFF193C */   lui       $t9, (0xFFFC0000 >> 16)
    /* 7C3AC 8008DB9C 0300163C */  lui        $s6, (0x3FFFF >> 16)
    /* 7C3B0 8008DBA0 EE360208 */  j          .L8008DBB8
    /* 7C3B4 8008DBA4 FFFFD636 */   ori       $s6, $s6, (0x3FFFF & 0xFFFF)
  .L8008DBA8:
    /* 7C3B8 8008DBA8 2A10D902 */  slt        $v0, $s6, $t9
    /* 7C3BC 8008DBAC 03004010 */  beqz       $v0, .L8008DBBC
    /* 7C3C0 8008DBB0 18009102 */   mult      $s4, $s1
    /* 7C3C4 8008DBB4 FCFF163C */  lui        $s6, (0xFFFC0000 >> 16)
  .L8008DBB8:
    /* 7C3C8 8008DBB8 18009102 */  mult       $s4, $s1
  .L8008DBBC:
    /* 7C3CC 8008DBBC 12480000 */  mflo       $t1
    /* 7C3D0 8008DBC0 00000000 */  nop
    /* 7C3D4 8008DBC4 00000000 */  nop
    /* 7C3D8 8008DBC8 18001202 */  mult       $s0, $s2
    /* 7C3DC 8008DBCC 12380000 */  mflo       $a3
    /* 7C3E0 8008DBD0 00000000 */  nop
    /* 7C3E4 8008DBD4 00000000 */  nop
    /* 7C3E8 8008DBD8 18001502 */  mult       $s0, $s5
    /* 7C3EC 8008DBDC 12400000 */  mflo       $t0
    /* 7C3F0 8008DBE0 00000000 */  nop
    /* 7C3F4 8008DBE4 00000000 */  nop
    /* 7C3F8 8008DBE8 18007102 */  mult       $s3, $s1
    /* 7C3FC 8008DBEC 12200000 */  mflo       $a0
    /* 7C400 8008DBF0 00000000 */  nop
    /* 7C404 8008DBF4 00000000 */  nop
    /* 7C408 8008DBF8 18007202 */  mult       $s3, $s2
    /* 7C40C 8008DBFC 0400183C */  lui        $t8, (0x40000 >> 16)
    /* 7C410 8008DC00 2110D802 */  addu       $v0, $s6, $t8
    /* 7C414 8008DC04 C3110200 */  sra        $v0, $v0, 7
    /* 7C418 8008DC08 40100200 */  sll        $v0, $v0, 1
    /* 7C41C 8008DC0C 12300000 */  mflo       $a2
    /* 7C420 8008DC10 0C80183C */  lui        $t8, %hi(D_800B8884)
    /* 7C424 8008DC14 84881827 */  addiu      $t8, $t8, %lo(D_800B8884)
    /* 7C428 8008DC18 18009502 */  mult       $s4, $s5
    /* 7C42C 8008DC1C 21105800 */  addu       $v0, $v0, $t8
    /* 7C430 8008DC20 0C80193C */  lui        $t9, %hi(D_800BF3A2)
    /* 7C434 8008DC24 00004394 */  lhu        $v1, 0x0($v0)
    /* 7C438 8008DC28 A2F33927 */  addiu      $t9, $t9, %lo(D_800BF3A2)
    /* 7C43C 8008DC2C 40180300 */  sll        $v1, $v1, 1
    /* 7C440 8008DC30 FC3F7330 */  andi       $s3, $v1, 0x3FFC
    /* 7C444 8008DC34 21107902 */  addu       $v0, $s3, $t9
    /* 7C448 8008DC38 23902701 */  subu       $s2, $t1, $a3
    /* 7C44C 8008DC3C 23880401 */  subu       $s1, $t0, $a0
    /* 7C450 8008DC40 21204002 */  addu       $a0, $s2, $zero
    /* 7C454 8008DC44 00005684 */  lh         $s6, 0x0($v0)
    /* 7C458 8008DC48 12280000 */  mflo       $a1
    /* 7C45C 8008DC4C 2380C500 */  subu       $s0, $a2, $a1
    /* 7C460 8008DC50 21282002 */  addu       $a1, $s1, $zero
    /* 7C464 8008DC54 AC34020C */  jal        func_8008D2B0
    /* 7C468 8008DC58 21300002 */   addu      $a2, $s0, $zero
    /* 7C46C 8008DC5C 0C80183C */  lui        $t8, %hi(D_800BF3A0)
    /* 7C470 8008DC60 03230200 */  sra        $a0, $v0, 12
    /* 7C474 8008DC64 0B008010 */  beqz       $a0, .L8008DC94
    /* 7C478 8008DC68 A0F31427 */   addiu     $s4, $t8, %lo(D_800BF3A0)
    /* 7C47C 8008DC6C 1A004402 */  div        $zero, $s2, $a0
    /* 7C480 8008DC70 12900000 */  mflo       $s2
    /* 7C484 8008DC74 00000000 */  nop
    /* 7C488 8008DC78 00000000 */  nop
    /* 7C48C 8008DC7C 1A002402 */  div        $zero, $s1, $a0
    /* 7C490 8008DC80 12880000 */  mflo       $s1
    /* 7C494 8008DC84 00000000 */  nop
    /* 7C498 8008DC88 00000000 */  nop
    /* 7C49C 8008DC8C 1A000402 */  div        $zero, $s0, $a0
    /* 7C4A0 8008DC90 12800000 */  mflo       $s0
  .L8008DC94:
    /* 7C4A4 8008DC94 21107402 */  addu       $v0, $s3, $s4
    /* 7C4A8 8008DC98 00004384 */  lh         $v1, 0x0($v0)
    /* 7C4AC 8008DC9C 00000000 */  nop
    /* 7C4B0 8008DCA0 18004302 */  mult       $s2, $v1
    /* 7C4B4 8008DCA4 12900000 */  mflo       $s2
    /* 7C4B8 8008DCA8 00000000 */  nop
    /* 7C4BC 8008DCAC 00000000 */  nop
    /* 7C4C0 8008DCB0 18002302 */  mult       $s1, $v1
    /* 7C4C4 8008DCB4 12880000 */  mflo       $s1
    /* 7C4C8 8008DCB8 00000000 */  nop
    /* 7C4CC 8008DCBC 00000000 */  nop
    /* 7C4D0 8008DCC0 18000302 */  mult       $s0, $v1
    /* 7C4D4 8008DCC4 03931200 */  sra        $s2, $s2, 12
    /* 7C4D8 8008DCC8 038B1100 */  sra        $s1, $s1, 12
    /* 7C4DC 8008DCCC 12800000 */  mflo       $s0
    /* 7C4E0 8008DCD0 03831000 */  sra        $s0, $s0, 12
    /* 7C4E4 8008DCD4 00489248 */  mtc2       $s2, $9 /* handwritten instruction */
    /* 7C4E8 8008DCD8 00509148 */  mtc2       $s1, $10 /* handwritten instruction */
    /* 7C4EC 8008DCDC 00589048 */  mtc2       $s0, $11 /* handwritten instruction */
    /* 7C4F0 8008DCE0 18005102 */  mult       $s2, $s1
    /* 7C4F4 8008DCE4 12380000 */  mflo       $a3
    /* 7C4F8 8008DCE8 033B0700 */  sra        $a3, $a3, 12
    /* 7C4FC 8008DCEC 2804A84A */  sqr        1
    /* 7C500 8008DCF0 1800D002 */  mult       $s6, $s0
    /* 7C504 8008DCF4 12400000 */  mflo       $t0
    /* 7C508 8008DCF8 03430800 */  sra        $t0, $t0, 12
    /* 7C50C 8008DCFC 00480B48 */  mfc2       $t3, $9 /* handwritten instruction */
    /* 7C510 8008DD00 00500C48 */  mfc2       $t4, $10 /* handwritten instruction */
    /* 7C514 8008DD04 00580448 */  mfc2       $a0, $11 /* handwritten instruction */
    /* 7C518 8008DD08 18005002 */  mult       $s2, $s0
    /* 7C51C 8008DD0C 12280000 */  mflo       $a1
    /* 7C520 8008DD10 00000000 */  nop
    /* 7C524 8008DD14 00000000 */  nop
    /* 7C528 8008DD18 1800D102 */  mult       $s6, $s1
    /* 7C52C 8008DD1C 12480000 */  mflo       $t1
    /* 7C530 8008DD20 00000000 */  nop
    /* 7C534 8008DD24 00000000 */  nop
    /* 7C538 8008DD28 18003002 */  mult       $s1, $s0
    /* 7C53C 8008DD2C 21108401 */  addu       $v0, $t4, $a0
    /* 7C540 8008DD30 40100200 */  sll        $v0, $v0, 1
    /* 7C544 8008DD34 00101824 */  addiu      $t8, $zero, 0x1000
    /* 7C548 8008DD38 23780203 */  subu       $t7, $t8, $v0
    /* 7C54C 8008DD3C 2318E800 */  subu       $v1, $a3, $t0
    /* 7C550 8008DD40 40180300 */  sll        $v1, $v1, 1
    /* 7C554 8008DD44 2138E800 */  addu       $a3, $a3, $t0
    /* 7C558 8008DD48 40380700 */  sll        $a3, $a3, 1
    /* 7C55C 8008DD4C 21206401 */  addu       $a0, $t3, $a0
    /* 7C560 8008DD50 12300000 */  mflo       $a2
    /* 7C564 8008DD54 40200400 */  sll        $a0, $a0, 1
    /* 7C568 8008DD58 23700403 */  subu       $t6, $t8, $a0
    /* 7C56C 8008DD5C 1800D202 */  mult       $s6, $s2
    /* 7C570 8008DD60 21586C01 */  addu       $t3, $t3, $t4
    /* 7C574 8008DD64 40580B00 */  sll        $t3, $t3, 1
    /* 7C578 8008DD68 2C00B98F */  lw         $t9, 0x2C($sp)
    /* 7C57C 8008DD6C 032B0500 */  sra        $a1, $a1, 12
    /* 7C580 8008DD70 034B0900 */  sra        $t1, $t1, 12
    /* 7C584 8008DD74 2110A900 */  addu       $v0, $a1, $t1
    /* 7C588 8008DD78 40800200 */  sll        $s0, $v0, 1
    /* 7C58C 8008DD7C 2328A900 */  subu       $a1, $a1, $t1
    /* 7C590 8008DD80 40280500 */  sll        $a1, $a1, 1
    /* 7C594 8008DD84 23480B03 */  subu       $t1, $t8, $t3
    /* 7C598 8008DD88 03330600 */  sra        $a2, $a2, 12
    /* 7C59C 8008DD8C 12500000 */  mflo       $t2
    /* 7C5A0 8008DD90 03530A00 */  sra        $t2, $t2, 12
    /* 7C5A4 8008DD94 2310CA00 */  subu       $v0, $a2, $t2
    /* 7C5A8 8008DD98 40680200 */  sll        $t5, $v0, 1
    /* 7C5AC 8008DD9C 2130CA00 */  addu       $a2, $a2, $t2
    /* 7C5B0 8008DDA0 06002017 */  bnez       $t9, .L8008DDBC
    /* 7C5B4 8008DDA4 40300600 */   sll       $a2, $a2, 1
    /* 7C5B8 8008DDA8 6000B88F */  lw         $t8, 0x60($sp)
    /* 7C5BC 8008DDAC 00000000 */  nop
    /* 7C5C0 8008DDB0 1000088F */  lw         $t0, 0x10($t8)
    /* 7C5C4 8008DDB4 73370208 */  j          .L8008DDCC
    /* 7C5C8 8008DDB8 FFFFE231 */   andi      $v0, $t7, 0xFFFF
  .L8008DDBC:
    /* 7C5CC 8008DDBC 1000B98F */  lw         $t9, 0x10($sp)
    /* 7C5D0 8008DDC0 00000000 */  nop
    /* 7C5D4 8008DDC4 1000288F */  lw         $t0, 0x10($t9)
    /* 7C5D8 8008DDC8 FFFFE231 */  andi       $v0, $t7, 0xFFFF
  .L8008DDCC:
    /* 7C5DC 8008DDCC 001C0300 */  sll        $v1, $v1, 16
    /* 7C5E0 8008DDD0 25104300 */  or         $v0, $v0, $v1
    /* 7C5E4 8008DDD4 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 7C5E8 8008DDD8 FFFF0432 */  andi       $a0, $s0, 0xFFFF
    /* 7C5EC 8008DDDC 001C0700 */  sll        $v1, $a3, 16
    /* 7C5F0 8008DDE0 25208300 */  or         $a0, $a0, $v1
    /* 7C5F4 8008DDE4 0008C448 */  ctc2       $a0, $1 /* handwritten instruction */
    /* 7C5F8 8008DDE8 FFFFC231 */  andi       $v0, $t6, 0xFFFF
    /* 7C5FC 8008DDEC 001C0D00 */  sll        $v1, $t5, 16
    /* 7C600 8008DDF0 25104300 */  or         $v0, $v0, $v1
    /* 7C604 8008DDF4 0010C248 */  ctc2       $v0, $2 /* handwritten instruction */
    /* 7C608 8008DDF8 FFFFA430 */  andi       $a0, $a1, 0xFFFF
    /* 7C60C 8008DDFC 001C0600 */  sll        $v1, $a2, 16
    /* 7C610 8008DE00 25208300 */  or         $a0, $a0, $v1
    /* 7C614 8008DE04 0018C448 */  ctc2       $a0, $3 /* handwritten instruction */
    /* 7C618 8008DE08 0020C948 */  ctc2       $t1, $4 /* handwritten instruction */
    /* 7C61C 8008DE0C 06000385 */  lh         $v1, 0x6($t0)
    /* 7C620 8008DE10 0C000485 */  lh         $a0, 0xC($t0)
    /* 7C624 8008DE14 00000295 */  lhu        $v0, 0x0($t0)
    /* 7C628 8008DE18 001C0300 */  sll        $v1, $v1, 16
    /* 7C62C 8008DE1C 25104300 */  or         $v0, $v0, $v1
    /* 7C630 8008DE20 00008248 */  mtc2       $v0, $0 /* handwritten instruction */
    /* 7C634 8008DE24 00088448 */  mtc2       $a0, $1 /* handwritten instruction */
    /* 7C638 8008DE28 00000000 */  nop
    /* 7C63C 8008DE2C 00000000 */  nop
    /* 7C640 8008DE30 1260484A */  mvmva      1, 0, 0, 3, 0
    /* 7C644 8008DE34 08000385 */  lh         $v1, 0x8($t0)
    /* 7C648 8008DE38 0E000485 */  lh         $a0, 0xE($t0)
    /* 7C64C 8008DE3C 02000295 */  lhu        $v0, 0x2($t0)
    /* 7C650 8008DE40 001C0300 */  sll        $v1, $v1, 16
    /* 7C654 8008DE44 25104300 */  or         $v0, $v0, $v1
    /* 7C658 8008DE48 00108248 */  mtc2       $v0, $2 /* handwritten instruction */
    /* 7C65C 8008DE4C 00188448 */  mtc2       $a0, $3 /* handwritten instruction */
    /* 7C660 8008DE50 00480348 */  mfc2       $v1, $9 /* handwritten instruction */
    /* 7C664 8008DE54 00500248 */  mfc2       $v0, $10 /* handwritten instruction */
    /* 7C668 8008DE58 00580448 */  mfc2       $a0, $11 /* handwritten instruction */
    /* 7C66C 8008DE5C 000003A5 */  sh         $v1, 0x0($t0)
    /* 7C670 8008DE60 060002A5 */  sh         $v0, 0x6($t0)
    /* 7C674 8008DE64 0C0004A5 */  sh         $a0, 0xC($t0)
    /* 7C678 8008DE68 12E0484A */  mvmva      1, 0, 1, 3, 0
    /* 7C67C 8008DE6C 0A000385 */  lh         $v1, 0xA($t0)
    /* 7C680 8008DE70 10000485 */  lh         $a0, 0x10($t0)
    /* 7C684 8008DE74 04000295 */  lhu        $v0, 0x4($t0)
    /* 7C688 8008DE78 001C0300 */  sll        $v1, $v1, 16
    /* 7C68C 8008DE7C 25104300 */  or         $v0, $v0, $v1
    /* 7C690 8008DE80 00208248 */  mtc2       $v0, $4 /* handwritten instruction */
    /* 7C694 8008DE84 00288448 */  mtc2       $a0, $5 /* handwritten instruction */
    /* 7C698 8008DE88 00480348 */  mfc2       $v1, $9 /* handwritten instruction */
    /* 7C69C 8008DE8C 00500248 */  mfc2       $v0, $10 /* handwritten instruction */
    /* 7C6A0 8008DE90 00580448 */  mfc2       $a0, $11 /* handwritten instruction */
    /* 7C6A4 8008DE94 020003A5 */  sh         $v1, 0x2($t0)
    /* 7C6A8 8008DE98 080002A5 */  sh         $v0, 0x8($t0)
    /* 7C6AC 8008DE9C 0E0004A5 */  sh         $a0, 0xE($t0)
    /* 7C6B0 8008DEA0 1260494A */  mvmva      1, 0, 2, 3, 0
    /* 7C6B4 8008DEA4 00480248 */  mfc2       $v0, $9 /* handwritten instruction */
    /* 7C6B8 8008DEA8 00500348 */  mfc2       $v1, $10 /* handwritten instruction */
    /* 7C6BC 8008DEAC 00580448 */  mfc2       $a0, $11 /* handwritten instruction */
    /* 7C6C0 8008DEB0 2C00B88F */  lw         $t8, 0x2C($sp)
    /* 7C6C4 8008DEB4 00000000 */  nop
    /* 7C6C8 8008DEB8 01001827 */  addiu      $t8, $t8, 0x1
    /* 7C6CC 8008DEBC 2C00B8AF */  sw         $t8, 0x2C($sp)
    /* 7C6D0 8008DEC0 040002A5 */  sh         $v0, 0x4($t0)
    /* 7C6D4 8008DEC4 0200022B */  slti       $v0, $t8, 0x2
    /* 7C6D8 8008DEC8 0A0003A5 */  sh         $v1, 0xA($t0)
    /* 7C6DC 8008DECC 9BFE4014 */  bnez       $v0, .L8008D93C
    /* 7C6E0 8008DED0 100004A5 */   sh        $a0, 0x10($t0)
    /* 7C6E4 8008DED4 1000B98F */  lw         $t9, 0x10($sp)
    /* 7C6E8 8008DED8 2128E002 */  addu       $a1, $s7, $zero
    /* 7C6EC 8008DEDC 5267020C */  jal        func_80099D48
    /* 7C6F0 8008DEE0 1C002427 */   addiu     $a0, $t9, 0x1C
    /* 7C6F4 8008DEE4 1400B88F */  lw         $t8, 0x14($sp)
    /* 7C6F8 8008DEE8 2000B98F */  lw         $t9, 0x20($sp)
    /* 7C6FC 8008DEEC 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 7C700 8008DEF0 5800BE8F */  lw         $fp, 0x58($sp)
    /* 7C704 8008DEF4 5000B68F */  lw         $s6, 0x50($sp)
    /* 7C708 8008DEF8 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 7C70C 8008DEFC 4800B48F */  lw         $s4, 0x48($sp)
    /* 7C710 8008DF00 4400B38F */  lw         $s3, 0x44($sp)
    /* 7C714 8008DF04 4000B28F */  lw         $s2, 0x40($sp)
    /* 7C718 8008DF08 23C01903 */  subu       $t8, $t8, $t9
    /* 7C71C 8008DF0C 1400B8AF */  sw         $t8, 0x14($sp)
    /* 7C720 8008DF10 1800B88F */  lw         $t8, 0x18($sp)
    /* 7C724 8008DF14 2400B98F */  lw         $t9, 0x24($sp)
    /* 7C728 8008DF18 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 7C72C 8008DF1C 23C01903 */  subu       $t8, $t8, $t9
    /* 7C730 8008DF20 1800B8AF */  sw         $t8, 0x18($sp)
    /* 7C734 8008DF24 1C00B88F */  lw         $t8, 0x1C($sp)
    /* 7C738 8008DF28 2800B98F */  lw         $t9, 0x28($sp)
    /* 7C73C 8008DF2C 3800B08F */  lw         $s0, 0x38($sp)
    /* 7C740 8008DF30 23C01903 */  subu       $t8, $t8, $t9
    /* 7C744 8008DF34 1C00B8AF */  sw         $t8, 0x1C($sp)
    /* 7C748 8008DF38 1400B88F */  lw         $t8, 0x14($sp)
    /* 7C74C 8008DF3C 1000B98F */  lw         $t9, 0x10($sp)
    /* 7C750 8008DF40 07C0F802 */  srav       $t8, $t8, $s7
    /* 7C754 8008DF44 1400B8AF */  sw         $t8, 0x14($sp)
    /* 7C758 8008DF48 1000258F */  lw         $a1, 0x10($t9)
    /* 7C75C 8008DF4C 1800B88F */  lw         $t8, 0x18($sp)
    /* 7C760 8008DF50 1C00B98F */  lw         $t9, 0x1C($sp)
    /* 7C764 8008DF54 07C0F802 */  srav       $t8, $t8, $s7
    /* 7C768 8008DF58 1800B8AF */  sw         $t8, 0x18($sp)
    /* 7C76C 8008DF5C 1400A28C */  lw         $v0, 0x14($a1)
    /* 7C770 8008DF60 1400B88F */  lw         $t8, 0x14($sp)
    /* 7C774 8008DF64 07C8F902 */  srav       $t9, $t9, $s7
    /* 7C778 8008DF68 1C00B9AF */  sw         $t9, 0x1C($sp)
    /* 7C77C 8008DF6C 1800A38C */  lw         $v1, 0x18($a1)
    /* 7C780 8008DF70 21105800 */  addu       $v0, $v0, $t8
    /* 7C784 8008DF74 1400A2AC */  sw         $v0, 0x14($a1)
    /* 7C788 8008DF78 1800B98F */  lw         $t9, 0x18($sp)
    /* 7C78C 8008DF7C 1C00A48C */  lw         $a0, 0x1C($a1)
    /* 7C790 8008DF80 21187900 */  addu       $v1, $v1, $t9
    /* 7C794 8008DF84 1800A3AC */  sw         $v1, 0x18($a1)
    /* 7C798 8008DF88 1C00B88F */  lw         $t8, 0x1C($sp)
    /* 7C79C 8008DF8C 5400B78F */  lw         $s7, 0x54($sp)
    /* 7C7A0 8008DF90 21209800 */  addu       $a0, $a0, $t8
    /* 7C7A4 8008DF94 1C00A4AC */  sw         $a0, 0x1C($a1)
    /* 7C7A8 8008DF98 0800E003 */  jr         $ra
    /* 7C7AC 8008DF9C 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_8008D880
