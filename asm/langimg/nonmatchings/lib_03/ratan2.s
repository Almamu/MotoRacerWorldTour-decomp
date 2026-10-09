nonmatching ratan2, 0x180

glabel ratan2
    /* 9CD78 800AE568 21300000 */  addu       $a2, $zero, $zero
    /* 9CD7C 800AE56C 0300A104 */  bgez       $a1, .L800AE57C
    /* 9CD80 800AE570 21380000 */   addu      $a3, $zero, $zero
    /* 9CD84 800AE574 01000624 */  addiu      $a2, $zero, 0x1
    /* 9CD88 800AE578 23280500 */  negu       $a1, $a1
  .L800AE57C:
    /* 9CD8C 800AE57C 03008104 */  bgez       $a0, .L800AE58C
    /* 9CD90 800AE580 00000000 */   nop
    /* 9CD94 800AE584 01000724 */  addiu      $a3, $zero, 0x1
    /* 9CD98 800AE588 23200400 */  negu       $a0, $a0
  .L800AE58C:
    /* 9CD9C 800AE58C 0400A014 */  bnez       $a1, .L800AE5A0
    /* 9CDA0 800AE590 2A108500 */   slt       $v0, $a0, $a1
    /* 9CDA4 800AE594 4F008010 */  beqz       $a0, .L800AE6D4
    /* 9CDA8 800AE598 21100000 */   addu      $v0, $zero, $zero
    /* 9CDAC 800AE59C 2A108500 */  slt        $v0, $a0, $a1
  .L800AE5A0:
    /* 9CDB0 800AE5A0 23004010 */  beqz       $v0, .L800AE630
    /* 9CDB4 800AE5A4 E07F023C */   lui       $v0, (0x7FE00000 >> 16)
    /* 9CDB8 800AE5A8 24108200 */  and        $v0, $a0, $v0
    /* 9CDBC 800AE5AC 0E004010 */  beqz       $v0, .L800AE5E8
    /* 9CDC0 800AE5B0 83120500 */   sra       $v0, $a1, 10
    /* 9CDC4 800AE5B4 1A008200 */  div        $zero, $a0, $v0
    /* 9CDC8 800AE5B8 02004014 */  bnez       $v0, .L800AE5C4
    /* 9CDCC 800AE5BC 00000000 */   nop
    /* 9CDD0 800AE5C0 0D000700 */  break      7
  .L800AE5C4:
    /* 9CDD4 800AE5C4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 9CDD8 800AE5C8 04004114 */  bne        $v0, $at, .L800AE5DC
    /* 9CDDC 800AE5CC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 9CDE0 800AE5D0 02008114 */  bne        $a0, $at, .L800AE5DC
    /* 9CDE4 800AE5D4 00000000 */   nop
    /* 9CDE8 800AE5D8 0D000600 */  break      6
  .L800AE5DC:
    /* 9CDEC 800AE5DC 12200000 */  mflo       $a0
    /* 9CDF0 800AE5E0 87B90208 */  j          .L800AE61C
    /* 9CDF4 800AE5E4 40100400 */   sll       $v0, $a0, 1
  .L800AE5E8:
    /* 9CDF8 800AE5E8 80120400 */  sll        $v0, $a0, 10
    /* 9CDFC 800AE5EC 1A004500 */  div        $zero, $v0, $a1
    /* 9CE00 800AE5F0 0200A014 */  bnez       $a1, .L800AE5FC
    /* 9CE04 800AE5F4 00000000 */   nop
    /* 9CE08 800AE5F8 0D000700 */  break      7
  .L800AE5FC:
    /* 9CE0C 800AE5FC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 9CE10 800AE600 0400A114 */  bne        $a1, $at, .L800AE614
    /* 9CE14 800AE604 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 9CE18 800AE608 02004114 */  bne        $v0, $at, .L800AE614
    /* 9CE1C 800AE60C 00000000 */   nop
    /* 9CE20 800AE610 0D000600 */  break      6
  .L800AE614:
    /* 9CE24 800AE614 12200000 */  mflo       $a0
    /* 9CE28 800AE618 40100400 */  sll        $v0, $a0, 1
  .L800AE61C:
    /* 9CE2C 800AE61C 0C80033C */  lui        $v1, %hi(D_800C33A0)
    /* 9CE30 800AE620 21186200 */  addu       $v1, $v1, $v0
    /* 9CE34 800AE624 A0336384 */  lh         $v1, %lo(D_800C33A0)($v1)
    /* 9CE38 800AE628 AEB90208 */  j          .L800AE6B8
    /* 9CE3C 800AE62C 00000000 */   nop
  .L800AE630:
    /* 9CE40 800AE630 2410A200 */  and        $v0, $a1, $v0
    /* 9CE44 800AE634 0E004010 */  beqz       $v0, .L800AE670
    /* 9CE48 800AE638 83120400 */   sra       $v0, $a0, 10
    /* 9CE4C 800AE63C 1A00A200 */  div        $zero, $a1, $v0
    /* 9CE50 800AE640 02004014 */  bnez       $v0, .L800AE64C
    /* 9CE54 800AE644 00000000 */   nop
    /* 9CE58 800AE648 0D000700 */  break      7
  .L800AE64C:
    /* 9CE5C 800AE64C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 9CE60 800AE650 04004114 */  bne        $v0, $at, .L800AE664
    /* 9CE64 800AE654 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 9CE68 800AE658 0200A114 */  bne        $a1, $at, .L800AE664
    /* 9CE6C 800AE65C 00000000 */   nop
    /* 9CE70 800AE660 0D000600 */  break      6
  .L800AE664:
    /* 9CE74 800AE664 12200000 */  mflo       $a0
    /* 9CE78 800AE668 A9B90208 */  j          .L800AE6A4
    /* 9CE7C 800AE66C 40100400 */   sll       $v0, $a0, 1
  .L800AE670:
    /* 9CE80 800AE670 80120500 */  sll        $v0, $a1, 10
    /* 9CE84 800AE674 1A004400 */  div        $zero, $v0, $a0
    /* 9CE88 800AE678 02008014 */  bnez       $a0, .L800AE684
    /* 9CE8C 800AE67C 00000000 */   nop
    /* 9CE90 800AE680 0D000700 */  break      7
  .L800AE684:
    /* 9CE94 800AE684 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 9CE98 800AE688 04008114 */  bne        $a0, $at, .L800AE69C
    /* 9CE9C 800AE68C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 9CEA0 800AE690 02004114 */  bne        $v0, $at, .L800AE69C
    /* 9CEA4 800AE694 00000000 */   nop
    /* 9CEA8 800AE698 0D000600 */  break      6
  .L800AE69C:
    /* 9CEAC 800AE69C 12200000 */  mflo       $a0
    /* 9CEB0 800AE6A0 40100400 */  sll        $v0, $a0, 1
  .L800AE6A4:
    /* 9CEB4 800AE6A4 0C80033C */  lui        $v1, %hi(D_800C33A0)
    /* 9CEB8 800AE6A8 21186200 */  addu       $v1, $v1, $v0
    /* 9CEBC 800AE6AC A0336384 */  lh         $v1, %lo(D_800C33A0)($v1)
    /* 9CEC0 800AE6B0 00040224 */  addiu      $v0, $zero, 0x400
    /* 9CEC4 800AE6B4 23184300 */  subu       $v1, $v0, $v1
  .L800AE6B8:
    /* 9CEC8 800AE6B8 0200C010 */  beqz       $a2, .L800AE6C4
    /* 9CECC 800AE6BC 00080224 */   addiu     $v0, $zero, 0x800
    /* 9CED0 800AE6C0 23184300 */  subu       $v1, $v0, $v1
  .L800AE6C4:
    /* 9CED4 800AE6C4 0300E010 */  beqz       $a3, .L800AE6D4
    /* 9CED8 800AE6C8 21106000 */   addu      $v0, $v1, $zero
    /* 9CEDC 800AE6CC 23180300 */  negu       $v1, $v1
    /* 9CEE0 800AE6D0 21106000 */  addu       $v0, $v1, $zero
  .L800AE6D4:
    /* 9CEE4 800AE6D4 0800E003 */  jr         $ra
    /* 9CEE8 800AE6D8 00000000 */   nop
    /* 9CEEC 800AE6DC 00000000 */  nop
    /* 9CEF0 800AE6E0 00000000 */  nop
    /* 9CEF4 800AE6E4 00000000 */  nop
endlabel ratan2
