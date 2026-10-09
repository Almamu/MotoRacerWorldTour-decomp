nonmatching func_800B5990, 0x8C

glabel func_800B5990
    /* A41A0 800B5990 18008500 */  mult       $a0, $a1
    /* A41A4 800B5994 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A41A8 800B5998 1400BFAF */  sw         $ra, 0x14($sp)
    /* A41AC 800B599C 1000B0AF */  sw         $s0, 0x10($sp)
    /* A41B0 800B59A0 12800000 */  mflo       $s0
    /* A41B4 800B59A4 D3D4020C */  jal        func_800B534C
    /* A41B8 800B59A8 21200002 */   addu      $a0, $s0, $zero
    /* A41BC 800B59AC 21284000 */  addu       $a1, $v0, $zero
    /* A41C0 800B59B0 1500A010 */  beqz       $a1, .L800B5A08
    /* A41C4 800B59B4 03000226 */   addiu     $v0, $s0, 0x3
    /* A41C8 800B59B8 82800200 */  srl        $s0, $v0, 2
    /* A41CC 800B59BC 03000432 */  andi       $a0, $s0, 0x3
    /* A41D0 800B59C0 02810200 */  srl        $s0, $v0, 4
    /* A41D4 800B59C4 0A000012 */  beqz       $s0, .L800B59F0
    /* A41D8 800B59C8 2118A000 */   addu      $v1, $a1, $zero
    /* A41DC 800B59CC 0C00A224 */  addiu      $v0, $a1, 0xC
  .L800B59D0:
    /* A41E0 800B59D0 000060AC */  sw         $zero, 0x0($v1)
    /* A41E4 800B59D4 F8FF40AC */  sw         $zero, -0x8($v0)
    /* A41E8 800B59D8 FCFF40AC */  sw         $zero, -0x4($v0)
    /* A41EC 800B59DC 000040AC */  sw         $zero, 0x0($v0)
    /* A41F0 800B59E0 10004224 */  addiu      $v0, $v0, 0x10
    /* A41F4 800B59E4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A41F8 800B59E8 F9FF0016 */  bnez       $s0, .L800B59D0
    /* A41FC 800B59EC 10006324 */   addiu     $v1, $v1, 0x10
  .L800B59F0:
    /* A4200 800B59F0 05008010 */  beqz       $a0, .L800B5A08
    /* A4204 800B59F4 00000000 */   nop
  .L800B59F8:
    /* A4208 800B59F8 000060AC */  sw         $zero, 0x0($v1)
    /* A420C 800B59FC FFFF8424 */  addiu      $a0, $a0, -0x1
    /* A4210 800B5A00 FDFF8014 */  bnez       $a0, .L800B59F8
    /* A4214 800B5A04 04006324 */   addiu     $v1, $v1, 0x4
  .L800B5A08:
    /* A4218 800B5A08 1400BF8F */  lw         $ra, 0x14($sp)
    /* A421C 800B5A0C 1000B08F */  lw         $s0, 0x10($sp)
    /* A4220 800B5A10 2110A000 */  addu       $v0, $a1, $zero
    /* A4224 800B5A14 0800E003 */  jr         $ra
    /* A4228 800B5A18 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B5990
