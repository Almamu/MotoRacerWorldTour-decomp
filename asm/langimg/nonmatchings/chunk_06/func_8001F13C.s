nonmatching func_8001F13C, 0x540

glabel func_8001F13C
    /* D94C 8001F13C 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* D950 8001F140 9800B0AF */  sw         $s0, 0x98($sp)
    /* D954 8001F144 2000B027 */  addiu      $s0, $sp, 0x20
    /* D958 8001F148 9C00B1AF */  sw         $s1, 0x9C($sp)
    /* D95C 8001F14C 2188E000 */  addu       $s1, $a3, $zero
    /* D960 8001F150 80290500 */  sll        $a1, $a1, 6
    /* D964 8001F154 0C800D3C */  lui        $t5, %hi(D_800C4994)
    /* D968 8001F158 9449AD25 */  addiu      $t5, $t5, %lo(D_800C4994)
    /* D96C 8001F15C BC00BFAF */  sw         $ra, 0xBC($sp)
    /* D970 8001F160 B800BEAF */  sw         $fp, 0xB8($sp)
    /* D974 8001F164 B400B7AF */  sw         $s7, 0xB4($sp)
    /* D978 8001F168 B000B6AF */  sw         $s6, 0xB0($sp)
    /* D97C 8001F16C AC00B5AF */  sw         $s5, 0xAC($sp)
    /* D980 8001F170 A800B4AF */  sw         $s4, 0xA8($sp)
    /* D984 8001F174 A400B3AF */  sw         $s3, 0xA4($sp)
    /* D988 8001F178 A000B2AF */  sw         $s2, 0xA0($sp)
    /* D98C 8001F17C C000A4AF */  sw         $a0, 0xC0($sp)
    /* D990 8001F180 0000C88C */  lw         $t0, 0x0($a2)
    /* D994 8001F184 0400C98C */  lw         $t1, 0x4($a2)
    /* D998 8001F188 0000228E */  lw         $v0, 0x0($s1)
    /* D99C 8001F18C 0800C38C */  lw         $v1, 0x8($a2)
    /* D9A0 8001F190 0400268E */  lw         $a2, 0x4($s1)
    /* D9A4 8001F194 0800278E */  lw         $a3, 0x8($s1)
    /* D9A8 8001F198 D400B28F */  lw         $s2, 0xD4($sp)
    /* D9AC 8001F19C 2198AD00 */  addu       $s3, $a1, $t5
    /* D9B0 8001F1A0 8000A5AF */  sw         $a1, 0x80($sp)
    /* D9B4 8001F1A4 23400201 */  subu       $t0, $t0, $v0
    /* D9B8 8001F1A8 23482601 */  subu       $t1, $t1, $a2
    /* D9BC 8001F1AC 23186700 */  subu       $v1, $v1, $a3
    /* D9C0 8001F1B0 2000A8AF */  sw         $t0, 0x20($sp)
    /* D9C4 8001F1B4 2400A9AF */  sw         $t1, 0x24($sp)
    /* D9C8 8001F1B8 2800A3AF */  sw         $v1, 0x28($sp)
    /* D9CC 8001F1BC 08006E86 */  lh         $t6, 0x8($s3)
    /* D9D0 8001F1C0 21200002 */  addu       $a0, $s0, $zero
    /* D9D4 8001F1C4 8F64020C */  jal        func_8009923C
    /* D9D8 8001F1C8 8400AEAF */   sw        $t6, 0x84($sp)
    /* D9DC 8001F1CC 03004010 */  beqz       $v0, .L8001F1DC
    /* D9E0 8001F1D0 8800A2AF */   sw        $v0, 0x88($sp)
    /* D9E4 8001F1D4 A763020C */  jal        func_80098E9C
    /* D9E8 8001F1D8 21200002 */   addu      $a0, $s0, $zero
  .L8001F1DC:
    /* D9EC 8001F1DC 8400A58F */  lw         $a1, 0x84($sp)
    /* D9F0 8001F1E0 5D65020C */  jal        func_80099574
    /* D9F4 8001F1E4 21200002 */   addu      $a0, $s0, $zero
    /* D9F8 8001F1E8 0000238E */  lw         $v1, 0x0($s1)
    /* D9FC 8001F1EC C3271200 */  sra        $a0, $s2, 31
    /* DA00 8001F1F0 1000A3AF */  sw         $v1, 0x10($sp)
    /* DA04 8001F1F4 0400228E */  lw         $v0, 0x4($s1)
    /* DA08 8001F1F8 0800258E */  lw         $a1, 0x8($s1)
    /* DA0C 8001F1FC 1000A327 */  addiu      $v1, $sp, 0x10
    /* DA10 8001F200 040062AC */  sw         $v0, 0x4($v1)
    /* DA14 8001F204 26104402 */  xor        $v0, $s2, $a0
    /* DA18 8001F208 23104400 */  subu       $v0, $v0, $a0
    /* DA1C 8001F20C 080065AC */  sw         $a1, 0x8($v1)
    /* DA20 8001F210 00104328 */  slti       $v1, $v0, 0x1000
    /* DA24 8001F214 02006014 */  bnez       $v1, .L8001F220
    /* DA28 8001F218 21184000 */   addu      $v1, $v0, $zero
    /* DA2C 8001F21C 00100324 */  addiu      $v1, $zero, 0x1000
  .L8001F220:
    /* DA30 8001F220 06006286 */  lh         $v0, 0x6($s3)
    /* DA34 8001F224 00000000 */  nop
    /* DA38 8001F228 18004300 */  mult       $v0, $v1
    /* DA3C 8001F22C 21F00000 */  addu       $fp, $zero, $zero
    /* DA40 8001F230 12100000 */  mflo       $v0
    /* DA44 8001F234 03130200 */  sra        $v0, $v0, 12
    /* DA48 8001F238 8C00A2AF */  sw         $v0, 0x8C($sp)
  .L8001F23C:
    /* DA4C 8001F23C 8C00B58F */  lw         $s5, 0x8C($sp)
    /* DA50 8001F240 00000000 */  nop
    /* DA54 8001F244 F800A012 */  beqz       $s5, .L8001F628
    /* DA58 8001F248 1000AD27 */   addiu     $t5, $sp, 0x10
    /* DA5C 8001F24C 9000ADAF */  sw         $t5, 0x90($sp)
    /* DA60 8001F250 0C800D3C */  lui        $t5, %hi(D_800C4994)
    /* DA64 8001F254 9449AD25 */  addiu      $t5, $t5, %lo(D_800C4994)
    /* DA68 8001F258 6210163C */  lui        $s6, (0x10624DD3 >> 16)
    /* DA6C 8001F25C D34DD636 */  ori        $s6, $s6, (0x10624DD3 & 0xFFFF)
    /* DA70 8001F260 0D80143C */  lui        $s4, %hi(D_800CA968)
    /* DA74 8001F264 68A99426 */  addiu      $s4, $s4, %lo(D_800CA968)
    /* DA78 8001F268 8000AE8F */  lw         $t6, 0x80($sp)
    /* DA7C 8001F26C 10001724 */  addiu      $s7, $zero, 0x10
    /* DA80 8001F270 2190CD01 */  addu       $s2, $t6, $t5
  .L8001F274:
    /* DA84 8001F274 16004C96 */  lhu        $t4, 0x16($s2)
    /* DA88 8001F278 24068897 */  lhu        $t0, %gp_rel(D_800C4D14)($gp)
    /* DA8C 8001F27C 00640C00 */  sll        $t4, $t4, 16
    /* DA90 8001F280 FF000231 */  andi       $v0, $t0, 0xFF
    /* DA94 8001F284 40100200 */  sll        $v0, $v0, 1
    /* DA98 8001F288 21105400 */  addu       $v0, $v0, $s4
    /* DA9C 8001F28C 00004A84 */  lh         $t2, 0x0($v0)
    /* DAA0 8001F290 031C0C00 */  sra        $v1, $t4, 16
    /* DAA4 8001F294 18004301 */  mult       $t2, $v1
    /* DAA8 8001F298 01000825 */  addiu      $t0, $t0, 0x1
    /* DAAC 8001F29C FF000231 */  andi       $v0, $t0, 0xFF
    /* DAB0 8001F2A0 40100200 */  sll        $v0, $v0, 1
    /* DAB4 8001F2A4 21105400 */  addu       $v0, $v0, $s4
    /* DAB8 8001F2A8 12500000 */  mflo       $t2
    /* DABC 8001F2AC 00004984 */  lh         $t1, 0x0($v0)
    /* DAC0 8001F2B0 00000000 */  nop
    /* DAC4 8001F2B4 18002301 */  mult       $t1, $v1
    /* DAC8 8001F2B8 7000A427 */  addiu      $a0, $sp, 0x70
    /* DACC 8001F2BC 4000A627 */  addiu      $a2, $sp, 0x40
    /* DAD0 8001F2C0 D000A58F */  lw         $a1, 0xD0($sp)
    /* DAD4 8001F2C4 01000B25 */  addiu      $t3, $t0, 0x1
    /* DAD8 8001F2C8 FF006231 */  andi       $v0, $t3, 0xFF
    /* DADC 8001F2CC 40100200 */  sll        $v0, $v0, 1
    /* DAE0 8001F2D0 21105400 */  addu       $v0, $v0, $s4
    /* DAE4 8001F2D4 12480000 */  mflo       $t1
    /* DAE8 8001F2D8 00004784 */  lh         $a3, 0x0($v0)
    /* DAEC 8001F2DC C000AD8F */  lw         $t5, 0xC0($sp)
    /* DAF0 8001F2E0 1800E300 */  mult       $a3, $v1
    /* DAF4 8001F2E4 240688A7 */  sh         $t0, %gp_rel(D_800C4D14)($gp)
    /* DAF8 8001F2E8 02000825 */  addiu      $t0, $t0, 0x2
    /* DAFC 8001F2EC 044BB385 */  lh         $s3, 0x4B04($t5)
    /* DB00 8001F2F0 C2670C00 */  srl        $t4, $t4, 31
    /* DB04 8001F2F4 24068BA7 */  sh         $t3, %gp_rel(D_800C4D14)($gp)
    /* DB08 8001F2F8 240688A7 */  sh         $t0, %gp_rel(D_800C4D14)($gp)
    /* DB0C 8001F2FC 40101300 */  sll        $v0, $s3, 1
    /* DB10 8001F300 21105300 */  addu       $v0, $v0, $s3
    /* DB14 8001F304 40110200 */  sll        $v0, $v0, 5
    /* DB18 8001F308 21884D00 */  addu       $s1, $v0, $t5
    /* DB1C 8001F30C 0D80023C */  lui        $v0, %hi(D_800D6100)
    /* DB20 8001F310 0061428C */  lw         $v0, %lo(D_800D6100)($v0)
    /* DB24 8001F314 12380000 */  mflo       $a3
    /* DB28 8001F318 00130200 */  sll        $v0, $v0, 12
    /* DB2C 8001F31C 03530A00 */  sra        $t2, $t2, 12
    /* DB30 8001F320 18005600 */  mult       $v0, $s6
    /* DB34 8001F324 21186C00 */  addu       $v1, $v1, $t4
    /* DB38 8001F328 43180300 */  sra        $v1, $v1, 1
    /* DB3C 8001F32C 23504301 */  subu       $t2, $t2, $v1
    /* DB40 8001F330 034B0900 */  sra        $t1, $t1, 12
    /* DB44 8001F334 23482301 */  subu       $t1, $t1, $v1
    /* DB48 8001F338 4000AAAF */  sw         $t2, 0x40($sp)
    /* DB4C 8001F33C 4400A9AF */  sw         $t1, 0x44($sp)
    /* DB50 8001F340 033B0700 */  sra        $a3, $a3, 12
    /* DB54 8001F344 2338E300 */  subu       $a3, $a3, $v1
    /* DB58 8001F348 C3170200 */  sra        $v0, $v0, 31
    /* DB5C 8001F34C 4800A7AF */  sw         $a3, 0x48($sp)
    /* DB60 8001F350 10800000 */  mfhi       $s0
    /* DB64 8001F354 83811000 */  sra        $s0, $s0, 6
    /* DB68 8001F358 2666020C */  jal        func_80099898
    /* DB6C 8001F35C 23800202 */   subu      $s0, $s0, $v0
    /* DB70 8001F360 14004586 */  lh         $a1, 0x14($s2)
    /* DB74 8001F364 00000000 */  nop
    /* DB78 8001F368 18000502 */  mult       $s0, $a1
    /* DB7C 8001F36C 3000A427 */  addiu      $a0, $sp, 0x30
    /* DB80 8001F370 7000A28F */  lw         $v0, 0x70($sp)
    /* DB84 8001F374 7400A38F */  lw         $v1, 0x74($sp)
    /* DB88 8001F378 7800A78F */  lw         $a3, 0x78($sp)
    /* DB8C 8001F37C 18000624 */  addiu      $a2, $zero, 0x18
    /* DB90 8001F380 3000A2AF */  sw         $v0, 0x30($sp)
    /* DB94 8001F384 3400A3AF */  sw         $v1, 0x34($sp)
    /* DB98 8001F388 12280000 */  mflo       $a1
    /* DB9C 8001F38C 3C65020C */  jal        func_800994F0
    /* DBA0 8001F390 3800A7AF */   sw        $a3, 0x38($sp)
    /* DBA4 8001F394 30004C96 */  lhu        $t4, 0x30($s2)
    /* DBA8 8001F398 24068897 */  lhu        $t0, %gp_rel(D_800C4D14)($gp)
    /* DBAC 8001F39C 00640C00 */  sll        $t4, $t4, 16
    /* DBB0 8001F3A0 FF000231 */  andi       $v0, $t0, 0xFF
    /* DBB4 8001F3A4 40100200 */  sll        $v0, $v0, 1
    /* DBB8 8001F3A8 21105400 */  addu       $v0, $v0, $s4
    /* DBBC 8001F3AC 00004B84 */  lh         $t3, 0x0($v0)
    /* DBC0 8001F3B0 033C0C00 */  sra        $a3, $t4, 16
    /* DBC4 8001F3B4 18006701 */  mult       $t3, $a3
    /* DBC8 8001F3B8 01000825 */  addiu      $t0, $t0, 0x1
    /* DBCC 8001F3BC FF000231 */  andi       $v0, $t0, 0xFF
    /* DBD0 8001F3C0 40100200 */  sll        $v0, $v0, 1
    /* DBD4 8001F3C4 21105400 */  addu       $v0, $v0, $s4
    /* DBD8 8001F3C8 12580000 */  mflo       $t3
    /* DBDC 8001F3CC 00004984 */  lh         $t1, 0x0($v0)
    /* DBE0 8001F3D0 00000000 */  nop
    /* DBE4 8001F3D4 18002701 */  mult       $t1, $a3
    /* DBE8 8001F3D8 7000A427 */  addiu      $a0, $sp, 0x70
    /* DBEC 8001F3DC 6000A527 */  addiu      $a1, $sp, 0x60
    /* DBF0 8001F3E0 9000A68F */  lw         $a2, 0x90($sp)
    /* DBF4 8001F3E4 01000A25 */  addiu      $t2, $t0, 0x1
    /* DBF8 8001F3E8 FF004231 */  andi       $v0, $t2, 0xFF
    /* DBFC 8001F3EC 40100200 */  sll        $v0, $v0, 1
    /* DC00 8001F3F0 21105400 */  addu       $v0, $v0, $s4
    /* DC04 8001F3F4 00004384 */  lh         $v1, 0x0($v0)
    /* DC08 8001F3F8 12480000 */  mflo       $t1
    /* DC0C 8001F3FC 240688A7 */  sh         $t0, %gp_rel(D_800C4D14)($gp)
    /* DC10 8001F400 02000825 */  addiu      $t0, $t0, 0x2
    /* DC14 8001F404 18006700 */  mult       $v1, $a3
    /* DC18 8001F408 C2670C00 */  srl        $t4, $t4, 31
    /* DC1C 8001F40C 24068AA7 */  sh         $t2, %gp_rel(D_800C4D14)($gp)
    /* DC20 8001F410 240688A7 */  sh         $t0, %gp_rel(D_800C4D14)($gp)
    /* DC24 8001F414 035B0B00 */  sra        $t3, $t3, 12
    /* DC28 8001F418 2138EC00 */  addu       $a3, $a3, $t4
    /* DC2C 8001F41C 43380700 */  sra        $a3, $a3, 1
    /* DC30 8001F420 23586701 */  subu       $t3, $t3, $a3
    /* DC34 8001F424 034B0900 */  sra        $t1, $t1, 12
    /* DC38 8001F428 23482701 */  subu       $t1, $t1, $a3
    /* DC3C 8001F42C 6000ABAF */  sw         $t3, 0x60($sp)
    /* DC40 8001F430 6400A9AF */  sw         $t1, 0x64($sp)
    /* DC44 8001F434 12180000 */  mflo       $v1
    /* DC48 8001F438 031B0300 */  sra        $v1, $v1, 12
    /* DC4C 8001F43C 23186700 */  subu       $v1, $v1, $a3
    /* DC50 8001F440 2666020C */  jal        func_80099898
    /* DC54 8001F444 6800A3AF */   sw        $v1, 0x68($sp)
    /* DC58 8001F448 7000A98F */  lw         $t1, 0x70($sp)
    /* DC5C 8001F44C 02004296 */  lhu        $v0, 0x2($s2)
    /* DC60 8001F450 84253126 */  addiu      $s1, $s1, 0x2584
    /* DC64 8001F454 000032AE */  sw         $s2, 0x0($s1)
    /* DC68 8001F458 280022A6 */  sh         $v0, 0x28($s1)
    /* DC6C 8001F45C 040029AE */  sw         $t1, 0x4($s1)
    /* DC70 8001F460 7400A78F */  lw         $a3, 0x74($sp)
    /* DC74 8001F464 7800A88F */  lw         $t0, 0x78($sp)
    /* DC78 8001F468 3000A38F */  lw         $v1, 0x30($sp)
    /* DC7C 8001F46C 04002226 */  addiu      $v0, $s1, 0x4
    /* DC80 8001F470 040047AC */  sw         $a3, 0x4($v0)
    /* DC84 8001F474 080048AC */  sw         $t0, 0x8($v0)
    /* DC88 8001F478 1C0023AE */  sw         $v1, 0x1C($s1)
    /* DC8C 8001F47C 3400A48F */  lw         $a0, 0x34($sp)
    /* DC90 8001F480 3800A58F */  lw         $a1, 0x38($sp)
    /* DC94 8001F484 1C002326 */  addiu      $v1, $s1, 0x1C
    /* DC98 8001F488 040064AC */  sw         $a0, 0x4($v1)
    /* DC9C 8001F48C 080065AC */  sw         $a1, 0x8($v1)
    /* DCA0 8001F490 24068697 */  lhu        $a2, %gp_rel(D_800C4D14)($gp)
    /* DCA4 8001F494 2C004386 */  lh         $v1, 0x2C($s2)
    /* DCA8 8001F498 2A004586 */  lh         $a1, 0x2A($s2)
    /* DCAC 8001F49C FF00C230 */  andi       $v0, $a2, 0xFF
    /* DCB0 8001F4A0 40100200 */  sll        $v0, $v0, 1
    /* DCB4 8001F4A4 21105400 */  addu       $v0, $v0, $s4
    /* DCB8 8001F4A8 00004484 */  lh         $a0, 0x0($v0)
    /* DCBC 8001F4AC 23186500 */  subu       $v1, $v1, $a1
    /* DCC0 8001F4B0 18008300 */  mult       $a0, $v1
    /* DCC4 8001F4B4 0100C624 */  addiu      $a2, $a2, 0x1
    /* DCC8 8001F4B8 FF00C230 */  andi       $v0, $a2, 0xFF
    /* DCCC 8001F4BC 40100200 */  sll        $v0, $v0, 1
    /* DCD0 8001F4C0 21105400 */  addu       $v0, $v0, $s4
    /* DCD4 8001F4C4 240686A7 */  sh         $a2, %gp_rel(D_800C4D14)($gp)
    /* DCD8 8001F4C8 2A004396 */  lhu        $v1, 0x2A($s2)
    /* DCDC 8001F4CC 12200000 */  mflo       $a0
    /* DCE0 8001F4D0 03230400 */  sra        $a0, $a0, 12
    /* DCE4 8001F4D4 21186400 */  addu       $v1, $v1, $a0
    /* DCE8 8001F4D8 2A0023A6 */  sh         $v1, 0x2A($s1)
    /* DCEC 8001F4DC 1A004386 */  lh         $v1, 0x1A($s2)
    /* DCF0 8001F4E0 18004586 */  lh         $a1, 0x18($s2)
    /* DCF4 8001F4E4 00004484 */  lh         $a0, 0x0($v0)
    /* DCF8 8001F4E8 23186500 */  subu       $v1, $v1, $a1
    /* DCFC 8001F4EC 18008300 */  mult       $a0, $v1
    /* DD00 8001F4F0 5000A9AF */  sw         $t1, 0x50($sp)
    /* DD04 8001F4F4 5400A7AF */  sw         $a3, 0x54($sp)
    /* DD08 8001F4F8 5800A8AF */  sw         $t0, 0x58($sp)
    /* DD0C 8001F4FC 18004296 */  lhu        $v0, 0x18($s2)
    /* DD10 8001F500 12200000 */  mflo       $a0
    /* DD14 8001F504 03230400 */  sra        $a0, $a0, 12
    /* DD18 8001F508 21104400 */  addu       $v0, $v0, $a0
    /* DD1C 8001F50C 580022A6 */  sh         $v0, 0x58($s1)
    /* DD20 8001F510 3400458E */  lw         $a1, 0x34($s2)
    /* DD24 8001F514 0100C624 */  addiu      $a2, $a2, 0x1
    /* DD28 8001F518 240686A7 */  sh         $a2, %gp_rel(D_800C4D14)($gp)
    /* DD2C 8001F51C 5C0025AE */  sw         $a1, 0x5C($s1)
    /* DD30 8001F520 2A002286 */  lh         $v0, 0x2A($s1)
    /* DD34 8001F524 04000D3C */  lui        $t5, (0x40000 >> 16)
    /* DD38 8001F528 1A00A201 */  div        $zero, $t5, $v0
    /* DD3C 8001F52C 12100000 */  mflo       $v0
    /* DD40 8001F530 00000000 */  nop
    /* DD44 8001F534 500022AE */  sw         $v0, 0x50($s1)
    /* DD48 8001F538 28004286 */  lh         $v0, 0x28($s2)
    /* DD4C 8001F53C 00000000 */  nop
    /* DD50 8001F540 02004010 */  beqz       $v0, .L8001F54C
    /* DD54 8001F544 01000624 */   addiu     $a2, $zero, 0x1
    /* DD58 8001F548 21304000 */  addu       $a2, $v0, $zero
  .L8001F54C:
    /* DD5C 8001F54C 1E004486 */  lh         $a0, 0x1E($s2)
    /* DD60 8001F550 1C004286 */  lh         $v0, 0x1C($s2)
    /* DD64 8001F554 00000000 */  nop
    /* DD68 8001F558 23208200 */  subu       $a0, $a0, $v0
    /* DD6C 8001F55C 001C0400 */  sll        $v1, $a0, 16
    /* DD70 8001F560 1A006600 */  div        $zero, $v1, $a2
    /* DD74 8001F564 12180000 */  mflo       $v1
    /* DD78 8001F568 340037AE */  sw         $s7, 0x34($s1)
    /* DD7C 8001F56C 2C0024AE */  sw         $a0, 0x2C($s1)
    /* DD80 8001F570 2C0023AE */  sw         $v1, 0x2C($s1)
    /* DD84 8001F574 24004586 */  lh         $a1, 0x24($s2)
    /* DD88 8001F578 22004286 */  lh         $v0, 0x22($s2)
    /* DD8C 8001F57C 00000000 */  nop
    /* DD90 8001F580 2328A200 */  subu       $a1, $a1, $v0
    /* DD94 8001F584 001C0500 */  sll        $v1, $a1, 16
    /* DD98 8001F588 1A006600 */  div        $zero, $v1, $a2
    /* DD9C 8001F58C 12180000 */  mflo       $v1
    /* DDA0 8001F590 00100D24 */  addiu      $t5, $zero, 0x1000
    /* DDA4 8001F594 440037AE */  sw         $s7, 0x44($s1)
    /* DDA8 8001F598 3C0025AE */  sw         $a1, 0x3C($s1)
    /* DDAC 8001F59C 3C0023AE */  sw         $v1, 0x3C($s1)
    /* DDB0 8001F5A0 28004286 */  lh         $v0, 0x28($s2)
    /* DDB4 8001F5A4 00000000 */  nop
    /* DDB8 8001F5A8 02004D10 */  beq        $v0, $t5, .L8001F5B4
    /* DDBC 8001F5AC 01000624 */   addiu     $a2, $zero, 0x1
    /* DDC0 8001F5B0 21304000 */  addu       $a2, $v0, $zero
  .L8001F5B4:
    /* DDC4 8001F5B4 00100E24 */  addiu      $t6, $zero, 0x1000
    /* DDC8 8001F5B8 20004486 */  lh         $a0, 0x20($s2)
    /* DDCC 8001F5BC 1E004286 */  lh         $v0, 0x1E($s2)
    /* DDD0 8001F5C0 2330C601 */  subu       $a2, $t6, $a2
    /* DDD4 8001F5C4 23208200 */  subu       $a0, $a0, $v0
    /* DDD8 8001F5C8 001C0400 */  sll        $v1, $a0, 16
    /* DDDC 8001F5CC 1A006600 */  div        $zero, $v1, $a2
    /* DDE0 8001F5D0 12180000 */  mflo       $v1
    /* DDE4 8001F5D4 380037AE */  sw         $s7, 0x38($s1)
    /* DDE8 8001F5D8 300024AE */  sw         $a0, 0x30($s1)
    /* DDEC 8001F5DC 300023AE */  sw         $v1, 0x30($s1)
    /* DDF0 8001F5E0 26004586 */  lh         $a1, 0x26($s2)
    /* DDF4 8001F5E4 24004286 */  lh         $v0, 0x24($s2)
    /* DDF8 8001F5E8 00000000 */  nop
    /* DDFC 8001F5EC 2328A200 */  subu       $a1, $a1, $v0
    /* DE00 8001F5F0 001C0500 */  sll        $v1, $a1, 16
    /* DE04 8001F5F4 1A006600 */  div        $zero, $v1, $a2
    /* DE08 8001F5F8 12180000 */  mflo       $v1
    /* DE0C 8001F5FC 01007326 */  addiu      $s3, $s3, 0x1
    /* DE10 8001F600 64000D24 */  addiu      $t5, $zero, 0x64
    /* DE14 8001F604 480037AE */  sw         $s7, 0x48($s1)
    /* DE18 8001F608 400025AE */  sw         $a1, 0x40($s1)
    /* DE1C 8001F60C 02006D16 */  bne        $s3, $t5, .L8001F618
    /* DE20 8001F610 400023AE */   sw        $v1, 0x40($s1)
    /* DE24 8001F614 21980000 */  addu       $s3, $zero, $zero
  .L8001F618:
    /* DE28 8001F618 C000AE8F */  lw         $t6, 0xC0($sp)
    /* DE2C 8001F61C FFFFB526 */  addiu      $s5, $s5, -0x1
    /* DE30 8001F620 14FFA016 */  bnez       $s5, .L8001F274
    /* DE34 8001F624 044BD3A5 */   sh        $s3, 0x4B04($t6)
  .L8001F628:
    /* DE38 8001F628 1000A427 */  addiu      $a0, $sp, 0x10
    /* DE3C 8001F62C F465020C */  jal        func_800997D0
    /* DE40 8001F630 2000A527 */   addiu     $a1, $sp, 0x20
    /* DE44 8001F634 8400AD8F */  lw         $t5, 0x84($sp)
    /* DE48 8001F638 8800AE8F */  lw         $t6, 0x88($sp)
    /* DE4C 8001F63C 21F0CD03 */  addu       $fp, $fp, $t5
    /* DE50 8001F640 2B10CE03 */  sltu       $v0, $fp, $t6
    /* DE54 8001F644 FDFE4014 */  bnez       $v0, .L8001F23C
    /* DE58 8001F648 00000000 */   nop
    /* DE5C 8001F64C BC00BF8F */  lw         $ra, 0xBC($sp)
    /* DE60 8001F650 B800BE8F */  lw         $fp, 0xB8($sp)
    /* DE64 8001F654 B400B78F */  lw         $s7, 0xB4($sp)
    /* DE68 8001F658 B000B68F */  lw         $s6, 0xB0($sp)
    /* DE6C 8001F65C AC00B58F */  lw         $s5, 0xAC($sp)
    /* DE70 8001F660 A800B48F */  lw         $s4, 0xA8($sp)
    /* DE74 8001F664 A400B38F */  lw         $s3, 0xA4($sp)
    /* DE78 8001F668 A000B28F */  lw         $s2, 0xA0($sp)
    /* DE7C 8001F66C 9C00B18F */  lw         $s1, 0x9C($sp)
    /* DE80 8001F670 9800B08F */  lw         $s0, 0x98($sp)
    /* DE84 8001F674 0800E003 */  jr         $ra
    /* DE88 8001F678 C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_8001F13C
