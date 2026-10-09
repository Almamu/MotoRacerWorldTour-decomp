nonmatching func_8005F0D4, 0x284

glabel func_8005F0D4
    /* 4D8E4 8005F0D4 0C80023C */  lui        $v0, %hi(D_800BC884)
    /* 4D8E8 8005F0D8 84C8428C */  lw         $v0, %lo(D_800BC884)($v0)
    /* 4D8EC 8005F0DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4D8F0 8005F0E0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4D8F4 8005F0E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4D8F8 8005F0E8 2801438C */  lw         $v1, 0x128($v0)
    /* 4D8FC 8005F0EC 0D80013C */  lui        $at, %hi(D_800D11B8)
    /* 4D900 8005F0F0 B81123AC */  sw         $v1, %lo(D_800D11B8)($at)
    /* 4D904 8005F0F4 1801428C */  lw         $v0, 0x118($v0)
    /* 4D908 8005F0F8 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 4D90C 8005F0FC 1A004410 */  beq        $v0, $a0, .L8005F168
    /* 4D910 8005F100 0C80053C */   lui       $a1, %hi(D_800C71C4)
    /* 4D914 8005F104 80100200 */  sll        $v0, $v0, 2
    /* 4D918 8005F108 0C80033C */  lui        $v1, %hi(D_800C6FB8)
    /* 4D91C 8005F10C B86F6324 */  addiu      $v1, $v1, %lo(D_800C6FB8)
    /* 4D920 8005F110 21104300 */  addu       $v0, $v0, $v1
    /* 4D924 8005F114 0000448C */  lw         $a0, 0x0($v0)
    /* 4D928 8005F118 C471A524 */  addiu      $a1, $a1, %lo(D_800C71C4)
    /* 4D92C 8005F11C 08008224 */  addiu      $v0, $a0, 0x8
    /* 4D930 8005F120 38008424 */  addiu      $a0, $a0, 0x38
  .L8005F124:
    /* 4D934 8005F124 0000478C */  lw         $a3, 0x0($v0)
    /* 4D938 8005F128 0400488C */  lw         $t0, 0x4($v0)
    /* 4D93C 8005F12C 0800498C */  lw         $t1, 0x8($v0)
    /* 4D940 8005F130 0C004A8C */  lw         $t2, 0xC($v0)
    /* 4D944 8005F134 0000A7AC */  sw         $a3, 0x0($a1)
    /* 4D948 8005F138 0400A8AC */  sw         $t0, 0x4($a1)
    /* 4D94C 8005F13C 0800A9AC */  sw         $t1, 0x8($a1)
    /* 4D950 8005F140 0C00AAAC */  sw         $t2, 0xC($a1)
    /* 4D954 8005F144 10004224 */  addiu      $v0, $v0, 0x10
    /* 4D958 8005F148 F6FF4414 */  bne        $v0, $a0, .L8005F124
    /* 4D95C 8005F14C 1000A524 */   addiu     $a1, $a1, 0x10
    /* 4D960 8005F150 0000478C */  lw         $a3, 0x0($v0)
    /* 4D964 8005F154 0400488C */  lw         $t0, 0x4($v0)
    /* 4D968 8005F158 0800498C */  lw         $t1, 0x8($v0)
    /* 4D96C 8005F15C 0000A7AC */  sw         $a3, 0x0($a1)
    /* 4D970 8005F160 0400A8AC */  sw         $t0, 0x4($a1)
    /* 4D974 8005F164 0800A9AC */  sw         $t1, 0x8($a1)
  .L8005F168:
    /* 4D978 8005F168 0C80033C */  lui        $v1, %hi(D_800BC884)
    /* 4D97C 8005F16C 84C8638C */  lw         $v1, %lo(D_800BC884)($v1)
    /* 4D980 8005F170 00000000 */  nop
    /* 4D984 8005F174 2001648C */  lw         $a0, 0x120($v1)
    /* 4D988 8005F178 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4D98C 8005F17C 19008210 */  beq        $a0, $v0, .L8005F1E4
    /* 4D990 8005F180 0C80053C */   lui       $a1, %hi(D_800C7200)
    /* 4D994 8005F184 80100400 */  sll        $v0, $a0, 2
    /* 4D998 8005F188 0C80033C */  lui        $v1, %hi(D_800C6FB8)
    /* 4D99C 8005F18C B86F6324 */  addiu      $v1, $v1, %lo(D_800C6FB8)
    /* 4D9A0 8005F190 21104300 */  addu       $v0, $v0, $v1
    /* 4D9A4 8005F194 0000448C */  lw         $a0, 0x0($v0)
    /* 4D9A8 8005F198 0072A524 */  addiu      $a1, $a1, %lo(D_800C7200)
    /* 4D9AC 8005F19C 44008224 */  addiu      $v0, $a0, 0x44
    /* 4D9B0 8005F1A0 94008424 */  addiu      $a0, $a0, 0x94
  .L8005F1A4:
    /* 4D9B4 8005F1A4 0000478C */  lw         $a3, 0x0($v0)
    /* 4D9B8 8005F1A8 0400488C */  lw         $t0, 0x4($v0)
    /* 4D9BC 8005F1AC 0800498C */  lw         $t1, 0x8($v0)
    /* 4D9C0 8005F1B0 0C004A8C */  lw         $t2, 0xC($v0)
    /* 4D9C4 8005F1B4 0000A7AC */  sw         $a3, 0x0($a1)
    /* 4D9C8 8005F1B8 0400A8AC */  sw         $t0, 0x4($a1)
    /* 4D9CC 8005F1BC 0800A9AC */  sw         $t1, 0x8($a1)
    /* 4D9D0 8005F1C0 0C00AAAC */  sw         $t2, 0xC($a1)
    /* 4D9D4 8005F1C4 10004224 */  addiu      $v0, $v0, 0x10
    /* 4D9D8 8005F1C8 F6FF4414 */  bne        $v0, $a0, .L8005F1A4
    /* 4D9DC 8005F1CC 1000A524 */   addiu     $a1, $a1, 0x10
    /* 4D9E0 8005F1D0 0C80033C */  lui        $v1, %hi(D_800BC884)
    /* 4D9E4 8005F1D4 84C8638C */  lw         $v1, %lo(D_800BC884)($v1)
    /* 4D9E8 8005F1D8 0000478C */  lw         $a3, 0x0($v0)
    /* 4D9EC 8005F1DC 00000000 */  nop
    /* 4D9F0 8005F1E0 0000A7AC */  sw         $a3, 0x0($a1)
  .L8005F1E4:
    /* 4D9F4 8005F1E4 A416628C */  lw         $v0, 0x16A4($v1)
    /* 4D9F8 8005F1E8 00000000 */  nop
    /* 4D9FC 8005F1EC 40004010 */  beqz       $v0, .L8005F2F0
    /* 4DA00 8005F1F0 FFFF1024 */   addiu     $s0, $zero, -0x1
    /* 4DA04 8005F1F4 2C01628C */  lw         $v0, 0x12C($v1)
    /* 4DA08 8005F1F8 0D80013C */  lui        $at, %hi(D_800D11BC)
    /* 4DA0C 8005F1FC BC1122AC */  sw         $v0, %lo(D_800D11BC)($at)
    /* 4DA10 8005F200 1C01628C */  lw         $v0, 0x11C($v1)
    /* 4DA14 8005F204 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 4DA18 8005F208 1A004310 */  beq        $v0, $v1, .L8005F274
    /* 4DA1C 8005F20C 0C80053C */   lui       $a1, %hi(D_800C725C)
    /* 4DA20 8005F210 80100200 */  sll        $v0, $v0, 2
    /* 4DA24 8005F214 0C80033C */  lui        $v1, %hi(D_800C6FB8)
    /* 4DA28 8005F218 B86F6324 */  addiu      $v1, $v1, %lo(D_800C6FB8)
    /* 4DA2C 8005F21C 21104300 */  addu       $v0, $v0, $v1
    /* 4DA30 8005F220 0000448C */  lw         $a0, 0x0($v0)
    /* 4DA34 8005F224 5C72A524 */  addiu      $a1, $a1, %lo(D_800C725C)
    /* 4DA38 8005F228 08008224 */  addiu      $v0, $a0, 0x8
    /* 4DA3C 8005F22C 38008424 */  addiu      $a0, $a0, 0x38
  .L8005F230:
    /* 4DA40 8005F230 0000478C */  lw         $a3, 0x0($v0)
    /* 4DA44 8005F234 0400488C */  lw         $t0, 0x4($v0)
    /* 4DA48 8005F238 0800498C */  lw         $t1, 0x8($v0)
    /* 4DA4C 8005F23C 0C004A8C */  lw         $t2, 0xC($v0)
    /* 4DA50 8005F240 0000A7AC */  sw         $a3, 0x0($a1)
    /* 4DA54 8005F244 0400A8AC */  sw         $t0, 0x4($a1)
    /* 4DA58 8005F248 0800A9AC */  sw         $t1, 0x8($a1)
    /* 4DA5C 8005F24C 0C00AAAC */  sw         $t2, 0xC($a1)
    /* 4DA60 8005F250 10004224 */  addiu      $v0, $v0, 0x10
    /* 4DA64 8005F254 F6FF4414 */  bne        $v0, $a0, .L8005F230
    /* 4DA68 8005F258 1000A524 */   addiu     $a1, $a1, 0x10
    /* 4DA6C 8005F25C 0000478C */  lw         $a3, 0x0($v0)
    /* 4DA70 8005F260 0400488C */  lw         $t0, 0x4($v0)
    /* 4DA74 8005F264 0800498C */  lw         $t1, 0x8($v0)
    /* 4DA78 8005F268 0000A7AC */  sw         $a3, 0x0($a1)
    /* 4DA7C 8005F26C 0400A8AC */  sw         $t0, 0x4($a1)
    /* 4DA80 8005F270 0800A9AC */  sw         $t1, 0x8($a1)
  .L8005F274:
    /* 4DA84 8005F274 0C80023C */  lui        $v0, %hi(D_800BC884)
    /* 4DA88 8005F278 84C8428C */  lw         $v0, %lo(D_800BC884)($v0)
    /* 4DA8C 8005F27C 00000000 */  nop
    /* 4DA90 8005F280 2401428C */  lw         $v0, 0x124($v0)
    /* 4DA94 8005F284 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 4DA98 8005F288 17004310 */  beq        $v0, $v1, .L8005F2E8
    /* 4DA9C 8005F28C 0C80053C */   lui       $a1, %hi(D_800C7298)
    /* 4DAA0 8005F290 80100200 */  sll        $v0, $v0, 2
    /* 4DAA4 8005F294 0C80033C */  lui        $v1, %hi(D_800C6FB8)
    /* 4DAA8 8005F298 B86F6324 */  addiu      $v1, $v1, %lo(D_800C6FB8)
    /* 4DAAC 8005F29C 21104300 */  addu       $v0, $v0, $v1
    /* 4DAB0 8005F2A0 0000448C */  lw         $a0, 0x0($v0)
    /* 4DAB4 8005F2A4 9872A524 */  addiu      $a1, $a1, %lo(D_800C7298)
    /* 4DAB8 8005F2A8 44008224 */  addiu      $v0, $a0, 0x44
    /* 4DABC 8005F2AC 94008424 */  addiu      $a0, $a0, 0x94
  .L8005F2B0:
    /* 4DAC0 8005F2B0 0000478C */  lw         $a3, 0x0($v0)
    /* 4DAC4 8005F2B4 0400488C */  lw         $t0, 0x4($v0)
    /* 4DAC8 8005F2B8 0800498C */  lw         $t1, 0x8($v0)
    /* 4DACC 8005F2BC 0C004A8C */  lw         $t2, 0xC($v0)
    /* 4DAD0 8005F2C0 0000A7AC */  sw         $a3, 0x0($a1)
    /* 4DAD4 8005F2C4 0400A8AC */  sw         $t0, 0x4($a1)
    /* 4DAD8 8005F2C8 0800A9AC */  sw         $t1, 0x8($a1)
    /* 4DADC 8005F2CC 0C00AAAC */  sw         $t2, 0xC($a1)
    /* 4DAE0 8005F2D0 10004224 */  addiu      $v0, $v0, 0x10
    /* 4DAE4 8005F2D4 F6FF4414 */  bne        $v0, $a0, .L8005F2B0
    /* 4DAE8 8005F2D8 1000A524 */   addiu     $a1, $a1, 0x10
    /* 4DAEC 8005F2DC 0000478C */  lw         $a3, 0x0($v0)
    /* 4DAF0 8005F2E0 00000000 */  nop
    /* 4DAF4 8005F2E4 0000A7AC */  sw         $a3, 0x0($a1)
  .L8005F2E8:
    /* 4DAF8 8005F2E8 D07C0108 */  j          .L8005F340
    /* 4DAFC 8005F2EC 02000424 */   addiu     $a0, $zero, 0x2
  .L8005F2F0:
    /* 4DB00 8005F2F0 1C01628C */  lw         $v0, 0x11C($v1)
    /* 4DB04 8005F2F4 00000000 */  nop
    /* 4DB08 8005F2F8 07005010 */  beq        $v0, $s0, .L8005F318
    /* 4DB0C 8005F2FC 0C80043C */   lui       $a0, %hi(D_800C725C)
    /* 4DB10 8005F300 5C728424 */  addiu      $a0, $a0, %lo(D_800C725C)
    /* 4DB14 8005F304 21280000 */  addu       $a1, $zero, $zero
    /* 4DB18 8005F308 56D8020C */  jal        func_800B6158
    /* 4DB1C 8005F30C 3C000624 */   addiu     $a2, $zero, 0x3C
    /* 4DB20 8005F310 0C80033C */  lui        $v1, %hi(D_800BC884)
    /* 4DB24 8005F314 84C8638C */  lw         $v1, %lo(D_800BC884)($v1)
  .L8005F318:
    /* 4DB28 8005F318 00000000 */  nop
    /* 4DB2C 8005F31C 2401628C */  lw         $v0, 0x124($v1)
    /* 4DB30 8005F320 00000000 */  nop
    /* 4DB34 8005F324 05005010 */  beq        $v0, $s0, .L8005F33C
    /* 4DB38 8005F328 0C80043C */   lui       $a0, %hi(D_800C7298)
    /* 4DB3C 8005F32C 98728424 */  addiu      $a0, $a0, %lo(D_800C7298)
    /* 4DB40 8005F330 21280000 */  addu       $a1, $zero, $zero
    /* 4DB44 8005F334 56D8020C */  jal        func_800B6158
    /* 4DB48 8005F338 54000624 */   addiu     $a2, $zero, 0x54
  .L8005F33C:
    /* 4DB4C 8005F33C 01000424 */  addiu      $a0, $zero, 0x1
  .L8005F340:
    /* 4DB50 8005F340 E6BE020C */  jal        func_800AFB98
    /* 4DB54 8005F344 00000000 */   nop
    /* 4DB58 8005F348 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4DB5C 8005F34C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4DB60 8005F350 0800E003 */  jr         $ra
    /* 4DB64 8005F354 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8005F0D4
