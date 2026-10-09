/* Handwritten function */
nonmatching func_800953A4, 0x220

glabel func_800953A4
    /* 83BB4 800953A4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 83BB8 800953A8 3400BFAF */  sw         $ra, 0x34($sp)
    /* 83BBC 800953AC 3000BEAF */  sw         $fp, 0x30($sp)
    /* 83BC0 800953B0 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 83BC4 800953B4 2800B6AF */  sw         $s6, 0x28($sp)
    /* 83BC8 800953B8 2400B5AF */  sw         $s5, 0x24($sp)
    /* 83BCC 800953BC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 83BD0 800953C0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 83BD4 800953C4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 83BD8 800953C8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 83BDC 800953CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 83BE0 800953D0 801F193C */  lui        $t9, (0x1F80001D >> 16)
    /* 83BE4 800953D4 0D80073C */  lui        $a3, %hi(D_800C8D90)
    /* 83BE8 800953D8 908DE78C */  lw         $a3, %lo(D_800C8D90)($a3)
    /* 83BEC 800953DC 00000000 */  nop
    /* 83BF0 800953E0 0000E38C */  lw         $v1, 0x0($a3)
    /* 83BF4 800953E4 00000000 */  nop
    /* 83BF8 800953E8 000023A7 */  sh         $v1, (0x1F800000 & 0xFFFF)($t9)
    /* 83BFC 800953EC 0400E58C */  lw         $a1, 0x4($a3)
    /* 83C00 800953F0 00000000 */  nop
    /* 83C04 800953F4 040025A7 */  sh         $a1, (0x1F800004 & 0xFFFF)($t9)
    /* 83C08 800953F8 0800E28C */  lw         $v0, 0x8($a3)
    /* 83C0C 800953FC 00000000 */  nop
    /* 83C10 80095400 21186200 */  addu       $v1, $v1, $v0
    /* 83C14 80095404 020023A7 */  sh         $v1, (0x1F800002 & 0xFFFF)($t9)
    /* 83C18 80095408 0C00E68C */  lw         $a2, 0xC($a3)
    /* 83C1C 8009540C 801F043C */  lui        $a0, (0x1F800028 >> 16)
    /* 83C20 80095410 2128A600 */  addu       $a1, $a1, $a2
    /* 83C24 80095414 060025A7 */  sh         $a1, (0x1F800006 & 0xFFFF)($t9)
    /* 83C28 80095418 0D80083C */  lui        $t0, %hi(D_800C8C70)
    /* 83C2C 8009541C 708C088D */  lw         $t0, %lo(D_800C8C70)($t0)
    /* 83C30 80095420 28008434 */  ori        $a0, $a0, (0x1F800028 & 0xFFFF)
    /* 83C34 80095424 100024AF */  sw         $a0, (0x1F800010 & 0xFFFF)($t9)
    /* 83C38 80095428 0C0028AF */  sw         $t0, (0x1F80000C & 0xFFFF)($t9)
    /* 83C3C 8009542C 0D80023C */  lui        $v0, %hi(D_800CBDC0)
    /* 83C40 80095430 C0BD428C */  lw         $v0, %lo(D_800CBDC0)($v0)
    /* 83C44 80095434 04000324 */  addiu      $v1, $zero, 0x4
    /* 83C48 80095438 1D0023A3 */  sb         $v1, (0x1F80001D & 0xFFFF)($t9)
    /* 83C4C 8009543C 04004224 */  addiu      $v0, $v0, 0x4
    /* 83C50 80095440 080022AF */  sw         $v0, (0x1F800008 & 0xFFFF)($t9)
    /* 83C54 80095444 F800E384 */  lh         $v1, 0xF8($a3)
    /* 83C58 80095448 00000000 */  nop
    /* 83C5C 8009544C 1E0023A7 */  sh         $v1, (0x1F80001E & 0xFFFF)($t9)
    /* 83C60 80095450 FA00E284 */  lh         $v0, 0xFA($a3)
    /* 83C64 80095454 00000000 */  nop
    /* 83C68 80095458 200022A7 */  sh         $v0, (0x1F800020 & 0xFFFF)($t9)
    /* 83C6C 8009545C 64468397 */  lhu        $v1, %gp_rel(D_800C8D54)($gp)
    /* 83C70 80095460 00000000 */  nop
    /* 83C74 80095464 220023A7 */  sh         $v1, (0x1F800022 & 0xFFFF)($t9)
    /* 83C78 80095468 EC00E294 */  lhu        $v0, 0xEC($a3)
    /* 83C7C 8009546C 00000000 */  nop
    /* 83C80 80095470 240022A7 */  sh         $v0, (0x1F800024 & 0xFFFF)($t9)
    /* 83C84 80095474 0C80053C */  lui        $a1, %hi(D_800C5E14)
    /* 83C88 80095478 145EA58C */  lw         $a1, %lo(D_800C5E14)($a1)
    /* 83C8C 8009547C 00000000 */  nop
    /* 83C90 80095480 7803A38C */  lw         $v1, 0x378($a1)
    /* 83C94 80095484 00000000 */  nop
    /* 83C98 80095488 0000628C */  lw         $v0, 0x0($v1)
    /* 83C9C 8009548C 00000000 */  nop
    /* 83CA0 80095490 A8004230 */  andi       $v0, $v0, 0xA8
    /* 83CA4 80095494 10004014 */  bnez       $v0, .L800954D8
    /* 83CA8 80095498 21500000 */   addu      $t2, $zero, $zero
    /* 83CAC 8009549C 1000628C */  lw         $v0, 0x10($v1)
    /* 83CB0 800954A0 00000000 */  nop
    /* 83CB4 800954A4 2C05438C */  lw         $v1, 0x52C($v0)
    /* 83CB8 800954A8 05000424 */  addiu      $a0, $zero, 0x5
    /* 83CBC 800954AC 08006410 */  beq        $v1, $a0, .L800954D0
    /* 83CC0 800954B0 00000000 */   nop
    /* 83CC4 800954B4 3004A38C */  lw         $v1, 0x430($a1)
    /* 83CC8 800954B8 00000000 */  nop
    /* 83CCC 800954BC 09006228 */  slti       $v0, $v1, 0x9
    /* 83CD0 800954C0 05004010 */  beqz       $v0, .L800954D8
    /* 83CD4 800954C4 07006228 */   slti      $v0, $v1, 0x7
    /* 83CD8 800954C8 03004014 */  bnez       $v0, .L800954D8
    /* 83CDC 800954CC 00000000 */   nop
  .L800954D0:
    /* 83CE0 800954D0 1D0024A3 */  sb         $a0, (0x1F80001D & 0xFFFF)($t9)
    /* 83CE4 800954D4 21500000 */  addu       $t2, $zero, $zero
  .L800954D8:
    /* 83CE8 800954D8 00D8CA48 */  ctc2       $t2, $27 /* handwritten instruction */
    /* 83CEC 800954DC 00E0CA48 */  ctc2       $t2, $28 /* handwritten instruction */
    /* 83CF0 800954E0 00005148 */  cfc2       $s1, $0 /* handwritten instruction */
    /* 83CF4 800954E4 00085248 */  cfc2       $s2, $1 /* handwritten instruction */
    /* 83CF8 800954E8 00105348 */  cfc2       $s3, $2 /* handwritten instruction */
    /* 83CFC 800954EC 00185448 */  cfc2       $s4, $3 /* handwritten instruction */
    /* 83D00 800954F0 00205548 */  cfc2       $s5, $4 /* handwritten instruction */
    /* 83D04 800954F4 00285648 */  cfc2       $s6, $5 /* handwritten instruction */
    /* 83D08 800954F8 00305748 */  cfc2       $s7, $6 /* handwritten instruction */
    /* 83D0C 800954FC 00385E48 */  cfc2       $fp, $7 /* handwritten instruction */
    /* 83D10 80095500 FF7F023C */  lui        $v0, (0x7FFF7FFF >> 16)
    /* 83D14 80095504 FF7F4234 */  ori        $v0, $v0, (0x7FFF7FFF & 0xFFFF)
    /* 83D18 80095508 24282202 */  and        $a1, $s1, $v0
    /* 83D1C 8009550C 40280500 */  sll        $a1, $a1, 1
    /* 83D20 80095510 24204202 */  and        $a0, $s2, $v0
    /* 83D24 80095514 40200400 */  sll        $a0, $a0, 1
    /* 83D28 80095518 24186202 */  and        $v1, $s3, $v0
    /* 83D2C 8009551C 40180300 */  sll        $v1, $v1, 1
    /* 83D30 80095520 24108202 */  and        $v0, $s4, $v0
    /* 83D34 80095524 40100200 */  sll        $v0, $v0, 1
    /* 83D38 80095528 40301500 */  sll        $a2, $s5, 1
    /* 83D3C 8009552C 40381600 */  sll        $a3, $s6, 1
    /* 83D40 80095530 40401700 */  sll        $t0, $s7, 1
    /* 83D44 80095534 40481E00 */  sll        $t1, $fp, 1
    /* 83D48 80095538 0000C548 */  ctc2       $a1, $0 /* handwritten instruction */
    /* 83D4C 8009553C 0008C448 */  ctc2       $a0, $1 /* handwritten instruction */
    /* 83D50 80095540 0010C348 */  ctc2       $v1, $2 /* handwritten instruction */
    /* 83D54 80095544 0018C248 */  ctc2       $v0, $3 /* handwritten instruction */
    /* 83D58 80095548 0020C648 */  ctc2       $a2, $4 /* handwritten instruction */
    /* 83D5C 8009554C 0028C748 */  ctc2       $a3, $5 /* handwritten instruction */
    /* 83D60 80095550 0030C848 */  ctc2       $t0, $6 /* handwritten instruction */
    /* 83D64 80095554 0038C948 */  ctc2       $t1, $7 /* handwritten instruction */
    /* 83D68 80095558 801F043C */  lui        $a0, (0x1F8003F0 >> 16)
    /* 83D6C 8009555C E8D6020C */  jal        func_800B5BA0
    /* 83D70 80095560 F0038434 */   ori       $a0, $a0, (0x1F8003F0 & 0xFFFF)
    /* 83D74 80095564 3B52020C */  jal        func_800948EC
    /* 83D78 80095568 21804000 */   addu      $s0, $v0, $zero
    /* 83D7C 8009556C E8D6020C */  jal        func_800B5BA0
    /* 83D80 80095570 21200002 */   addu      $a0, $s0, $zero
    /* 83D84 80095574 0000D148 */  ctc2       $s1, $0 /* handwritten instruction */
    /* 83D88 80095578 0008D248 */  ctc2       $s2, $1 /* handwritten instruction */
    /* 83D8C 8009557C 0010D348 */  ctc2       $s3, $2 /* handwritten instruction */
    /* 83D90 80095580 0018D448 */  ctc2       $s4, $3 /* handwritten instruction */
    /* 83D94 80095584 0020D548 */  ctc2       $s5, $4 /* handwritten instruction */
    /* 83D98 80095588 0028D648 */  ctc2       $s6, $5 /* handwritten instruction */
    /* 83D9C 8009558C 0030D748 */  ctc2       $s7, $6 /* handwritten instruction */
    /* 83DA0 80095590 0038DE48 */  ctc2       $fp, $7 /* handwritten instruction */
    /* 83DA4 80095594 3400BF8F */  lw         $ra, 0x34($sp)
    /* 83DA8 80095598 3000BE8F */  lw         $fp, 0x30($sp)
    /* 83DAC 8009559C 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 83DB0 800955A0 2800B68F */  lw         $s6, 0x28($sp)
    /* 83DB4 800955A4 2400B58F */  lw         $s5, 0x24($sp)
    /* 83DB8 800955A8 2000B48F */  lw         $s4, 0x20($sp)
    /* 83DBC 800955AC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 83DC0 800955B0 1800B28F */  lw         $s2, 0x18($sp)
    /* 83DC4 800955B4 1400B18F */  lw         $s1, 0x14($sp)
    /* 83DC8 800955B8 1000B08F */  lw         $s0, 0x10($sp)
    /* 83DCC 800955BC 0800E003 */  jr         $ra
    /* 83DD0 800955C0 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800953A4
