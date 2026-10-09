nonmatching func_8004AB7C, 0xFC

glabel func_8004AB7C
    /* 3938C 8004AB7C 3C008010 */  beqz       $a0, .L8004AC70
    /* 39390 8004AB80 21380000 */   addu      $a3, $zero, $zero
    /* 39394 8004AB84 2C01828C */  lw         $v0, 0x12C($a0)
    /* 39398 8004AB88 0D80013C */  lui        $at, %hi(D_800D5F44)
    /* 3939C 8004AB8C 445F22AC */  sw         $v0, %lo(D_800D5F44)($at)
    /* 393A0 8004AB90 E000838C */  lw         $v1, 0xE0($a0)
    /* 393A4 8004AB94 0D80013C */  lui        $at, %hi(D_800D5F38)
    /* 393A8 8004AB98 385F23AC */  sw         $v1, %lo(D_800D5F38)($at)
    /* 393AC 8004AB9C 1C01828C */  lw         $v0, 0x11C($a0)
    /* 393B0 8004ABA0 0D80013C */  lui        $at, %hi(D_800D5F34)
    /* 393B4 8004ABA4 345F22AC */  sw         $v0, %lo(D_800D5F34)($at)
    /* 393B8 8004ABA8 E400838C */  lw         $v1, 0xE4($a0)
    /* 393BC 8004ABAC 0D80013C */  lui        $at, %hi(D_800D5F40)
    /* 393C0 8004ABB0 405F23AC */  sw         $v1, %lo(D_800D5F40)($at)
    /* 393C4 8004ABB4 EC00828C */  lw         $v0, 0xEC($a0)
    /* 393C8 8004ABB8 0D80013C */  lui        $at, %hi(D_800D5F3C)
    /* 393CC 8004ABBC 3C5F22AC */  sw         $v0, %lo(D_800D5F3C)($at)
    /* 393D0 8004ABC0 2001838C */  lw         $v1, 0x120($a0)
    /* 393D4 8004ABC4 01000724 */  addiu      $a3, $zero, 0x1
    /* 393D8 8004ABC8 0D80013C */  lui        $at, %hi(D_800D5F30)
    /* 393DC 8004ABCC 305F23AC */  sw         $v1, %lo(D_800D5F30)($at)
    /* 393E0 8004ABD0 2401828C */  lw         $v0, 0x124($a0)
    /* 393E4 8004ABD4 0D80063C */  lui        $a2, %hi(D_800D5E48)
    /* 393E8 8004ABD8 485EC624 */  addiu      $a2, $a2, %lo(D_800D5E48)
    /* 393EC 8004ABDC 0D80013C */  lui        $at, %hi(D_800D5F4C)
    /* 393F0 8004ABE0 4C5F22AC */  sw         $v0, %lo(D_800D5F4C)($at)
    /* 393F4 8004ABE4 04008380 */  lb         $v1, 0x4($a0)
    /* 393F8 8004ABE8 04008524 */  addiu      $a1, $a0, 0x4
    /* 393FC 8004ABEC 0D80013C */  lui        $at, %hi(D_800D5F50)
    /* 39400 8004ABF0 505F23AC */  sw         $v1, %lo(D_800D5F50)($at)
    /* 39404 8004ABF4 05008280 */  lb         $v0, 0x5($a0)
    /* 39408 8004ABF8 24008324 */  addiu      $v1, $a0, 0x24
    /* 3940C 8004ABFC 0D80013C */  lui        $at, %hi(D_800D5F58)
    /* 39410 8004AC00 585F22AC */  sw         $v0, %lo(D_800D5F58)($at)
  .L8004AC04:
    /* 39414 8004AC04 0000A88C */  lw         $t0, 0x0($a1)
    /* 39418 8004AC08 0400A98C */  lw         $t1, 0x4($a1)
    /* 3941C 8004AC0C 0800AA8C */  lw         $t2, 0x8($a1)
    /* 39420 8004AC10 0C00AB8C */  lw         $t3, 0xC($a1)
    /* 39424 8004AC14 0000C8AC */  sw         $t0, 0x0($a2)
    /* 39428 8004AC18 0400C9AC */  sw         $t1, 0x4($a2)
    /* 3942C 8004AC1C 0800CAAC */  sw         $t2, 0x8($a2)
    /* 39430 8004AC20 0C00CBAC */  sw         $t3, 0xC($a2)
    /* 39434 8004AC24 1000A524 */  addiu      $a1, $a1, 0x10
    /* 39438 8004AC28 F6FFA314 */  bne        $a1, $v1, .L8004AC04
    /* 3943C 8004AC2C 1000C624 */   addiu     $a2, $a2, 0x10
    /* 39440 8004AC30 0000A88C */  lw         $t0, 0x0($a1)
    /* 39444 8004AC34 0400A98C */  lw         $t1, 0x4($a1)
    /* 39448 8004AC38 0000C8AC */  sw         $t0, 0x0($a2)
    /* 3944C 8004AC3C 0400C9AC */  sw         $t1, 0x4($a2)
    /* 39450 8004AC40 0D800B3C */  lui        $t3, %hi(D_800D5F70)
    /* 39454 8004AC44 705F6B25 */  addiu      $t3, $t3, %lo(D_800D5F70)
    /* 39458 8004AC48 2C00888C */  lw         $t0, 0x2C($a0)
    /* 3945C 8004AC4C 3000898C */  lw         $t1, 0x30($a0)
    /* 39460 8004AC50 34008A8C */  lw         $t2, 0x34($a0)
    /* 39464 8004AC54 000068AD */  sw         $t0, 0x0($t3)
    /* 39468 8004AC58 040069AD */  sw         $t1, 0x4($t3)
    /* 3946C 8004AC5C 08006AAD */  sw         $t2, 0x8($t3)
    /* 39470 8004AC60 3800888C */  lw         $t0, 0x38($a0)
    /* 39474 8004AC64 3C00898C */  lw         $t1, 0x3C($a0)
    /* 39478 8004AC68 0C0068AD */  sw         $t0, 0xC($t3)
    /* 3947C 8004AC6C 100069AD */  sw         $t1, 0x10($t3)
  .L8004AC70:
    /* 39480 8004AC70 0800E003 */  jr         $ra
    /* 39484 8004AC74 2110E000 */   addu      $v0, $a3, $zero
endlabel func_8004AB7C
