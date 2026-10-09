nonmatching func_800B01A0, 0xB8

glabel func_800B01A0
    /* 9E9B0 800B01A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9E9B4 800B01A4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9E9B8 800B01A8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9E9BC 800B01AC 8CBA020C */  jal        func_800AEA30
    /* 9E9C0 800B01B0 2180A000 */   addu      $s0, $a1, $zero
    /* 9E9C4 800B01B4 21284000 */  addu       $a1, $v0, $zero
    /* 9E9C8 800B01B8 2200A010 */  beqz       $a1, .L800B0244
    /* 9E9CC 800B01BC 0C80033C */   lui       $v1, %hi(D_800C3C74)
    /* 9E9D0 800B01C0 0100A290 */  lbu        $v0, 0x1($a1)
    /* 9E9D4 800B01C4 743C638C */  lw         $v1, %lo(D_800C3C74)($v1)
    /* 9E9D8 800B01C8 06000012 */  beqz       $s0, .L800B01E4
    /* 9E9DC 800B01CC 02210200 */   srl       $a0, $v0, 4
    /* 9E9E0 800B01D0 04000224 */  addiu      $v0, $zero, 0x4
    /* 9E9E4 800B01D4 1C008214 */  bne        $a0, $v0, .L800B0248
    /* 9E9E8 800B01D8 21100000 */   addu      $v0, $zero, $zero
    /* 9E9EC 800B01DC 87C00208 */  j          .L800B021C
    /* 9E9F0 800B01E0 04006230 */   andi      $v0, $v1, 0x4
  .L800B01E4:
    /* 9E9F4 800B01E4 04000224 */  addiu      $v0, $zero, 0x4
    /* 9E9F8 800B01E8 04008214 */  bne        $a0, $v0, .L800B01FC
    /* 9E9FC 800B01EC 05000224 */   addiu     $v0, $zero, 0x5
    /* 9EA00 800B01F0 04006230 */  andi       $v0, $v1, 0x4
    /* 9EA04 800B01F4 0B004014 */  bnez       $v0, .L800B0224
    /* 9EA08 800B01F8 05000224 */   addiu     $v0, $zero, 0x5
  .L800B01FC:
    /* 9EA0C 800B01FC 04008214 */  bne        $a0, $v0, .L800B0210
    /* 9EA10 800B0200 07000224 */   addiu     $v0, $zero, 0x7
    /* 9EA14 800B0204 08006230 */  andi       $v0, $v1, 0x8
    /* 9EA18 800B0208 06004014 */  bnez       $v0, .L800B0224
    /* 9EA1C 800B020C 07000224 */   addiu     $v0, $zero, 0x7
  .L800B0210:
    /* 9EA20 800B0210 0D008214 */  bne        $a0, $v0, .L800B0248
    /* 9EA24 800B0214 21100000 */   addu      $v0, $zero, $zero
    /* 9EA28 800B0218 10006230 */  andi       $v0, $v1, 0x10
  .L800B021C:
    /* 9EA2C 800B021C 0A004010 */  beqz       $v0, .L800B0248
    /* 9EA30 800B0220 21100000 */   addu      $v0, $zero, $zero
  .L800B0224:
    /* 9EA34 800B0224 0E80033C */  lui        $v1, %hi(D_800DE418)
    /* 9EA38 800B0228 18E46224 */  addiu      $v0, $v1, %lo(D_800DE418)
    /* 9EA3C 800B022C 0300A490 */  lbu        $a0, 0x3($a1)
    /* 9EA40 800B0230 0200A590 */  lbu        $a1, 0x2($a1)
    /* 9EA44 800B0234 00220400 */  sll        $a0, $a0, 8
    /* 9EA48 800B0238 2728A400 */  nor        $a1, $a1, $a0
    /* 9EA4C 800B023C 92C00208 */  j          .L800B0248
    /* 9EA50 800B0240 18E465A4 */   sh        $a1, %lo(D_800DE418)($v1)
  .L800B0244:
    /* 9EA54 800B0244 21100000 */  addu       $v0, $zero, $zero
  .L800B0248:
    /* 9EA58 800B0248 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9EA5C 800B024C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EA60 800B0250 0800E003 */  jr         $ra
    /* 9EA64 800B0254 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B01A0
