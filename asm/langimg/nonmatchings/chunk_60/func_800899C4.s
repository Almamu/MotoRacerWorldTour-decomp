nonmatching func_800899C4, 0x78

glabel func_800899C4
    /* 781D4 800899C4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 781D8 800899C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 781DC 800899CC 2180A000 */  addu       $s0, $a1, $zero
    /* 781E0 800899D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 781E4 800899D4 21888000 */  addu       $s1, $a0, $zero
    /* 781E8 800899D8 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 781EC 800899DC 2A105000 */  slt        $v0, $v0, $s0
    /* 781F0 800899E0 02004010 */  beqz       $v0, .L800899EC
    /* 781F4 800899E4 1800BFAF */   sw        $ra, 0x18($sp)
    /* 781F8 800899E8 FF7F1024 */  addiu      $s0, $zero, 0x7FFF
  .L800899EC:
    /* 781FC 800899EC 03000106 */  bgez       $s0, .L800899FC
    /* 78200 800899F0 21200002 */   addu      $a0, $s0, $zero
    /* 78204 800899F4 21800000 */  addu       $s0, $zero, $zero
    /* 78208 800899F8 21200002 */  addu       $a0, $s0, $zero
  .L800899FC:
    /* 7820C 800899FC 2128C000 */  addu       $a1, $a2, $zero
    /* 78210 80089A00 000026A6 */  sh         $a2, 0x0($s1)
    /* 78214 80089A04 64D6020C */  jal        func_800B5990
    /* 78218 80089A08 040030A6 */   sh        $s0, 0x4($s1)
    /* 7821C 80089A0C 21200002 */  addu       $a0, $s0, $zero
    /* 78220 80089A10 04000524 */  addiu      $a1, $zero, 0x4
    /* 78224 80089A14 64D6020C */  jal        func_800B5990
    /* 78228 80089A18 0C0022AE */   sw        $v0, 0xC($s1)
    /* 7822C 80089A1C 21202002 */  addu       $a0, $s1, $zero
    /* 78230 80089A20 A926020C */  jal        func_80089AA4
    /* 78234 80089A24 080022AE */   sw        $v0, 0x8($s1)
    /* 78238 80089A28 1800BF8F */  lw         $ra, 0x18($sp)
    /* 7823C 80089A2C 1400B18F */  lw         $s1, 0x14($sp)
    /* 78240 80089A30 1000B08F */  lw         $s0, 0x10($sp)
    /* 78244 80089A34 0800E003 */  jr         $ra
    /* 78248 80089A38 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800899C4
