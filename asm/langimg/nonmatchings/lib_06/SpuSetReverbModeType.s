nonmatching SpuSetReverbModeType, 0x1D0

glabel SpuSetReverbModeType
    /* A3400 800B4BF0 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* A3404 800B4BF4 5800B0AF */  sw         $s0, 0x58($sp)
    /* A3408 800B4BF8 21808000 */  addu       $s0, $a0, $zero
    /* A340C 800B4BFC 6000B2AF */  sw         $s2, 0x60($sp)
    /* A3410 800B4C00 21900000 */  addu       $s2, $zero, $zero
    /* A3414 800B4C04 00010232 */  andi       $v0, $s0, 0x100
    /* A3418 800B4C08 6400BFAF */  sw         $ra, 0x64($sp)
    /* A341C 800B4C0C 04004010 */  beqz       $v0, .L800B4C20
    /* A3420 800B4C10 5C00B1AF */   sw        $s1, 0x5C($sp)
    /* A3424 800B4C14 FFFE0224 */  addiu      $v0, $zero, -0x101
    /* A3428 800B4C18 24800202 */  and        $s0, $s0, $v0
    /* A342C 800B4C1C 01001224 */  addiu      $s2, $zero, 0x1
  .L800B4C20:
    /* A3430 800B4C20 0A00022E */  sltiu      $v0, $s0, 0xA
    /* A3434 800B4C24 09004010 */  beqz       $v0, .L800B4C4C
    /* A3438 800B4C28 80101000 */   sll       $v0, $s0, 2
    /* A343C 800B4C2C 0C80033C */  lui        $v1, %hi(D_800C4340)
    /* A3440 800B4C30 40436324 */  addiu      $v1, $v1, %lo(D_800C4340)
    /* A3444 800B4C34 21884300 */  addu       $s1, $v0, $v1
    /* A3448 800B4C38 0000248E */  lw         $a0, 0x0($s1)
    /* A344C 800B4C3C E5CE020C */  jal        _SpuIsInAllocateArea_
    /* A3450 800B4C40 00000000 */   nop
    /* A3454 800B4C44 03004010 */  beqz       $v0, .L800B4C54
    /* A3458 800B4C48 1000A527 */   addiu     $a1, $sp, 0x10
  .L800B4C4C:
    /* A345C 800B4C4C 69D30208 */  j          .L800B4DA4
    /* A3460 800B4C50 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800B4C54:
    /* A3464 800B4C54 00111000 */  sll        $v0, $s0, 4
    /* A3468 800B4C58 21105000 */  addu       $v0, $v0, $s0
    /* A346C 800B4C5C 80100200 */  sll        $v0, $v0, 2
    /* A3470 800B4C60 0C80033C */  lui        $v1, %hi(D_800C4370)
    /* A3474 800B4C64 70436324 */  addiu      $v1, $v1, %lo(D_800C4370)
    /* A3478 800B4C68 21204300 */  addu       $a0, $v0, $v1
    /* A347C 800B4C6C 43000324 */  addiu      $v1, $zero, 0x43
    /* A3480 800B4C70 0C80013C */  lui        $at, %hi(D_800C3D54)
    /* A3484 800B4C74 543D30AC */  sw         $s0, %lo(D_800C3D54)($at)
    /* A3488 800B4C78 0000228E */  lw         $v0, 0x0($s1)
    /* A348C 800B4C7C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* A3490 800B4C80 0C80013C */  lui        $at, %hi(D_800C3D4C)
    /* A3494 800B4C84 4C3D22AC */  sw         $v0, %lo(D_800C3D4C)($at)
  .L800B4C88:
    /* A3498 800B4C88 00008290 */  lbu        $v0, 0x0($a0)
    /* A349C 800B4C8C 01008424 */  addiu      $a0, $a0, 0x1
    /* A34A0 800B4C90 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A34A4 800B4C94 0000A2A0 */  sb         $v0, 0x0($a1)
    /* A34A8 800B4C98 FBFF6614 */  bne        $v1, $a2, .L800B4C88
    /* A34AC 800B4C9C 0100A524 */   addiu     $a1, $a1, 0x1
    /* A34B0 800B4CA0 07000224 */  addiu      $v0, $zero, 0x7
    /* A34B4 800B4CA4 06000212 */  beq        $s0, $v0, .L800B4CC0
    /* A34B8 800B4CA8 1000A0AF */   sw        $zero, 0x10($sp)
    /* A34BC 800B4CAC 08000224 */  addiu      $v0, $zero, 0x8
    /* A34C0 800B4CB0 09000212 */  beq        $s0, $v0, .L800B4CD8
    /* A34C4 800B4CB4 7F000224 */   addiu     $v0, $zero, 0x7F
    /* A34C8 800B4CB8 3BD30208 */  j          .L800B4CEC
    /* A34CC 800B4CBC 00000000 */   nop
  .L800B4CC0:
    /* A34D0 800B4CC0 0C80033C */  lui        $v1, %hi(D_800C3D60)
    /* A34D4 800B4CC4 603D6324 */  addiu      $v1, $v1, %lo(D_800C3D60)
    /* A34D8 800B4CC8 7F000224 */  addiu      $v0, $zero, 0x7F
    /* A34DC 800B4CCC 000062AC */  sw         $v0, 0x0($v1)
    /* A34E0 800B4CD0 3FD30208 */  j          .L800B4CFC
    /* A34E4 800B4CD4 FCFF62AC */   sw        $v0, -0x4($v1)
  .L800B4CD8:
    /* A34E8 800B4CD8 0C80033C */  lui        $v1, %hi(D_800C3D60)
    /* A34EC 800B4CDC 603D6324 */  addiu      $v1, $v1, %lo(D_800C3D60)
    /* A34F0 800B4CE0 000060AC */  sw         $zero, 0x0($v1)
    /* A34F4 800B4CE4 3FD30208 */  j          .L800B4CFC
    /* A34F8 800B4CE8 FCFF62AC */   sw        $v0, -0x4($v1)
  .L800B4CEC:
    /* A34FC 800B4CEC 0C80023C */  lui        $v0, %hi(D_800C3D60)
    /* A3500 800B4CF0 603D4224 */  addiu      $v0, $v0, %lo(D_800C3D60)
    /* A3504 800B4CF4 000040AC */  sw         $zero, 0x0($v0)
    /* A3508 800B4CF8 FCFF40AC */  sw         $zero, -0x4($v0)
  .L800B4CFC:
    /* A350C 800B4CFC 0C80033C */  lui        $v1, %hi(D_800C3DB0)
    /* A3510 800B4D00 B03D638C */  lw         $v1, %lo(D_800C3DB0)($v1)
    /* A3514 800B4D04 00000000 */  nop
    /* A3518 800B4D08 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* A351C 800B4D0C 00000000 */  nop
    /* A3520 800B4D10 C2110200 */  srl        $v0, $v0, 7
    /* A3524 800B4D14 01004230 */  andi       $v0, $v0, 0x1
    /* A3528 800B4D18 05004010 */  beqz       $v0, .L800B4D30
    /* A352C 800B4D1C 21884000 */   addu      $s1, $v0, $zero
    /* A3530 800B4D20 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* A3534 800B4D24 00000000 */  nop
    /* A3538 800B4D28 7FFF4230 */  andi       $v0, $v0, 0xFF7F
    /* A353C 800B4D2C AA0162A4 */  sh         $v0, 0x1AA($v1)
  .L800B4D30:
    /* A3540 800B4D30 0C80023C */  lui        $v0, %hi(D_800C3DB0)
    /* A3544 800B4D34 B03D428C */  lw         $v0, %lo(D_800C3DB0)($v0)
    /* A3548 800B4D38 1000A427 */  addiu      $a0, $sp, 0x10
    /* A354C 800B4D3C 840140A4 */  sh         $zero, 0x184($v0)
    /* A3550 800B4D40 860140A4 */  sh         $zero, 0x186($v0)
    /* A3554 800B4D44 0C80023C */  lui        $v0, %hi(D_800C3D58)
    /* A3558 800B4D48 583D4224 */  addiu      $v0, $v0, %lo(D_800C3D58)
    /* A355C 800B4D4C 000040A4 */  sh         $zero, 0x0($v0)
    /* A3560 800B4D50 70D3020C */  jal        _spu_setReverbAttr
    /* A3564 800B4D54 020040A4 */   sh        $zero, 0x2($v0)
    /* A3568 800B4D58 04004012 */  beqz       $s2, .L800B4D6C
    /* A356C 800B4D5C D1000424 */   addiu     $a0, $zero, 0xD1
    /* A3570 800B4D60 C5CF020C */  jal        SpuClearReverbWorkArea
    /* A3574 800B4D64 21200002 */   addu      $a0, $s0, $zero
    /* A3578 800B4D68 D1000424 */  addiu      $a0, $zero, 0xD1
  .L800B4D6C:
    /* A357C 800B4D6C 0C80053C */  lui        $a1, %hi(D_800C3D4C)
    /* A3580 800B4D70 4C3DA58C */  lw         $a1, %lo(D_800C3D4C)($a1)
    /* A3584 800B4D74 07CE020C */  jal        func_800B381C
    /* A3588 800B4D78 21300000 */   addu      $a2, $zero, $zero
    /* A358C 800B4D7C 09002012 */  beqz       $s1, .L800B4DA4
    /* A3590 800B4D80 21100000 */   addu      $v0, $zero, $zero
    /* A3594 800B4D84 0C80033C */  lui        $v1, %hi(D_800C3DB0)
    /* A3598 800B4D88 B03D638C */  lw         $v1, %lo(D_800C3DB0)($v1)
    /* A359C 800B4D8C 00000000 */  nop
    /* A35A0 800B4D90 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* A35A4 800B4D94 00000000 */  nop
    /* A35A8 800B4D98 80004234 */  ori        $v0, $v0, 0x80
    /* A35AC 800B4D9C AA0162A4 */  sh         $v0, 0x1AA($v1)
    /* A35B0 800B4DA0 21100000 */  addu       $v0, $zero, $zero
  .L800B4DA4:
    /* A35B4 800B4DA4 6400BF8F */  lw         $ra, 0x64($sp)
    /* A35B8 800B4DA8 6000B28F */  lw         $s2, 0x60($sp)
    /* A35BC 800B4DAC 5C00B18F */  lw         $s1, 0x5C($sp)
    /* A35C0 800B4DB0 5800B08F */  lw         $s0, 0x58($sp)
    /* A35C4 800B4DB4 0800E003 */  jr         $ra
    /* A35C8 800B4DB8 6800BD27 */   addiu     $sp, $sp, 0x68
    /* A35CC 800B4DBC 00000000 */  nop
endlabel SpuSetReverbModeType
