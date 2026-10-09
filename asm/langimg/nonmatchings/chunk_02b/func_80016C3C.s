/* Handwritten function */
nonmatching func_80016C3C, 0x1F8

glabel func_80016C3C
    /* 544C 80016C3C A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 5450 80016C40 4000B0AF */  sw         $s0, 0x40($sp)
    /* 5454 80016C44 2180A000 */  addu       $s0, $a1, $zero
    /* 5458 80016C48 4800B2AF */  sw         $s2, 0x48($sp)
    /* 545C 80016C4C 1000B227 */  addiu      $s2, $sp, 0x10
    /* 5460 80016C50 4400B1AF */  sw         $s1, 0x44($sp)
    /* 5464 80016C54 0D80113C */  lui        $s1, %hi(D_800C8864)
    /* 5468 80016C58 6488318E */  lw         $s1, %lo(D_800C8864)($s1)
    /* 546C 80016C5C 21304002 */  addu       $a2, $s2, $zero
    /* 5470 80016C60 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* 5474 80016C64 21988000 */  addu       $s3, $a0, $zero
    /* 5478 80016C68 5000BFAF */  sw         $ra, 0x50($sp)
    /* 547C 80016C6C 9D61020C */  jal        func_80098674
    /* 5480 80016C70 60002426 */   addiu     $a0, $s1, 0x60
    /* 5484 80016C74 3000A427 */  addiu      $a0, $sp, 0x30
    /* 5488 80016C78 2400A527 */  addiu      $a1, $sp, 0x24
    /* 548C 80016C7C 1400088E */  lw         $t0, 0x14($s0)
    /* 5490 80016C80 14001026 */  addiu      $s0, $s0, 0x14
    /* 5494 80016C84 7400228E */  lw         $v0, 0x74($s1)
    /* 5498 80016C88 74003126 */  addiu      $s1, $s1, 0x74
    /* 549C 80016C8C 0400068E */  lw         $a2, 0x4($s0)
    /* 54A0 80016C90 0800078E */  lw         $a3, 0x8($s0)
    /* 54A4 80016C94 0400238E */  lw         $v1, 0x4($s1)
    /* 54A8 80016C98 23400201 */  subu       $t0, $t0, $v0
    /* 54AC 80016C9C 0800228E */  lw         $v0, 0x8($s1)
    /* 54B0 80016CA0 2330C300 */  subu       $a2, $a2, $v1
    /* 54B4 80016CA4 3000A8AF */  sw         $t0, 0x30($sp)
    /* 54B8 80016CA8 3400A6AF */  sw         $a2, 0x34($sp)
    /* 54BC 80016CAC 2338E200 */  subu       $a3, $a3, $v0
    /* 54C0 80016CB0 1F62020C */  jal        func_8009887C
    /* 54C4 80016CB4 3800A7AF */   sw        $a3, 0x38($sp)
    /* 54C8 80016CB8 0D80063C */  lui        $a2, %hi(D_800C8864)
    /* 54CC 80016CBC 6488C68C */  lw         $a2, %lo(D_800C8864)($a2)
    /* 54D0 80016CC0 00000000 */  nop
    /* 54D4 80016CC4 3C01C28C */  lw         $v0, 0x13C($a2)
    /* 54D8 80016CC8 00000000 */  nop
    /* 54DC 80016CCC 1C00438C */  lw         $v1, 0x1C($v0)
    /* 54E0 80016CD0 1400448C */  lw         $a0, 0x14($v0)
    /* 54E4 80016CD4 001C0300 */  sll        $v1, $v1, 16
    /* 54E8 80016CD8 802B0400 */  sll        $a1, $a0, 14
    /* 54EC 80016CDC C0130400 */  sll        $v0, $a0, 15
    /* 54F0 80016CE0 21104500 */  addu       $v0, $v0, $a1
    /* 54F4 80016CE4 1A006200 */  div        $zero, $v1, $v0
    /* 54F8 80016CE8 12100000 */  mflo       $v0
    /* 54FC 80016CEC 00240400 */  sll        $a0, $a0, 16
    /* 5500 80016CF0 00000000 */  nop
    /* 5504 80016CF4 1A006400 */  div        $zero, $v1, $a0
    /* 5508 80016CF8 12180000 */  mflo       $v1
    /* 550C 80016CFC 00E8C248 */  ctc2       $v0, $29 /* handwritten instruction */
    /* 5510 80016D00 00F0C348 */  ctc2       $v1, $30 /* handwritten instruction */
    /* 5514 80016D04 2400A48F */  lw         $a0, 0x24($sp)
    /* 5518 80016D08 2800A28F */  lw         $v0, 0x28($sp)
    /* 551C 80016D0C 2C00A38F */  lw         $v1, 0x2C($sp)
    /* 5520 80016D10 83200400 */  sra        $a0, $a0, 2
    /* 5524 80016D14 83100200 */  sra        $v0, $v0, 2
    /* 5528 80016D18 83180300 */  sra        $v1, $v1, 2
    /* 552C 80016D1C 0000458E */  lw         $a1, 0x0($s2)
    /* 5530 80016D20 0400468E */  lw         $a2, 0x4($s2)
    /* 5534 80016D24 0000C548 */  ctc2       $a1, $0 /* handwritten instruction */
    /* 5538 80016D28 0008C648 */  ctc2       $a2, $1 /* handwritten instruction */
    /* 553C 80016D2C 0800458E */  lw         $a1, 0x8($s2)
    /* 5540 80016D30 0C00468E */  lw         $a2, 0xC($s2)
    /* 5544 80016D34 0010C548 */  ctc2       $a1, $2 /* handwritten instruction */
    /* 5548 80016D38 1000458E */  lw         $a1, 0x10($s2)
    /* 554C 80016D3C 0018C648 */  ctc2       $a2, $3 /* handwritten instruction */
    /* 5550 80016D40 0020C548 */  ctc2       $a1, $4 /* handwritten instruction */
    /* 5554 80016D44 0028C448 */  ctc2       $a0, $5 /* handwritten instruction */
    /* 5558 80016D48 0030C248 */  ctc2       $v0, $6 /* handwritten instruction */
    /* 555C 80016D4C 0038C348 */  ctc2       $v1, $7 /* handwritten instruction */
    /* 5560 80016D50 5800648E */  lw         $a0, 0x58($s3)
    /* 5564 80016D54 5400628E */  lw         $v0, 0x54($s3)
    /* 5568 80016D58 0400858C */  lw         $a1, 0x4($a0)
    /* 556C 80016D5C 02004010 */  beqz       $v0, .L80016D68
    /* 5570 80016D60 21308000 */   addu      $a2, $a0, $zero
    /* 5574 80016D64 21284000 */  addu       $a1, $v0, $zero
  .L80016D68:
    /* 5578 80016D68 00FF093C */  lui        $t1, (0xFF00FF00 >> 16)
    /* 557C 80016D6C 00FF2935 */  ori        $t1, $t1, (0xFF00FF00 & 0xFFFF)
    /* 5580 80016D70 00008948 */  mtc2       $t1, $0 /* handwritten instruction */
    /* 5584 80016D74 21480000 */  addu       $t1, $zero, $zero
    /* 5588 80016D78 00088948 */  mtc2       $t1, $1 /* handwritten instruction */
    /* 558C 80016D7C 0001093C */  lui        $t1, (0x1000000 >> 16)
    /* 5590 80016D80 00108948 */  mtc2       $t1, $2 /* handwritten instruction */
    /* 5594 80016D84 21480000 */  addu       $t1, $zero, $zero
    /* 5598 80016D88 00188948 */  mtc2       $t1, $3 /* handwritten instruction */
    /* 559C 80016D8C 00010924 */  addiu      $t1, $zero, 0x100
    /* 55A0 80016D90 00208948 */  mtc2       $t1, $4 /* handwritten instruction */
    /* 55A4 80016D94 21480000 */  addu       $t1, $zero, $zero
    /* 55A8 80016D98 00288948 */  mtc2       $t1, $5 /* handwritten instruction */
    /* 55AC 80016D9C 00000000 */  nop
    /* 55B0 80016DA0 00000000 */  nop
    /* 55B4 80016DA4 3000284A */  rtpt
    /* 55B8 80016DA8 00F84348 */  cfc2       $v1, $31 /* handwritten instruction */
    /* 55BC 80016DAC 0600404B */  nclip
    /* 55C0 80016DB0 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* 55C4 80016DB4 00000000 */  nop
    /* 55C8 80016DB8 17004018 */  blez       $v0, .L80016E18
    /* 55CC 80016DBC 00000000 */   nop
    /* 55D0 80016DC0 00008948 */  mtc2       $t1, $0 /* handwritten instruction */
    /* 55D4 80016DC4 00088948 */  mtc2       $t1, $1 /* handwritten instruction */
    /* 55D8 80016DC8 00000000 */  nop
    /* 55DC 80016DCC 00000000 */  nop
    /* 55E0 80016DD0 0100184A */  rtps
    /* 55E4 80016DD4 00700748 */  mfc2       $a3, $14 /* handwritten instruction */
    /* 55E8 80016DD8 0000828C */  lw         $v0, 0x0($a0)
    /* 55EC 80016DDC 01000324 */  addiu      $v1, $zero, 0x1
    /* 55F0 80016DE0 07004230 */  andi       $v0, $v0, 0x7
    /* 55F4 80016DE4 07004314 */  bne        $v0, $v1, .L80016E04
    /* 55F8 80016DE8 00000000 */   nop
    /* 55FC 80016DEC 00340700 */  sll        $a2, $a3, 16
    /* 5600 80016DF0 03340600 */  sra        $a2, $a2, 16
    /* 5604 80016DF4 BB62000C */  jal        func_80018AEC
    /* 5608 80016DF8 033C0700 */   sra       $a3, $a3, 16
    /* 560C 80016DFC 865B0008 */  j          .L80016E18
    /* 5610 80016E00 00000000 */   nop
  .L80016E04:
    /* 5614 80016E04 2120C000 */  addu       $a0, $a2, $zero
    /* 5618 80016E08 00340700 */  sll        $a2, $a3, 16
    /* 561C 80016E0C 03340600 */  sra        $a2, $a2, 16
    /* 5620 80016E10 4564000C */  jal        func_80019114
    /* 5624 80016E14 033C0700 */   sra       $a3, $a3, 16
  .L80016E18:
    /* 5628 80016E18 5000BF8F */  lw         $ra, 0x50($sp)
    /* 562C 80016E1C 4C00B38F */  lw         $s3, 0x4C($sp)
    /* 5630 80016E20 4800B28F */  lw         $s2, 0x48($sp)
    /* 5634 80016E24 4400B18F */  lw         $s1, 0x44($sp)
    /* 5638 80016E28 4000B08F */  lw         $s0, 0x40($sp)
    /* 563C 80016E2C 0800E003 */  jr         $ra
    /* 5640 80016E30 5800BD27 */   addiu     $sp, $sp, 0x58
endlabel func_80016C3C
