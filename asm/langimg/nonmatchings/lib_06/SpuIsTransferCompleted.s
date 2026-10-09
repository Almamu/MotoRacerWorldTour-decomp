nonmatching SpuIsTransferCompleted, 0xB0

glabel SpuIsTransferCompleted
    /* A2B74 800B4364 0C80023C */  lui        $v0, %hi(D_800C3D40)
    /* A2B78 800B4368 403D428C */  lw         $v0, %lo(D_800C3D40)($v0)
    /* A2B7C 800B436C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A2B80 800B4370 1400B1AF */  sw         $s1, 0x14($sp)
    /* A2B84 800B4374 21888000 */  addu       $s1, $a0, $zero
    /* A2B88 800B4378 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2B8C 800B437C 01001024 */  addiu      $s0, $zero, 0x1
    /* A2B90 800B4380 06005010 */  beq        $v0, $s0, .L800B439C
    /* A2B94 800B4384 1800BFAF */   sw        $ra, 0x18($sp)
    /* A2B98 800B4388 0C80023C */  lui        $v0, %hi(D_800C3DE4)
    /* A2B9C 800B438C E43D428C */  lw         $v0, %lo(D_800C3DE4)($v0)
    /* A2BA0 800B4390 00000000 */  nop
    /* A2BA4 800B4394 03005014 */  bne        $v0, $s0, .L800B43A4
    /* A2BA8 800B4398 00000000 */   nop
  .L800B439C:
    /* A2BAC 800B439C FDD00208 */  j          .L800B43F4
    /* A2BB0 800B43A0 01000224 */   addiu     $v0, $zero, 0x1
  .L800B43A4:
    /* A2BB4 800B43A4 0C80043C */  lui        $a0, %hi(D_800C3D38)
    /* A2BB8 800B43A8 383D848C */  lw         $a0, %lo(D_800C3D38)($a0)
    /* A2BBC 800B43AC C8D6020C */  jal        TestEvent
    /* A2BC0 800B43B0 00000000 */   nop
    /* A2BC4 800B43B4 0B003016 */  bne        $s1, $s0, .L800B43E4
    /* A2BC8 800B43B8 00000000 */   nop
    /* A2BCC 800B43BC 0B004014 */  bnez       $v0, .L800B43EC
    /* A2BD0 800B43C0 01000224 */   addiu     $v0, $zero, 0x1
  .L800B43C4:
    /* A2BD4 800B43C4 0C80043C */  lui        $a0, %hi(D_800C3D38)
    /* A2BD8 800B43C8 383D848C */  lw         $a0, %lo(D_800C3D38)($a0)
    /* A2BDC 800B43CC C8D6020C */  jal        TestEvent
    /* A2BE0 800B43D0 00000000 */   nop
    /* A2BE4 800B43D4 FBFF4010 */  beqz       $v0, .L800B43C4
    /* A2BE8 800B43D8 01000224 */   addiu     $v0, $zero, 0x1
    /* A2BEC 800B43DC FBD00208 */  j          .L800B43EC
    /* A2BF0 800B43E0 00000000 */   nop
  .L800B43E4:
    /* A2BF4 800B43E4 03005014 */  bne        $v0, $s0, .L800B43F4
    /* A2BF8 800B43E8 00000000 */   nop
  .L800B43EC:
    /* A2BFC 800B43EC 0C80013C */  lui        $at, %hi(D_800C3DE4)
    /* A2C00 800B43F0 E43D22AC */  sw         $v0, %lo(D_800C3DE4)($at)
  .L800B43F4:
    /* A2C04 800B43F4 1800BF8F */  lw         $ra, 0x18($sp)
    /* A2C08 800B43F8 1400B18F */  lw         $s1, 0x14($sp)
    /* A2C0C 800B43FC 1000B08F */  lw         $s0, 0x10($sp)
    /* A2C10 800B4400 0800E003 */  jr         $ra
    /* A2C14 800B4404 2000BD27 */   addiu     $sp, $sp, 0x20
    /* A2C18 800B4408 00000000 */  nop
    /* A2C1C 800B440C 00000000 */  nop
    /* A2C20 800B4410 00000000 */  nop
endlabel SpuIsTransferCompleted
