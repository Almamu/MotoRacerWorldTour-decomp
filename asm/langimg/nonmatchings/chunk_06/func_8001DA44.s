/* Handwritten function */
nonmatching func_8001DA44, 0x4CC

glabel func_8001DA44
    /* C254 8001DA44 10FFBD27 */  addiu      $sp, $sp, -0xF0
    /* C258 8001DA48 E400B7AF */  sw         $s7, 0xE4($sp)
    /* C25C 8001DA4C 21B88000 */  addu       $s7, $a0, $zero
    /* C260 8001DA50 EC00BFAF */  sw         $ra, 0xEC($sp)
    /* C264 8001DA54 E800BEAF */  sw         $fp, 0xE8($sp)
    /* C268 8001DA58 E000B6AF */  sw         $s6, 0xE0($sp)
    /* C26C 8001DA5C DC00B5AF */  sw         $s5, 0xDC($sp)
    /* C270 8001DA60 D800B4AF */  sw         $s4, 0xD8($sp)
    /* C274 8001DA64 D400B3AF */  sw         $s3, 0xD4($sp)
    /* C278 8001DA68 D000B2AF */  sw         $s2, 0xD0($sp)
    /* C27C 8001DA6C CC00B1AF */  sw         $s1, 0xCC($sp)
    /* C280 8001DA70 C800B0AF */  sw         $s0, 0xC8($sp)
    /* C284 8001DA74 8001E28E */  lw         $v0, 0x180($s7)
    /* C288 8001DA78 00000000 */  nop
    /* C28C 8001DA7C 1E004010 */  beqz       $v0, .L8001DAF8
    /* C290 8001DA80 2140A000 */   addu      $t0, $a1, $zero
    /* C294 8001DA84 0C80093C */  lui        $t1, %hi(D_800BF3A0)
    /* C298 8001DA88 A0F32425 */  addiu      $a0, $t1, %lo(D_800BF3A0)
    /* C29C 8001DA8C 3800438C */  lw         $v1, 0x38($v0)
    /* C2A0 8001DA90 02008624 */  addiu      $a2, $a0, 0x2
    /* C2A4 8001DA94 C2170300 */  srl        $v0, $v1, 31
    /* C2A8 8001DA98 21186200 */  addu       $v1, $v1, $v0
    /* C2AC 8001DA9C 40180300 */  sll        $v1, $v1, 1
    /* C2B0 8001DAA0 FC3F6330 */  andi       $v1, $v1, 0x3FFC
    /* C2B4 8001DAA4 21306600 */  addu       $a2, $v1, $a2
    /* C2B8 8001DAA8 21186400 */  addu       $v1, $v1, $a0
    /* C2BC 8001DAAC 0000C284 */  lh         $v0, 0x0($a2)
    /* C2C0 8001DAB0 00006584 */  lh         $a1, 0x0($v1)
    /* C2C4 8001DAB4 5800E726 */  addiu      $a3, $s7, 0x58
    /* C2C8 8001DAB8 5800E0AE */  sw         $zero, 0x58($s7)
    /* C2CC 8001DABC 23100200 */  negu       $v0, $v0
    /* C2D0 8001DAC0 80130200 */  sll        $v0, $v0, 14
    /* C2D4 8001DAC4 23280500 */  negu       $a1, $a1
    /* C2D8 8001DAC8 802B0500 */  sll        $a1, $a1, 14
    /* C2DC 8001DACC 0400E2AC */  sw         $v0, 0x4($a3)
    /* C2E0 8001DAD0 0800E5AC */  sw         $a1, 0x8($a3)
    /* C2E4 8001DAD4 0000C484 */  lh         $a0, 0x0($a2)
    /* C2E8 8001DAD8 00006284 */  lh         $v0, 0x0($v1)
    /* C2EC 8001DADC 6400E326 */  addiu      $v1, $s7, 0x64
    /* C2F0 8001DAE0 6400E0AE */  sw         $zero, 0x64($s7)
    /* C2F4 8001DAE4 80230400 */  sll        $a0, $a0, 14
    /* C2F8 8001DAE8 23100200 */  negu       $v0, $v0
    /* C2FC 8001DAEC 80130200 */  sll        $v0, $v0, 14
    /* C300 8001DAF0 040064AC */  sw         $a0, 0x4($v1)
    /* C304 8001DAF4 080062AC */  sw         $v0, 0x8($v1)
  .L8001DAF8:
    /* C308 8001DAF8 0000028D */  lw         $v0, 0x0($t0)
    /* C30C 8001DAFC 0400038D */  lw         $v1, 0x4($t0)
    /* C310 8001DB00 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* C314 8001DB04 0008C348 */  ctc2       $v1, $1 /* handwritten instruction */
    /* C318 8001DB08 0800028D */  lw         $v0, 0x8($t0)
    /* C31C 8001DB0C 0C00038D */  lw         $v1, 0xC($t0)
    /* C320 8001DB10 0010C248 */  ctc2       $v0, $2 /* handwritten instruction */
    /* C324 8001DB14 1000028D */  lw         $v0, 0x10($t0)
    /* C328 8001DB18 0018C348 */  ctc2       $v1, $3 /* handwritten instruction */
    /* C32C 8001DB1C 0020C248 */  ctc2       $v0, $4 /* handwritten instruction */
    /* C330 8001DB20 1400038D */  lw         $v1, 0x14($t0)
    /* C334 8001DB24 1800028D */  lw         $v0, 0x18($t0)
    /* C338 8001DB28 0028C348 */  ctc2       $v1, $5 /* handwritten instruction */
    /* C33C 8001DB2C 1C00038D */  lw         $v1, 0x1C($t0)
    /* C340 8001DB30 0030C248 */  ctc2       $v0, $6 /* handwritten instruction */
    /* C344 8001DB34 0038C348 */  ctc2       $v1, $7 /* handwritten instruction */
    /* C348 8001DB38 21A00000 */  addu       $s4, $zero, $zero
    /* C34C 8001DB3C 0C800A3C */  lui        $t2, (0x800C0000 >> 16)
    /* C350 8001DB40 14001E25 */  addiu      $fp, $t0, 0x14
    /* C354 8001DB44 1000B627 */  addiu      $s6, $sp, 0x10
    /* C358 8001DB48 FF7F153C */  lui        $s5, (0x7FFFFFFF >> 16)
    /* C35C 8001DB4C FFFFB536 */  ori        $s5, $s5, (0x7FFFFFFF & 0xFFFF)
    /* C360 8001DB50 7000F326 */  addiu      $s3, $s7, 0x70
    /* C364 8001DB54 B800F18E */  lw         $s1, 0xB8($s7)
    /* C368 8001DB58 3400F226 */  addiu      $s2, $s7, 0x34
    /* C36C 8001DB5C C400AAAF */  sw         $t2, 0xC4($sp)
    /* C370 8001DB60 04003026 */  addiu      $s0, $s1, 0x4
  .L8001DB64:
    /* C374 8001DB64 0000258E */  lw         $a1, 0x0($s1)
    /* C378 8001DB68 1F62020C */  jal        func_8009887C
    /* C37C 8001DB6C 21204002 */   addu      $a0, $s2, $zero
    /* C380 8001DB70 21206002 */  addu       $a0, $s3, $zero
    /* C384 8001DB74 1F62020C */  jal        func_8009887C
    /* C388 8001DB78 2128C002 */   addu      $a1, $s6, $zero
    /* C38C 8001DB7C 2120C002 */  addu       $a0, $s6, $zero
    /* C390 8001DB80 F465020C */  jal        func_800997D0
    /* C394 8001DB84 2128C003 */   addu      $a1, $fp, $zero
    /* C398 8001DB88 1A000A24 */  addiu      $t2, $zero, 0x1A
    /* C39C 8001DB8C 0000238E */  lw         $v1, 0x0($s1)
    /* C3A0 8001DB90 1000A98F */  lw         $t1, 0x10($sp)
    /* C3A4 8001DB94 00006B8C */  lw         $t3, 0x0($v1)
    /* C3A8 8001DB98 00000000 */  nop
    /* C3AC 8001DB9C 18006901 */  mult       $t3, $t1
    /* C3B0 8001DBA0 20000534 */  ori        $a1, $zero, 0x20
    /* C3B4 8001DBA4 2228AA00 */  sub        $a1, $a1, $t2 /* handwritten instruction */
    /* C3B8 8001DBA8 10200000 */  mfhi       $a0
    /* C3BC 8001DBAC 0420A400 */  sllv       $a0, $a0, $a1
    /* C3C0 8001DBB0 12280000 */  mflo       $a1
    /* C3C4 8001DBB4 06284501 */  srlv       $a1, $a1, $t2
    /* C3C8 8001DBB8 25208500 */  or         $a0, $a0, $a1
    /* C3CC 8001DBBC 04006B8C */  lw         $t3, 0x4($v1)
    /* C3D0 8001DBC0 1400A98F */  lw         $t1, 0x14($sp)
    /* C3D4 8001DBC4 00000000 */  nop
    /* C3D8 8001DBC8 18006901 */  mult       $t3, $t1
    /* C3DC 8001DBCC 20000634 */  ori        $a2, $zero, 0x20
    /* C3E0 8001DBD0 2230CA00 */  sub        $a2, $a2, $t2 /* handwritten instruction */
    /* C3E4 8001DBD4 10100000 */  mfhi       $v0
    /* C3E8 8001DBD8 0410C200 */  sllv       $v0, $v0, $a2
    /* C3EC 8001DBDC 12300000 */  mflo       $a2
    /* C3F0 8001DBE0 06304601 */  srlv       $a2, $a2, $t2
    /* C3F4 8001DBE4 25104600 */  or         $v0, $v0, $a2
    /* C3F8 8001DBE8 21208200 */  addu       $a0, $a0, $v0
    /* C3FC 8001DBEC 1A000924 */  addiu      $t1, $zero, 0x1A
    /* C400 8001DBF0 0800638C */  lw         $v1, 0x8($v1)
    /* C404 8001DBF4 1800AB8F */  lw         $t3, 0x18($sp)
    /* C408 8001DBF8 00000000 */  nop
    /* C40C 8001DBFC 18006B00 */  mult       $v1, $t3
    /* C410 8001DC00 20000734 */  ori        $a3, $zero, 0x20
    /* C414 8001DC04 2238E900 */  sub        $a3, $a3, $t1 /* handwritten instruction */
    /* C418 8001DC08 10400000 */  mfhi       $t0
    /* C41C 8001DC0C 0440E800 */  sllv       $t0, $t0, $a3
    /* C420 8001DC10 12380000 */  mflo       $a3
    /* C424 8001DC14 06382701 */  srlv       $a3, $a3, $t1
    /* C428 8001DC18 25400701 */  or         $t0, $t0, $a3
    /* C42C 8001DC1C 0C007326 */  addiu      $s3, $s3, 0xC
    /* C430 8001DC20 0C005226 */  addiu      $s2, $s2, 0xC
    /* C434 8001DC24 01009426 */  addiu      $s4, $s4, 0x1
    /* C438 8001DC28 08003126 */  addiu      $s1, $s1, 0x8
    /* C43C 8001DC2C 00800A3C */  lui        $t2, (0x80000000 >> 16)
    /* C440 8001DC30 21208800 */  addu       $a0, $a0, $t0
    /* C444 8001DC34 23200400 */  negu       $a0, $a0
    /* C448 8001DC38 24209500 */  and        $a0, $a0, $s5
    /* C44C 8001DC3C 0000038E */  lw         $v1, 0x0($s0)
    /* C450 8001DC40 0300822A */  slti       $v0, $s4, 0x3
    /* C454 8001DC44 24186A00 */  and        $v1, $v1, $t2
    /* C458 8001DC48 25186400 */  or         $v1, $v1, $a0
    /* C45C 8001DC4C 000003AE */  sw         $v1, 0x0($s0)
    /* C460 8001DC50 C4FF4014 */  bnez       $v0, .L8001DB64
    /* C464 8001DC54 08001026 */   addiu     $s0, $s0, 0x8
    /* C468 8001DC58 5001E28E */  lw         $v0, 0x150($s7)
    /* C46C 8001DC5C C400AB8F */  lw         $t3, 0xC4($sp)
    /* C470 8001DC60 6401E58E */  lw         $a1, 0x164($s7)
    /* C474 8001DC64 A0F36325 */  addiu      $v1, $t3, -0xC60
    /* C478 8001DC68 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* C47C 8001DC6C 80100200 */  sll        $v0, $v0, 2
    /* C480 8001DC70 21104300 */  addu       $v0, $v0, $v1
    /* C484 8001DC74 00004484 */  lh         $a0, 0x0($v0)
    /* C488 8001DC78 401B0500 */  sll        $v1, $a1, 13
    /* C48C 8001DC7C 1A006400 */  div        $zero, $v1, $a0
    /* C490 8001DC80 12180000 */  mflo       $v1
    /* C494 8001DC84 A000A0AF */  sw         $zero, 0xA0($sp)
    /* C498 8001DC88 A400A0AF */  sw         $zero, 0xA4($sp)
    /* C49C 8001DC8C 00330500 */  sll        $a2, $a1, 12
    /* C4A0 8001DC90 2128C000 */  addu       $a1, $a2, $zero
    /* C4A4 8001DC94 3801E3AE */  sw         $v1, 0x138($s7)
    /* C4A8 8001DC98 23180300 */  negu       $v1, $v1
    /* C4AC 8001DC9C 0C80023C */  lui        $v0, %hi(D_800C5E14)
    /* C4B0 8001DCA0 145E428C */  lw         $v0, %lo(D_800C5E14)($v0)
    /* C4B4 8001DCA4 001B0300 */  sll        $v1, $v1, 12
    /* C4B8 8001DCA8 10004010 */  beqz       $v0, .L8001DCEC
    /* C4BC 8001DCAC A800A3AF */   sw        $v1, 0xA8($sp)
    /* C4C0 8001DCB0 7803438C */  lw         $v1, 0x378($v0)
    /* C4C4 8001DCB4 00000000 */  nop
    /* C4C8 8001DCB8 0000628C */  lw         $v0, 0x0($v1)
    /* C4CC 8001DCBC 00000000 */  nop
    /* C4D0 8001DCC0 A8004230 */  andi       $v0, $v0, 0xA8
    /* C4D4 8001DCC4 0A004014 */  bnez       $v0, .L8001DCF0
    /* C4D8 8001DCC8 2138C000 */   addu      $a3, $a2, $zero
    /* C4DC 8001DCCC 0D80033C */  lui        $v1, %hi(D_800D5F38)
    /* C4E0 8001DCD0 385F638C */  lw         $v1, %lo(D_800D5F38)($v1)
    /* C4E4 8001DCD4 10000224 */  addiu      $v0, $zero, 0x10
    /* C4E8 8001DCD8 05006210 */  beq        $v1, $v0, .L8001DCF0
    /* C4EC 8001DCDC 08000224 */   addiu     $v0, $zero, 0x8
    /* C4F0 8001DCE0 03006210 */  beq        $v1, $v0, .L8001DCF0
    /* C4F4 8001DCE4 43100600 */   sra       $v0, $a2, 1
    /* C4F8 8001DCE8 2128C200 */  addu       $a1, $a2, $v0
  .L8001DCEC:
    /* C4FC 8001DCEC 2138C000 */  addu       $a3, $a2, $zero
  .L8001DCF0:
    /* C500 8001DCF0 23100600 */  negu       $v0, $a2
    /* C504 8001DCF4 2400A0AF */  sw         $zero, 0x24($sp)
    /* C508 8001DCF8 3400A0AF */  sw         $zero, 0x34($sp)
    /* C50C 8001DCFC 5400A0AF */  sw         $zero, 0x54($sp)
    /* C510 8001DD00 4400A0AF */  sw         $zero, 0x44($sp)
    /* C514 8001DD04 6000A2AF */  sw         $v0, 0x60($sp)
    /* C518 8001DD08 7000A6AF */  sw         $a2, 0x70($sp)
    /* C51C 8001DD0C 7400A0AF */  sw         $zero, 0x74($sp)
    /* C520 8001DD10 6400A0AF */  sw         $zero, 0x64($sp)
    /* C524 8001DD14 4801E48E */  lw         $a0, 0x148($s7)
    /* C528 8001DD18 23100500 */  negu       $v0, $a1
    /* C52C 8001DD1C 7800A2AF */  sw         $v0, 0x78($sp)
    /* C530 8001DD20 6800A2AF */  sw         $v0, 0x68($sp)
    /* C534 8001DD24 B400A0AF */  sw         $zero, 0xB4($sp)
    /* C538 8001DD28 B000A0AF */  sw         $zero, 0xB0($sp)
    /* C53C 8001DD2C B800A6AF */  sw         $a2, 0xB8($sp)
    /* C540 8001DD30 21188600 */  addu       $v1, $a0, $a2
    /* C544 8001DD34 3000A3AF */  sw         $v1, 0x30($sp)
    /* C548 8001DD38 23180300 */  negu       $v1, $v1
    /* C54C 8001DD3C 5C01E58E */  lw         $a1, 0x15C($s7)
    /* C550 8001DD40 23200400 */  negu       $a0, $a0
    /* C554 8001DD44 2000A3AF */  sw         $v1, 0x20($sp)
    /* C558 8001DD48 C21F0400 */  srl        $v1, $a0, 31
    /* C55C 8001DD4C 21208300 */  addu       $a0, $a0, $v1
    /* C560 8001DD50 43200400 */  sra        $a0, $a0, 1
    /* C564 8001DD54 23208600 */  subu       $a0, $a0, $a2
    /* C568 8001DD58 4000A4AF */  sw         $a0, 0x40($sp)
    /* C56C 8001DD5C 23200400 */  negu       $a0, $a0
    /* C570 8001DD60 5000A4AF */  sw         $a0, 0x50($sp)
    /* C574 8001DD64 C2170500 */  srl        $v0, $a1, 31
    /* C578 8001DD68 2110A200 */  addu       $v0, $a1, $v0
    /* C57C 8001DD6C 43100200 */  sra        $v0, $v0, 1
    /* C580 8001DD70 2800A2AF */  sw         $v0, 0x28($sp)
    /* C584 8001DD74 3800A2AF */  sw         $v0, 0x38($sp)
    /* C588 8001DD78 5800A5AF */  sw         $a1, 0x58($sp)
    /* C58C 8001DD7C 0200E104 */  bgez       $a3, .L8001DD88
    /* C590 8001DD80 4800A5AF */   sw        $a1, 0x48($sp)
    /* C594 8001DD84 0300E724 */  addiu      $a3, $a3, 0x3
  .L8001DD88:
    /* C598 8001DD88 A000A427 */  addiu      $a0, $sp, 0xA0
    /* C59C 8001DD8C C000F026 */  addiu      $s0, $s7, 0xC0
    /* C5A0 8001DD90 21280002 */  addu       $a1, $s0, $zero
    /* C5A4 8001DD94 83180700 */  sra        $v1, $a3, 2
    /* C5A8 8001DD98 80100300 */  sll        $v0, $v1, 2
    /* C5AC 8001DD9C 8400A0AF */  sw         $zero, 0x84($sp)
    /* C5B0 8001DDA0 9400A0AF */  sw         $zero, 0x94($sp)
    /* C5B4 8001DDA4 4C01E68E */  lw         $a2, 0x14C($s7)
    /* C5B8 8001DDA8 21104300 */  addu       $v0, $v0, $v1
    /* C5BC 8001DDAC 2130C200 */  addu       $a2, $a2, $v0
    /* C5C0 8001DDB0 9000A6AF */  sw         $a2, 0x90($sp)
    /* C5C4 8001DDB4 5801E78E */  lw         $a3, 0x158($s7)
    /* C5C8 8001DDB8 23300600 */  negu       $a2, $a2
    /* C5CC 8001DDBC 8000A6AF */  sw         $a2, 0x80($sp)
    /* C5D0 8001DDC0 40180700 */  sll        $v1, $a3, 1
    /* C5D4 8001DDC4 21186700 */  addu       $v1, $v1, $a3
    /* C5D8 8001DDC8 801A0300 */  sll        $v1, $v1, 10
    /* C5DC 8001DDCC 8800A3AF */  sw         $v1, 0x88($sp)
    /* C5E0 8001DDD0 1F62020C */  jal        func_8009887C
    /* C5E4 8001DDD4 9800A3AF */   sw        $v1, 0x98($sp)
    /* C5E8 8001DDD8 21200002 */  addu       $a0, $s0, $zero
    /* C5EC 8001DDDC F465020C */  jal        func_800997D0
    /* C5F0 8001DDE0 2128C003 */   addu      $a1, $fp, $zero
    /* C5F4 8001DDE4 2000A427 */  addiu      $a0, $sp, 0x20
    /* C5F8 8001DDE8 CC00F026 */  addiu      $s0, $s7, 0xCC
    /* C5FC 8001DDEC 1F62020C */  jal        func_8009887C
    /* C600 8001DDF0 21280002 */   addu      $a1, $s0, $zero
    /* C604 8001DDF4 21200002 */  addu       $a0, $s0, $zero
    /* C608 8001DDF8 F465020C */  jal        func_800997D0
    /* C60C 8001DDFC 2128C003 */   addu      $a1, $fp, $zero
    /* C610 8001DE00 3000A427 */  addiu      $a0, $sp, 0x30
    /* C614 8001DE04 D800F026 */  addiu      $s0, $s7, 0xD8
    /* C618 8001DE08 1F62020C */  jal        func_8009887C
    /* C61C 8001DE0C 21280002 */   addu      $a1, $s0, $zero
    /* C620 8001DE10 21200002 */  addu       $a0, $s0, $zero
    /* C624 8001DE14 F465020C */  jal        func_800997D0
    /* C628 8001DE18 2128C003 */   addu      $a1, $fp, $zero
    /* C62C 8001DE1C 4000A427 */  addiu      $a0, $sp, 0x40
    /* C630 8001DE20 E400F026 */  addiu      $s0, $s7, 0xE4
    /* C634 8001DE24 1F62020C */  jal        func_8009887C
    /* C638 8001DE28 21280002 */   addu      $a1, $s0, $zero
    /* C63C 8001DE2C 21200002 */  addu       $a0, $s0, $zero
    /* C640 8001DE30 F465020C */  jal        func_800997D0
    /* C644 8001DE34 2128C003 */   addu      $a1, $fp, $zero
    /* C648 8001DE38 5000A427 */  addiu      $a0, $sp, 0x50
    /* C64C 8001DE3C F000F026 */  addiu      $s0, $s7, 0xF0
    /* C650 8001DE40 1F62020C */  jal        func_8009887C
    /* C654 8001DE44 21280002 */   addu      $a1, $s0, $zero
    /* C658 8001DE48 21200002 */  addu       $a0, $s0, $zero
    /* C65C 8001DE4C F465020C */  jal        func_800997D0
    /* C660 8001DE50 2128C003 */   addu      $a1, $fp, $zero
    /* C664 8001DE54 6000A427 */  addiu      $a0, $sp, 0x60
    /* C668 8001DE58 FC00F026 */  addiu      $s0, $s7, 0xFC
    /* C66C 8001DE5C 1F62020C */  jal        func_8009887C
    /* C670 8001DE60 21280002 */   addu      $a1, $s0, $zero
    /* C674 8001DE64 21200002 */  addu       $a0, $s0, $zero
    /* C678 8001DE68 F465020C */  jal        func_800997D0
    /* C67C 8001DE6C 2128C003 */   addu      $a1, $fp, $zero
    /* C680 8001DE70 7000A427 */  addiu      $a0, $sp, 0x70
    /* C684 8001DE74 0801F026 */  addiu      $s0, $s7, 0x108
    /* C688 8001DE78 1F62020C */  jal        func_8009887C
    /* C68C 8001DE7C 21280002 */   addu      $a1, $s0, $zero
    /* C690 8001DE80 21200002 */  addu       $a0, $s0, $zero
    /* C694 8001DE84 F465020C */  jal        func_800997D0
    /* C698 8001DE88 2128C003 */   addu      $a1, $fp, $zero
    /* C69C 8001DE8C B000A427 */  addiu      $a0, $sp, 0xB0
    /* C6A0 8001DE90 1401F026 */  addiu      $s0, $s7, 0x114
    /* C6A4 8001DE94 1F62020C */  jal        func_8009887C
    /* C6A8 8001DE98 21280002 */   addu      $a1, $s0, $zero
    /* C6AC 8001DE9C 21200002 */  addu       $a0, $s0, $zero
    /* C6B0 8001DEA0 F465020C */  jal        func_800997D0
    /* C6B4 8001DEA4 2128C003 */   addu      $a1, $fp, $zero
    /* C6B8 8001DEA8 8000A427 */  addiu      $a0, $sp, 0x80
    /* C6BC 8001DEAC 2001F026 */  addiu      $s0, $s7, 0x120
    /* C6C0 8001DEB0 1F62020C */  jal        func_8009887C
    /* C6C4 8001DEB4 21280002 */   addu      $a1, $s0, $zero
    /* C6C8 8001DEB8 21200002 */  addu       $a0, $s0, $zero
    /* C6CC 8001DEBC F465020C */  jal        func_800997D0
    /* C6D0 8001DEC0 2128C003 */   addu      $a1, $fp, $zero
    /* C6D4 8001DEC4 9000A427 */  addiu      $a0, $sp, 0x90
    /* C6D8 8001DEC8 2C01F026 */  addiu      $s0, $s7, 0x12C
    /* C6DC 8001DECC 1F62020C */  jal        func_8009887C
    /* C6E0 8001DED0 21280002 */   addu      $a1, $s0, $zero
    /* C6E4 8001DED4 21200002 */  addu       $a0, $s0, $zero
    /* C6E8 8001DED8 F465020C */  jal        func_800997D0
    /* C6EC 8001DEDC 2128C003 */   addu      $a1, $fp, $zero
    /* C6F0 8001DEE0 EC00BF8F */  lw         $ra, 0xEC($sp)
    /* C6F4 8001DEE4 E800BE8F */  lw         $fp, 0xE8($sp)
    /* C6F8 8001DEE8 E400B78F */  lw         $s7, 0xE4($sp)
    /* C6FC 8001DEEC E000B68F */  lw         $s6, 0xE0($sp)
    /* C700 8001DEF0 DC00B58F */  lw         $s5, 0xDC($sp)
    /* C704 8001DEF4 D800B48F */  lw         $s4, 0xD8($sp)
    /* C708 8001DEF8 D400B38F */  lw         $s3, 0xD4($sp)
    /* C70C 8001DEFC D000B28F */  lw         $s2, 0xD0($sp)
    /* C710 8001DF00 CC00B18F */  lw         $s1, 0xCC($sp)
    /* C714 8001DF04 C800B08F */  lw         $s0, 0xC8($sp)
    /* C718 8001DF08 0800E003 */  jr         $ra
    /* C71C 8001DF0C F000BD27 */   addiu     $sp, $sp, 0xF0
endlabel func_8001DA44
