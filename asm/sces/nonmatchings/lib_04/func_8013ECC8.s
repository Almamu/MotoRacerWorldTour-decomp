nonmatching func_8013ECC8, 0xBC

glabel func_8013ECC8
    /* C194 8013ECC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C198 8013ECCC 1000B0AF */  sw         $s0, 0x10($sp)
    /* C19C 8013ECD0 1400BFAF */  sw         $ra, 0x14($sp)
    /* C1A0 8013ECD4 17FB040C */  jal        func_8013EC5C
    /* C1A4 8013ECD8 2180A000 */   addu      $s0, $a1, $zero
    /* C1A8 8013ECDC 21284000 */  addu       $a1, $v0, $zero
    /* C1AC 8013ECE0 2400A010 */  beqz       $a1, .L8013ED74
    /* C1B0 8013ECE4 21100000 */   addu      $v0, $zero, $zero
    /* C1B4 8013ECE8 0100A290 */  lbu        $v0, 0x1($a1)
    /* C1B8 8013ECEC 00000000 */  nop
    /* C1BC 8013ECF0 02190200 */  srl        $v1, $v0, 4
    /* C1C0 8013ECF4 1C80023C */  lui        $v0, %hi(D_801BFE4C)
    /* C1C4 8013ECF8 4CFE448C */  lw         $a0, %lo(D_801BFE4C)($v0)
    /* C1C8 8013ECFC 05000012 */  beqz       $s0, .L8013ED14
    /* C1CC 8013ED00 04000224 */   addiu     $v0, $zero, 0x4
    /* C1D0 8013ED04 1A006214 */  bne        $v1, $v0, .L8013ED70
    /* C1D4 8013ED08 24108200 */   and       $v0, $a0, $v0
    /* C1D8 8013ED0C 52FB0408 */  j          .L8013ED48
    /* C1DC 8013ED10 00000000 */   nop
  .L8013ED14:
    /* C1E0 8013ED14 03006214 */  bne        $v1, $v0, .L8013ED24
    /* C1E4 8013ED18 24108200 */   and       $v0, $a0, $v0
    /* C1E8 8013ED1C 0C004014 */  bnez       $v0, .L8013ED50
    /* C1EC 8013ED20 00000000 */   nop
  .L8013ED24:
    /* C1F0 8013ED24 05000224 */  addiu      $v0, $zero, 0x5
    /* C1F4 8013ED28 04006214 */  bne        $v1, $v0, .L8013ED3C
    /* C1F8 8013ED2C 07000224 */   addiu     $v0, $zero, 0x7
    /* C1FC 8013ED30 08008230 */  andi       $v0, $a0, 0x8
    /* C200 8013ED34 06004014 */  bnez       $v0, .L8013ED50
    /* C204 8013ED38 07000224 */   addiu     $v0, $zero, 0x7
  .L8013ED3C:
    /* C208 8013ED3C 0D006214 */  bne        $v1, $v0, .L8013ED74
    /* C20C 8013ED40 21100000 */   addu      $v0, $zero, $zero
    /* C210 8013ED44 10008230 */  andi       $v0, $a0, 0x10
  .L8013ED48:
    /* C214 8013ED48 0A004010 */  beqz       $v0, .L8013ED74
    /* C218 8013ED4C 21100000 */   addu      $v0, $zero, $zero
  .L8013ED50:
    /* C21C 8013ED50 1D80033C */  lui        $v1, %hi(D_801CE6F8)
    /* C220 8013ED54 F8E66224 */  addiu      $v0, $v1, %lo(D_801CE6F8)
    /* C224 8013ED58 0300A490 */  lbu        $a0, 0x3($a1)
    /* C228 8013ED5C 0200A590 */  lbu        $a1, 0x2($a1)
    /* C22C 8013ED60 00220400 */  sll        $a0, $a0, 8
    /* C230 8013ED64 2728A400 */  nor        $a1, $a1, $a0
    /* C234 8013ED68 5DFB0408 */  j          .L8013ED74
    /* C238 8013ED6C F8E665A4 */   sh        $a1, %lo(D_801CE6F8)($v1)
  .L8013ED70:
    /* C23C 8013ED70 21100000 */  addu       $v0, $zero, $zero
  .L8013ED74:
    /* C240 8013ED74 1400BF8F */  lw         $ra, 0x14($sp)
    /* C244 8013ED78 1000B08F */  lw         $s0, 0x10($sp)
    /* C248 8013ED7C 0800E003 */  jr         $ra
    /* C24C 8013ED80 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8013ECC8
