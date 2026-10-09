nonmatching func_800A41BC, 0x88

glabel func_800A41BC
    /* 929CC 800A41BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 929D0 800A41C0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 929D4 800A41C4 21300000 */  addu       $a2, $zero, $zero
    /* 929D8 800A41C8 0D80053C */  lui        $a1, %hi(D_800D6098)
    /* 929DC 800A41CC 12000924 */  addiu      $t1, $zero, 0x12
    /* 929E0 800A41D0 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 929E4 800A41D4 01000724 */  addiu      $a3, $zero, 0x1
    /* 929E8 800A41D8 21200000 */  addu       $a0, $zero, $zero
  .L800A41DC:
    /* 929EC 800A41DC 9860A28C */  lw         $v0, %lo(D_800D6098)($a1)
    /* 929F0 800A41E0 00000000 */  nop
    /* 929F4 800A41E4 21108200 */  addu       $v0, $a0, $v0
    /* 929F8 800A41E8 000049AC */  sw         $t1, 0x0($v0)
    /* 929FC 800A41EC 9860A38C */  lw         $v1, %lo(D_800D6098)($a1)
    /* 92A00 800A41F0 00000000 */  nop
    /* 92A04 800A41F4 21188300 */  addu       $v1, $a0, $v1
    /* 92A08 800A41F8 040060AC */  sw         $zero, 0x4($v1)
    /* 92A0C 800A41FC 9860A28C */  lw         $v0, %lo(D_800D6098)($a1)
    /* 92A10 800A4200 00000000 */  nop
    /* 92A14 800A4204 21108200 */  addu       $v0, $a0, $v0
    /* 92A18 800A4208 080048AC */  sw         $t0, 0x8($v0)
    /* 92A1C 800A420C 9860A38C */  lw         $v1, %lo(D_800D6098)($a1)
    /* 92A20 800A4210 0100C624 */  addiu      $a2, $a2, 0x1
    /* 92A24 800A4214 21188300 */  addu       $v1, $a0, $v1
    /* 92A28 800A4218 CC468424 */  addiu      $a0, $a0, 0x46CC
    /* 92A2C 800A421C EFFFC018 */  blez       $a2, .L800A41DC
    /* 92A30 800A4220 C84667AC */   sw        $a3, 0x46C8($v1)
    /* 92A34 800A4224 B789020C */  jal        func_800A26DC
    /* 92A38 800A4228 00000000 */   nop
    /* 92A3C 800A422C A889020C */  jal        func_800A26A0
    /* 92A40 800A4230 00000000 */   nop
    /* 92A44 800A4234 1000BF8F */  lw         $ra, 0x10($sp)
    /* 92A48 800A4238 01000224 */  addiu      $v0, $zero, 0x1
    /* 92A4C 800A423C 0800E003 */  jr         $ra
    /* 92A50 800A4240 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800A41BC
