nonmatching func_8006A1B4, 0x70

glabel func_8006A1B4
    /* 589C4 8006A1B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 589C8 8006A1B8 0D80023C */  lui        $v0, %hi(D_800CAE80)
    /* 589CC 8006A1BC 80AE428C */  lw         $v0, %lo(D_800CAE80)($v0)
    /* 589D0 8006A1C0 21388000 */  addu       $a3, $a0, $zero
    /* 589D4 8006A1C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 589D8 8006A1C8 4400E38C */  lw         $v1, 0x44($a3)
    /* 589DC 8006A1CC 0400448C */  lw         $a0, 0x4($v0)
    /* 589E0 8006A1D0 00000000 */  nop
    /* 589E4 8006A1D4 24186400 */  and        $v1, $v1, $a0
    /* 589E8 8006A1D8 03006014 */  bnez       $v1, .L8006A1E8
    /* 589EC 8006A1DC FF00033C */   lui       $v1, (0xFFFFFF >> 16)
    /* 589F0 8006A1E0 85A80108 */  j          .L8006A214
    /* 589F4 8006A1E4 21100000 */   addu      $v0, $zero, $zero
  .L8006A1E8:
    /* 589F8 8006A1E8 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 589FC 8006A1EC 3800E28C */  lw         $v0, 0x38($a3)
    /* 58A00 8006A1F0 0C00E68C */  lw         $a2, 0xC($a3)
    /* 58A04 8006A1F4 24104300 */  and        $v0, $v0, $v1
    /* 58A08 8006A1F8 3800E2AC */  sw         $v0, 0x38($a3)
    /* 58A0C 8006A1FC 3800C484 */  lh         $a0, 0x38($a2)
    /* 58A10 8006A200 3C00C38C */  lw         $v1, 0x3C($a2)
    /* 58A14 8006A204 00000000 */  nop
    /* 58A18 8006A208 09F86000 */  jalr       $v1
    /* 58A1C 8006A20C 2120E400 */   addu      $a0, $a3, $a0
    /* 58A20 8006A210 01000224 */  addiu      $v0, $zero, 0x1
  .L8006A214:
    /* 58A24 8006A214 1000BF8F */  lw         $ra, 0x10($sp)
    /* 58A28 8006A218 00000000 */  nop
    /* 58A2C 8006A21C 0800E003 */  jr         $ra
    /* 58A30 8006A220 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006A1B4
