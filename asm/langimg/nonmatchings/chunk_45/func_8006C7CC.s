nonmatching func_8006C7CC, 0x60

glabel func_8006C7CC
    /* 5AFDC 8006C7CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5AFE0 8006C7D0 0D80023C */  lui        $v0, %hi(D_800D11D0)
    /* 5AFE4 8006C7D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5AFE8 8006C7D8 D0115024 */  addiu      $s0, $v0, %lo(D_800D11D0)
    /* 5AFEC 8006C7DC 21200002 */  addu       $a0, $s0, $zero
    /* 5AFF0 8006C7E0 0C80053C */  lui        $a1, %hi(D_800C7F30)
    /* 5AFF4 8006C7E4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5AFF8 8006C7E8 C951000C */  jal        func_80014724
    /* 5AFFC 8006C7EC 307FA524 */   addiu     $a1, $a1, %lo(D_800C7F30)
    /* 5B000 8006C7F0 0A004010 */  beqz       $v0, .L8006C81C
    /* 5B004 8006C7F4 21200002 */   addu      $a0, $s0, $zero
    /* 5B008 8006C7F8 0C80063C */  lui        $a2, %hi(D_800C7DD8)
    /* 5B00C 8006C7FC D87DC624 */  addiu      $a2, $a2, %lo(D_800C7DD8)
    /* 5B010 8006C800 784F000C */  jal        func_80013DE0
    /* 5B014 8006C804 0D000524 */   addiu     $a1, $zero, 0xD
    /* 5B018 8006C808 04000424 */  addiu      $a0, $zero, 0x4
    /* 5B01C 8006C80C 6A47000C */  jal        func_80011DA8
    /* 5B020 8006C810 28000524 */   addiu     $a1, $zero, 0x28
    /* 5B024 8006C814 01000224 */  addiu      $v0, $zero, 0x1
    /* 5B028 8006C818 030002A2 */  sb         $v0, 0x3($s0)
  .L8006C81C:
    /* 5B02C 8006C81C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 5B030 8006C820 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B034 8006C824 0800E003 */  jr         $ra
    /* 5B038 8006C828 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8006C7CC
