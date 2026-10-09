nonmatching func_80071BCC, 0x250

glabel func_80071BCC
    /* 603DC 80071BCC 10FFBD27 */  addiu      $sp, $sp, -0xF0
    /* 603E0 80071BD0 D400B1AF */  sw         $s1, 0xD4($sp)
    /* 603E4 80071BD4 0001B18F */  lw         $s1, 0x100($sp)
    /* 603E8 80071BD8 E400B5AF */  sw         $s5, 0xE4($sp)
    /* 603EC 80071BDC 21A80000 */  addu       $s5, $zero, $zero
    /* 603F0 80071BE0 D000B0AF */  sw         $s0, 0xD0($sp)
    /* 603F4 80071BE4 2180E000 */  addu       $s0, $a3, $zero
    /* 603F8 80071BE8 F000A4AF */  sw         $a0, 0xF0($sp)
    /* 603FC 80071BEC 21200002 */  addu       $a0, $s0, $zero
    /* 60400 80071BF0 F400A5AF */  sw         $a1, 0xF4($sp)
    /* 60404 80071BF4 F000A527 */  addiu      $a1, $sp, 0xF0
    /* 60408 80071BF8 E800BFAF */  sw         $ra, 0xE8($sp)
    /* 6040C 80071BFC E000B4AF */  sw         $s4, 0xE0($sp)
    /* 60410 80071C00 DC00B3AF */  sw         $s3, 0xDC($sp)
    /* 60414 80071C04 D800B2AF */  sw         $s2, 0xD8($sp)
    /* 60418 80071C08 33C3010C */  jal        func_80070CCC
    /* 6041C 80071C0C F800A6AF */   sw        $a2, 0xF8($sp)
    /* 60420 80071C10 78004004 */  bltz       $v0, .L80071DF4
    /* 60424 80071C14 21202002 */   addu      $a0, $s1, $zero
    /* 60428 80071C18 33C3010C */  jal        func_80070CCC
    /* 6042C 80071C1C F000A527 */   addiu     $a1, $sp, 0xF0
    /* 60430 80071C20 75004104 */  bgez       $v0, .L80071DF8
    /* 60434 80071C24 2110A002 */   addu      $v0, $s5, $zero
    /* 60438 80071C28 21200002 */  addu       $a0, $s0, $zero
    /* 6043C 80071C2C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 60440 80071C30 2000B427 */  addiu      $s4, $sp, 0x20
    /* 60444 80071C34 04C3010C */  jal        func_80070C10
    /* 60448 80071C38 21308002 */   addu      $a2, $s4, $zero
    /* 6044C 80071C3C 21202002 */  addu       $a0, $s1, $zero
    /* 60450 80071C40 3000B027 */  addiu      $s0, $sp, 0x30
    /* 60454 80071C44 21280002 */  addu       $a1, $s0, $zero
    /* 60458 80071C48 4000B127 */  addiu      $s1, $sp, 0x40
    /* 6045C 80071C4C 04C3010C */  jal        func_80070C10
    /* 60460 80071C50 21302002 */   addu      $a2, $s1, $zero
    /* 60464 80071C54 9000B327 */  addiu      $s3, $sp, 0x90
    /* 60468 80071C58 21206002 */  addu       $a0, $s3, $zero
    /* 6046C 80071C5C 21280002 */  addu       $a1, $s0, $zero
    /* 60470 80071C60 3466020C */  jal        func_800998D0
    /* 60474 80071C64 1000A627 */   addiu     $a2, $sp, 0x10
    /* 60478 80071C68 21206002 */  addu       $a0, $s3, $zero
    /* 6047C 80071C6C 21282002 */  addu       $a1, $s1, $zero
    /* 60480 80071C70 9000A28F */  lw         $v0, 0x90($sp)
    /* 60484 80071C74 9400A38F */  lw         $v1, 0x94($sp)
    /* 60488 80071C78 9800A78F */  lw         $a3, 0x98($sp)
    /* 6048C 80071C7C 21308002 */  addu       $a2, $s4, $zero
    /* 60490 80071C80 5000A2AF */  sw         $v0, 0x50($sp)
    /* 60494 80071C84 5400A3AF */  sw         $v1, 0x54($sp)
    /* 60498 80071C88 3466020C */  jal        func_800998D0
    /* 6049C 80071C8C 5800A7AF */   sw        $a3, 0x58($sp)
    /* 604A0 80071C90 5000B127 */  addiu      $s1, $sp, 0x50
    /* 604A4 80071C94 9000A28F */  lw         $v0, 0x90($sp)
    /* 604A8 80071C98 9400A38F */  lw         $v1, 0x94($sp)
    /* 604AC 80071C9C 9800A58F */  lw         $a1, 0x98($sp)
    /* 604B0 80071CA0 21202002 */  addu       $a0, $s1, $zero
    /* 604B4 80071CA4 6000A2AF */  sw         $v0, 0x60($sp)
    /* 604B8 80071CA8 6400A3AF */  sw         $v1, 0x64($sp)
    /* 604BC 80071CAC A763020C */  jal        func_80098E9C
    /* 604C0 80071CB0 6800A5AF */   sw        $a1, 0x68($sp)
    /* 604C4 80071CB4 6000B227 */  addiu      $s2, $sp, 0x60
    /* 604C8 80071CB8 A763020C */  jal        func_80098E9C
    /* 604CC 80071CBC 21204002 */   addu      $a0, $s2, $zero
    /* 604D0 80071CC0 A000B027 */  addiu      $s0, $sp, 0xA0
    /* 604D4 80071CC4 21200002 */  addu       $a0, $s0, $zero
    /* 604D8 80071CC8 21282002 */  addu       $a1, $s1, $zero
    /* 604DC 80071CCC B000A227 */  addiu      $v0, $sp, 0xB0
    /* 604E0 80071CD0 21304000 */  addu       $a2, $v0, $zero
    /* 604E4 80071CD4 00101124 */  addiu      $s1, $zero, 0x1000
    /* 604E8 80071CD8 B000A0AF */  sw         $zero, 0xB0($sp)
    /* 604EC 80071CDC 040051AC */  sw         $s1, 0x4($v0)
    /* 604F0 80071CE0 2C67020C */  jal        func_80099CB0
    /* 604F4 80071CE4 B800A0AF */   sw        $zero, 0xB8($sp)
    /* 604F8 80071CE8 21206002 */  addu       $a0, $s3, $zero
    /* 604FC 80071CEC 21280002 */  addu       $a1, $s0, $zero
    /* 60500 80071CF0 6867020C */  jal        func_80099DA0
    /* 60504 80071CF4 02000624 */   addiu     $a2, $zero, 0x2
    /* 60508 80071CF8 21200002 */  addu       $a0, $s0, $zero
    /* 6050C 80071CFC 21284002 */  addu       $a1, $s2, $zero
    /* 60510 80071D00 C000A827 */  addiu      $t0, $sp, 0xC0
    /* 60514 80071D04 9000A28F */  lw         $v0, 0x90($sp)
    /* 60518 80071D08 9400A38F */  lw         $v1, 0x94($sp)
    /* 6051C 80071D0C 9800A78F */  lw         $a3, 0x98($sp)
    /* 60520 80071D10 21300001 */  addu       $a2, $t0, $zero
    /* 60524 80071D14 C000A0AF */  sw         $zero, 0xC0($sp)
    /* 60528 80071D18 7000A2AF */  sw         $v0, 0x70($sp)
    /* 6052C 80071D1C 7400A3AF */  sw         $v1, 0x74($sp)
    /* 60530 80071D20 7800A7AF */  sw         $a3, 0x78($sp)
    /* 60534 80071D24 040011AD */  sw         $s1, 0x4($t0)
    /* 60538 80071D28 2C67020C */  jal        func_80099CB0
    /* 6053C 80071D2C C800A0AF */   sw        $zero, 0xC8($sp)
    /* 60540 80071D30 21206002 */  addu       $a0, $s3, $zero
    /* 60544 80071D34 21280002 */  addu       $a1, $s0, $zero
    /* 60548 80071D38 6867020C */  jal        func_80099DA0
    /* 6054C 80071D3C 02000624 */   addiu     $a2, $zero, 0x2
    /* 60550 80071D40 9000A28F */  lw         $v0, 0x90($sp)
    /* 60554 80071D44 9400A38F */  lw         $v1, 0x94($sp)
    /* 60558 80071D48 9800A58F */  lw         $a1, 0x98($sp)
    /* 6055C 80071D4C 21206002 */  addu       $a0, $s3, $zero
    /* 60560 80071D50 8000A2AF */  sw         $v0, 0x80($sp)
    /* 60564 80071D54 8400A3AF */  sw         $v1, 0x84($sp)
    /* 60568 80071D58 9F5B020C */  jal        func_80096E7C
    /* 6056C 80071D5C 8800A5AF */   sw        $a1, 0x88($sp)
    /* 60570 80071D60 9800B027 */  addiu      $s0, $sp, 0x98
    /* 60574 80071D64 9F5B020C */  jal        func_80096E7C
    /* 60578 80071D68 21200002 */   addu      $a0, $s0, $zero
    /* 6057C 80071D6C 643D838F */  lw         $v1, %gp_rel(D_800C8454)($gp)
    /* 60580 80071D70 00000000 */  nop
    /* 60584 80071D74 02006014 */  bnez       $v1, .L80071D80
    /* 60588 80071D78 01000224 */   addiu     $v0, $zero, 0x1
    /* 6058C 80071D7C 643D82AF */  sw         $v0, %gp_rel(D_800C8454)($gp)
  .L80071D80:
    /* 60590 80071D80 683D828F */  lw         $v0, %gp_rel(D_800C8458)($gp)
    /* 60594 80071D84 00000000 */  nop
    /* 60598 80071D88 02004014 */  bnez       $v0, .L80071D94
    /* 6059C 80071D8C 01000224 */   addiu     $v0, $zero, 0x1
    /* 605A0 80071D90 683D82AF */  sw         $v0, %gp_rel(D_800C8458)($gp)
  .L80071D94:
    /* 605A4 80071D94 0D80023C */  lui        $v0, %hi(D_800CB850)
    /* 605A8 80071D98 50B84224 */  addiu      $v0, $v0, %lo(D_800CB850)
    /* 605AC 80071D9C 9000A2AF */  sw         $v0, 0x90($sp)
    /* 605B0 80071DA0 21206002 */  addu       $a0, $s3, $zero
    /* 605B4 80071DA4 7000A527 */  addiu      $a1, $sp, 0x70
    /* 605B8 80071DA8 A35B020C */  jal        func_80096E8C
    /* 605BC 80071DAC 1000A627 */   addiu     $a2, $sp, 0x10
    /* 605C0 80071DB0 21206002 */  addu       $a0, $s3, $zero
    /* 605C4 80071DB4 E35B020C */  jal        func_80096F8C
    /* 605C8 80071DB8 F000A527 */   addiu     $a1, $sp, 0xF0
    /* 605CC 80071DBC 0E00401C */  bgtz       $v0, .L80071DF8
    /* 605D0 80071DC0 2110A002 */   addu      $v0, $s5, $zero
    /* 605D4 80071DC4 0D80023C */  lui        $v0, %hi(D_800CB860)
    /* 605D8 80071DC8 60B84224 */  addiu      $v0, $v0, %lo(D_800CB860)
    /* 605DC 80071DCC 9800A2AF */  sw         $v0, 0x98($sp)
    /* 605E0 80071DD0 21200002 */  addu       $a0, $s0, $zero
    /* 605E4 80071DD4 8000A527 */  addiu      $a1, $sp, 0x80
    /* 605E8 80071DD8 A35B020C */  jal        func_80096E8C
    /* 605EC 80071DDC 21308002 */   addu      $a2, $s4, $zero
    /* 605F0 80071DE0 21200002 */  addu       $a0, $s0, $zero
    /* 605F4 80071DE4 E35B020C */  jal        func_80096F8C
    /* 605F8 80071DE8 F000A527 */   addiu     $a1, $sp, 0xF0
    /* 605FC 80071DEC 27100200 */  nor        $v0, $zero, $v0
    /* 60600 80071DF0 C2AF0200 */  srl        $s5, $v0, 31
  .L80071DF4:
    /* 60604 80071DF4 2110A002 */  addu       $v0, $s5, $zero
  .L80071DF8:
    /* 60608 80071DF8 E800BF8F */  lw         $ra, 0xE8($sp)
    /* 6060C 80071DFC E400B58F */  lw         $s5, 0xE4($sp)
    /* 60610 80071E00 E000B48F */  lw         $s4, 0xE0($sp)
    /* 60614 80071E04 DC00B38F */  lw         $s3, 0xDC($sp)
    /* 60618 80071E08 D800B28F */  lw         $s2, 0xD8($sp)
    /* 6061C 80071E0C D400B18F */  lw         $s1, 0xD4($sp)
    /* 60620 80071E10 D000B08F */  lw         $s0, 0xD0($sp)
    /* 60624 80071E14 0800E003 */  jr         $ra
    /* 60628 80071E18 F000BD27 */   addiu     $sp, $sp, 0xF0
endlabel func_80071BCC
