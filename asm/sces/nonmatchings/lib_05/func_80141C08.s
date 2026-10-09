nonmatching func_80141C08, 0x394

glabel func_80141C08
    /* F0D4 80141C08 1C80023C */  lui        $v0, %hi(D_801BFEE0)
    /* F0D8 80141C0C E0FE428C */  lw         $v0, %lo(D_801BFEE0)($v0)
    /* F0DC 80141C10 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* F0E0 80141C14 1400B1AF */  sw         $s1, 0x14($sp)
    /* F0E4 80141C18 21888000 */  addu       $s1, $a0, $zero
    /* F0E8 80141C1C 2800BFAF */  sw         $ra, 0x28($sp)
    /* F0EC 80141C20 2400B5AF */  sw         $s5, 0x24($sp)
    /* F0F0 80141C24 2000B4AF */  sw         $s4, 0x20($sp)
    /* F0F4 80141C28 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* F0F8 80141C2C 1800B2AF */  sw         $s2, 0x18($sp)
    /* F0FC 80141C30 06004010 */  beqz       $v0, .L80141C4C
    /* F100 80141C34 1000B0AF */   sw        $s0, 0x10($sp)
    /* F104 80141C38 1C80023C */  lui        $v0, %hi(D_801BFE68)
    /* F108 80141C3C 68FE428C */  lw         $v0, %lo(D_801BFE68)($v0)
    /* F10C 80141C40 00000000 */  nop
    /* F110 80141C44 09F84000 */  jalr       $v0
    /* F114 80141C48 00000000 */   nop
  .L80141C4C:
    /* F118 80141C4C 1C80143C */  lui        $s4, %hi(D_801BFEE0)
    /* F11C 80141C50 E0FE948E */  lw         $s4, %lo(D_801BFEE0)($s4)
    /* F120 80141C54 00000000 */  nop
    /* F124 80141C58 25008012 */  beqz       $s4, .L80141CF0
    /* F128 80141C5C FFFF1024 */   addiu     $s0, $zero, -0x1
    /* F12C 80141C60 10FF1224 */  addiu      $s2, $zero, -0xF0
  .L80141C64:
    /* F130 80141C64 1C80023C */  lui        $v0, %hi(D_801BFED4)
    /* F134 80141C68 D4FE428C */  lw         $v0, %lo(D_801BFED4)($v0)
    /* F138 80141C6C 00000000 */  nop
    /* F13C 80141C70 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* F140 80141C74 1C80013C */  lui        $at, %hi(D_801BFED4)
    /* F144 80141C78 1D004018 */  blez       $v0, .L80141CF0
    /* F148 80141C7C D4FE22AC */   sw        $v0, %lo(D_801BFED4)($at)
    /* F14C 80141C80 07000006 */  bltz       $s0, .L80141CA0
    /* F150 80141C84 00000000 */   nop
    /* F154 80141C88 0C00248E */  lw         $a0, 0xC($s1)
    /* F158 80141C8C 1C80023C */  lui        $v0, %hi(D_801BFE68)
    /* F15C 80141C90 68FE428C */  lw         $v0, %lo(D_801BFE68)($v0)
    /* F160 80141C94 00000000 */  nop
    /* F164 80141C98 09F84000 */  jalr       $v0
    /* F168 80141C9C 21209200 */   addu      $a0, $a0, $s2
  .L80141CA0:
    /* F16C 80141CA0 21202002 */  addu       $a0, $s1, $zero
    /* F170 80141CA4 1C80023C */  lui        $v0, %hi(D_801BFE64)
    /* F174 80141CA8 64FE428C */  lw         $v0, %lo(D_801BFE64)($v0)
    /* F178 80141CAC 00000000 */  nop
    /* F17C 80141CB0 09F84000 */  jalr       $v0
    /* F180 80141CB4 01000524 */   addiu     $a1, $zero, 0x1
    /* F184 80141CB8 21202002 */  addu       $a0, $s1, $zero
    /* F188 80141CBC 9302050C */  jal        func_80140A4C
    /* F18C 80141CC0 FF004530 */   andi      $a1, $v0, 0xFF
    /* F190 80141CC4 AC004004 */  bltz       $v0, .L80141F78
    /* F194 80141CC8 00000000 */   nop
    /* F198 80141CCC B20A050C */  jal        func_80142AC8
    /* F19C 80141CD0 3C000424 */   addiu     $a0, $zero, 0x3C
    /* F1A0 80141CD4 3103050C */  jal        func_80140CC4
    /* F1A4 80141CD8 00000000 */   nop
    /* F1A8 80141CDC 62004010 */  beqz       $v0, .L80141E68
    /* F1AC 80141CE0 01001026 */   addiu     $s0, $s0, 0x1
    /* F1B0 80141CE4 0400022A */  slti       $v0, $s0, 0x4
    /* F1B4 80141CE8 DEFF4014 */  bnez       $v0, .L80141C64
    /* F1B8 80141CEC F0005226 */   addiu     $s2, $s2, 0xF0
  .L80141CF0:
    /* F1BC 80141CF0 21800000 */  addu       $s0, $zero, $zero
    /* F1C0 80141CF4 1C80033C */  lui        $v1, %hi(D_801BFE9C)
    /* F1C4 80141CF8 9CFE638C */  lw         $v1, %lo(D_801BFE9C)($v1)
    /* F1C8 80141CFC 1C80023C */  lui        $v0, %hi(D_801BFED4)
    /* F1CC 80141D00 D4FE428C */  lw         $v0, %lo(D_801BFED4)($v0)
    /* F1D0 80141D04 00000000 */  nop
    /* F1D4 80141D08 02004228 */  slti       $v0, $v0, 0x2
    /* F1D8 80141D0C 61004014 */  bnez       $v0, .L80141E94
    /* F1DC 80141D10 0100642C */   sltiu     $a0, $v1, 0x1
    /* F1E0 80141D14 1C80033C */  lui        $v1, %hi(D_801BFEB4)
    /* F1E4 80141D18 B4FE6324 */  addiu      $v1, $v1, %lo(D_801BFEB4)
    /* F1E8 80141D1C 80100400 */  sll        $v0, $a0, 2
    /* F1EC 80141D20 21904300 */  addu       $s2, $v0, $v1
    /* F1F0 80141D24 00110400 */  sll        $v0, $a0, 4
    /* F1F4 80141D28 23104400 */  subu       $v0, $v0, $a0
    /* F1F8 80141D2C 00990200 */  sll        $s3, $v0, 4
    /* F1FC 80141D30 03001524 */  addiu      $s5, $zero, 0x3
  .L80141D34:
    /* F200 80141D34 0000448E */  lw         $a0, 0x0($s2)
    /* F204 80141D38 00000000 */  nop
    /* F208 80141D3C 55008004 */  bltz       $a0, .L80141E94
    /* F20C 80141D40 00000000 */   nop
    /* F210 80141D44 0E008018 */  blez       $a0, .L80141D80
    /* F214 80141D48 00110400 */   sll       $v0, $a0, 4
    /* F218 80141D4C 1C80033C */  lui        $v1, %hi(D_801BFE90)
    /* F21C 80141D50 90FE638C */  lw         $v1, %lo(D_801BFE90)($v1)
    /* F220 80141D54 23104400 */  subu       $v0, $v0, $a0
    /* F224 80141D58 21186302 */  addu       $v1, $s3, $v1
    /* F228 80141D5C 0C00638C */  lw         $v1, 0xC($v1)
    /* F22C 80141D60 00110200 */  sll        $v0, $v0, 4
    /* F230 80141D64 21186200 */  addu       $v1, $v1, $v0
    /* F234 80141D68 10FF7024 */  addiu      $s0, $v1, -0xF0
    /* F238 80141D6C 1C80023C */  lui        $v0, %hi(D_801BFE7C)
    /* F23C 80141D70 7CFE428C */  lw         $v0, %lo(D_801BFE7C)($v0)
    /* F240 80141D74 00000000 */  nop
    /* F244 80141D78 09F84000 */  jalr       $v0
    /* F248 80141D7C 21200002 */   addu      $a0, $s0, $zero
  .L80141D80:
    /* F24C 80141D80 0000438E */  lw         $v1, 0x0($s2)
    /* F250 80141D84 00000000 */  nop
    /* F254 80141D88 0F007510 */  beq        $v1, $s5, .L80141DC8
    /* F258 80141D8C 00000000 */   nop
    /* F25C 80141D90 04006228 */  slti       $v0, $v1, 0x4
    /* F260 80141D94 07004010 */  beqz       $v0, .L80141DB4
    /* F264 80141D98 02006228 */   slti      $v0, $v1, 0x2
    /* F268 80141D9C 22004010 */  beqz       $v0, .L80141E28
    /* F26C 80141DA0 21202002 */   addu      $a0, $s1, $zero
    /* F270 80141DA4 20006004 */  bltz       $v1, .L80141E28
    /* F274 80141DA8 00000000 */   nop
    /* F278 80141DAC 79070508 */  j          .L80141DE4
    /* F27C 80141DB0 00000000 */   nop
  .L80141DB4:
    /* F280 80141DB4 04000224 */  addiu      $v0, $zero, 0x4
    /* F284 80141DB8 1B006214 */  bne        $v1, $v0, .L80141E28
    /* F288 80141DBC 21202002 */   addu      $a0, $s1, $zero
    /* F28C 80141DC0 8A070508 */  j          .L80141E28
    /* F290 80141DC4 000055AE */   sw        $s5, 0x0($s2)
  .L80141DC8:
    /* F294 80141DC8 1C80023C */  lui        $v0, %hi(D_801BFE7C)
    /* F298 80141DCC 7CFE428C */  lw         $v0, %lo(D_801BFE7C)($v0)
    /* F29C 80141DD0 00000000 */  nop
    /* F2A0 80141DD4 09F84000 */  jalr       $v0
    /* F2A4 80141DD8 10FF0426 */   addiu     $a0, $s0, -0xF0
    /* F2A8 80141DDC 88070508 */  j          .L80141E20
    /* F2AC 80141DE0 01000224 */   addiu     $v0, $zero, 0x1
  .L80141DE4:
    /* F2B0 80141DE4 1C80023C */  lui        $v0, %hi(D_801BFE90)
    /* F2B4 80141DE8 90FE428C */  lw         $v0, %lo(D_801BFE90)($v0)
    /* F2B8 80141DEC 00000000 */  nop
    /* F2BC 80141DF0 21805300 */  addu       $s0, $v0, $s3
    /* F2C0 80141DF4 1C80023C */  lui        $v0, %hi(D_801BFE7C)
    /* F2C4 80141DF8 7CFE428C */  lw         $v0, %lo(D_801BFE7C)($v0)
    /* F2C8 80141DFC 00000000 */  nop
    /* F2CC 80141E00 09F84000 */  jalr       $v0
    /* F2D0 80141E04 21200002 */   addu      $a0, $s0, $zero
    /* F2D4 80141E08 1C80023C */  lui        $v0, %hi(D_801BFE80)
    /* F2D8 80141E0C 80FE428C */  lw         $v0, %lo(D_801BFE80)($v0)
    /* F2DC 80141E10 00000000 */  nop
    /* F2E0 80141E14 09F84000 */  jalr       $v0
    /* F2E4 80141E18 21200002 */   addu      $a0, $s0, $zero
    /* F2E8 80141E1C FFFF0224 */  addiu      $v0, $zero, -0x1
  .L80141E20:
    /* F2EC 80141E20 000042AE */  sw         $v0, 0x0($s2)
    /* F2F0 80141E24 21202002 */  addu       $a0, $s1, $zero
  .L80141E28:
    /* F2F4 80141E28 1C80023C */  lui        $v0, %hi(D_801BFE64)
    /* F2F8 80141E2C 64FE428C */  lw         $v0, %lo(D_801BFE64)($v0)
    /* F2FC 80141E30 00000000 */  nop
    /* F300 80141E34 09F84000 */  jalr       $v0
    /* F304 80141E38 21288002 */   addu      $a1, $s4, $zero
    /* F308 80141E3C 21202002 */  addu       $a0, $s1, $zero
    /* F30C 80141E40 0F02050C */  jal        func_8014083C
    /* F310 80141E44 FF004530 */   andi      $a1, $v0, 0xFF
    /* F314 80141E48 4B004004 */  bltz       $v0, .L80141F78
    /* F318 80141E4C 00000000 */   nop
    /* F31C 80141E50 B20A050C */  jal        func_80142AC8
    /* F320 80141E54 3C000424 */   addiu     $a0, $zero, 0x3C
    /* F324 80141E58 3103050C */  jal        func_80140CC4
    /* F328 80141E5C 00000000 */   nop
    /* F32C 80141E60 03004014 */  bnez       $v0, .L80141E70
    /* F330 80141E64 00000000 */   nop
  .L80141E68:
    /* F334 80141E68 DE070508 */  j          .L80141F78
    /* F338 80141E6C FDFF0224 */   addiu     $v0, $zero, -0x3
  .L80141E70:
    /* F33C 80141E70 1C80023C */  lui        $v0, %hi(D_801BFED4)
    /* F340 80141E74 D4FE428C */  lw         $v0, %lo(D_801BFED4)($v0)
    /* F344 80141E78 00000000 */  nop
    /* F348 80141E7C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* F34C 80141E80 1C80013C */  lui        $at, %hi(D_801BFED4)
    /* F350 80141E84 D4FE22AC */  sw         $v0, %lo(D_801BFED4)($at)
    /* F354 80141E88 02004228 */  slti       $v0, $v0, 0x2
    /* F358 80141E8C A9FF4010 */  beqz       $v0, .L80141D34
    /* F35C 80141E90 00000000 */   nop
  .L80141E94:
    /* F360 80141E94 1C80023C */  lui        $v0, %hi(D_801BFED4)
    /* F364 80141E98 D4FE428C */  lw         $v0, %lo(D_801BFED4)($v0)
    /* F368 80141E9C 00000000 */  nop
    /* F36C 80141EA0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* F370 80141EA4 1C80013C */  lui        $at, %hi(D_801BFED4)
    /* F374 80141EA8 21004018 */  blez       $v0, .L80141F30
    /* F378 80141EAC D4FE22AC */   sw        $v0, %lo(D_801BFED4)($at)
    /* F37C 80141EB0 22001024 */  addiu      $s0, $zero, 0x22
  .L80141EB4:
    /* F380 80141EB4 21202002 */  addu       $a0, $s1, $zero
    /* F384 80141EB8 1C80023C */  lui        $v0, %hi(D_801BFE64)
    /* F388 80141EBC 64FE428C */  lw         $v0, %lo(D_801BFE64)($v0)
    /* F38C 80141EC0 00000000 */  nop
    /* F390 80141EC4 09F84000 */  jalr       $v0
    /* F394 80141EC8 21288002 */   addu      $a1, $s4, $zero
    /* F398 80141ECC 21202002 */  addu       $a0, $s1, $zero
    /* F39C 80141ED0 0F02050C */  jal        func_8014083C
    /* F3A0 80141ED4 FF004530 */   andi      $a1, $v0, 0xFF
    /* F3A4 80141ED8 27004004 */  bltz       $v0, .L80141F78
    /* F3A8 80141EDC 00000000 */   nop
    /* F3AC 80141EE0 1C80023C */  lui        $v0, %hi(D_801BFED8)
    /* F3B0 80141EE4 D8FE428C */  lw         $v0, %lo(D_801BFED8)($v0)
    /* F3B4 80141EE8 00000000 */  nop
    /* F3B8 80141EEC 0E004294 */  lhu        $v0, 0xE($v0)
    /* F3BC 80141EF0 00000000 */  nop
    /* F3C0 80141EF4 07005010 */  beq        $v0, $s0, .L80141F14
    /* F3C4 80141EF8 00000000 */   nop
    /* F3C8 80141EFC B20A050C */  jal        func_80142AC8
    /* F3CC 80141F00 3C000424 */   addiu     $a0, $zero, 0x3C
    /* F3D0 80141F04 3103050C */  jal        func_80140CC4
    /* F3D4 80141F08 00000000 */   nop
    /* F3D8 80141F0C 1A004010 */  beqz       $v0, .L80141F78
    /* F3DC 80141F10 FDFF0224 */   addiu     $v0, $zero, -0x3
  .L80141F14:
    /* F3E0 80141F14 1C80023C */  lui        $v0, %hi(D_801BFED4)
    /* F3E4 80141F18 D4FE428C */  lw         $v0, %lo(D_801BFED4)($v0)
    /* F3E8 80141F1C 00000000 */  nop
    /* F3EC 80141F20 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* F3F0 80141F24 1C80013C */  lui        $at, %hi(D_801BFED4)
    /* F3F4 80141F28 E2FF401C */  bgtz       $v0, .L80141EB4
    /* F3F8 80141F2C D4FE22AC */   sw        $v0, %lo(D_801BFED4)($at)
  .L80141F30:
    /* F3FC 80141F30 5503050C */  jal        func_80140D54
    /* F400 80141F34 00000000 */   nop
    /* F404 80141F38 44002392 */  lbu        $v1, 0x44($s1)
    /* F408 80141F3C 00000000 */  nop
    /* F40C 80141F40 01006224 */  addiu      $v0, $v1, 0x1
    /* F410 80141F44 440022A2 */  sb         $v0, 0x44($s1)
    /* F414 80141F48 1C80023C */  lui        $v0, %hi(D_801BFED8)
    /* F418 80141F4C D8FE428C */  lw         $v0, %lo(D_801BFED8)($v0)
    /* F41C 80141F50 3C00248E */  lw         $a0, 0x3C($s1)
    /* F420 80141F54 00004290 */  lbu        $v0, 0x0($v0)
    /* F424 80141F58 21186400 */  addu       $v1, $v1, $a0
    /* F428 80141F5C 000062A0 */  sb         $v0, 0x0($v1)
    /* F42C 80141F60 1C80023C */  lui        $v0, %hi(D_801BFE5C)
    /* F430 80141F64 5CFE428C */  lw         $v0, %lo(D_801BFE5C)($v0)
    /* F434 80141F68 00000000 */  nop
    /* F438 80141F6C 09F84000 */  jalr       $v0
    /* F43C 80141F70 21200000 */   addu      $a0, $zero, $zero
    /* F440 80141F74 21100000 */  addu       $v0, $zero, $zero
  .L80141F78:
    /* F444 80141F78 2800BF8F */  lw         $ra, 0x28($sp)
    /* F448 80141F7C 2400B58F */  lw         $s5, 0x24($sp)
    /* F44C 80141F80 2000B48F */  lw         $s4, 0x20($sp)
    /* F450 80141F84 1C00B38F */  lw         $s3, 0x1C($sp)
    /* F454 80141F88 1800B28F */  lw         $s2, 0x18($sp)
    /* F458 80141F8C 1400B18F */  lw         $s1, 0x14($sp)
    /* F45C 80141F90 1000B08F */  lw         $s0, 0x10($sp)
    /* F460 80141F94 0800E003 */  jr         $ra
    /* F464 80141F98 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_80141C08
    /* F468 80141F9C 00000000 */  nop
    /* F46C 80141FA0 00000000 */  nop
    /* F470 80141FA4 00000000 */  nop
