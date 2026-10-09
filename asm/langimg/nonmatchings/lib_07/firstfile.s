nonmatching firstfile, 0x19C

glabel firstfile
    /* A4480 800B5C70 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A4484 800B5C74 1800B2AF */  sw         $s2, 0x18($sp)
    /* A4488 800B5C78 21908000 */  addu       $s2, $a0, $zero
    /* A448C 800B5C7C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A4490 800B5C80 2198A000 */  addu       $s3, $a1, $zero
    /* A4494 800B5C84 2000BFAF */  sw         $ra, 0x20($sp)
    /* A4498 800B5C88 1400B1AF */  sw         $s1, 0x14($sp)
    /* A449C 800B5C8C 1000B0AF */  sw         $s0, 0x10($sp)
    /* A44A0 800B5C90 00004282 */  lb         $v0, 0x0($s2)
    /* A44A4 800B5C94 0E80043C */  lui        $a0, %hi(D_800DE728)
    /* A44A8 800B5C98 28E78424 */  addiu      $a0, $a0, %lo(D_800DE728)
    /* A44AC 800B5C9C 3B004228 */  slti       $v0, $v0, 0x3B
    /* A44B0 800B5CA0 09004014 */  bnez       $v0, .L800B5CC8
    /* A44B4 800B5CA4 21184002 */   addu      $v1, $s2, $zero
  .L800B5CA8:
    /* A44B8 800B5CA8 00006290 */  lbu        $v0, 0x0($v1)
    /* A44BC 800B5CAC 01006324 */  addiu      $v1, $v1, 0x1
    /* A44C0 800B5CB0 000082A0 */  sb         $v0, 0x0($a0)
    /* A44C4 800B5CB4 00006280 */  lb         $v0, 0x0($v1)
    /* A44C8 800B5CB8 00000000 */  nop
    /* A44CC 800B5CBC 3B004228 */  slti       $v0, $v0, 0x3B
    /* A44D0 800B5CC0 F9FF4010 */  beqz       $v0, .L800B5CA8
    /* A44D4 800B5CC4 01008424 */   addiu     $a0, $a0, 0x1
  .L800B5CC8:
    /* A44D8 800B5CC8 000080A0 */  sb         $zero, 0x0($a0)
    /* A44DC 800B5CCC 5401038C */  lw         $v1, 0x154($zero)
    /* A44E0 800B5CD0 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* A44E4 800B5CD4 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* A44E8 800B5CD8 19006200 */  multu      $v1, $v0
    /* A44EC 800B5CDC 5001108C */  lw         $s0, 0x150($zero)
    /* A44F0 800B5CE0 10300000 */  mfhi       $a2
    /* A44F4 800B5CE4 82190600 */  srl        $v1, $a2, 6
    /* A44F8 800B5CE8 80100300 */  sll        $v0, $v1, 2
    /* A44FC 800B5CEC 21104300 */  addu       $v0, $v0, $v1
    /* A4500 800B5CF0 00110200 */  sll        $v0, $v0, 4
    /* A4504 800B5CF4 21180202 */  addu       $v1, $s0, $v0
    /* A4508 800B5CF8 2B100302 */  sltu       $v0, $s0, $v1
    /* A450C 800B5CFC 0F004010 */  beqz       $v0, .L800B5D3C
    /* A4510 800B5D00 00000000 */   nop
    /* A4514 800B5D04 21886000 */  addu       $s1, $v1, $zero
  .L800B5D08:
    /* A4518 800B5D08 0000048E */  lw         $a0, 0x0($s0)
    /* A451C 800B5D0C 00000000 */  nop
    /* A4520 800B5D10 06008010 */  beqz       $a0, .L800B5D2C
    /* A4524 800B5D14 00000000 */   nop
    /* A4528 800B5D18 0E80053C */  lui        $a1, %hi(D_800DE728)
    /* A452C 800B5D1C FED8020C */  jal        strcmp
    /* A4530 800B5D20 28E7A524 */   addiu     $a1, $a1, %lo(D_800DE728)
    /* A4534 800B5D24 0A004010 */  beqz       $v0, .L800B5D50
    /* A4538 800B5D28 00000000 */   nop
  .L800B5D2C:
    /* A453C 800B5D2C 50001026 */  addiu      $s0, $s0, 0x50
    /* A4540 800B5D30 2B101102 */  sltu       $v0, $s0, $s1
    /* A4544 800B5D34 F4FF4014 */  bnez       $v0, .L800B5D08
    /* A4548 800B5D38 00000000 */   nop
  .L800B5D3C:
    /* A454C 800B5D3C 21180000 */  addu       $v1, $zero, $zero
  .L800B5D40:
    /* A4550 800B5D40 0C006014 */  bnez       $v1, .L800B5D74
    /* A4554 800B5D44 21100000 */   addu      $v0, $zero, $zero
    /* A4558 800B5D48 7CD70208 */  j          .L800B5DF0
    /* A455C 800B5D4C 00000000 */   nop
  .L800B5D50:
    /* A4560 800B5D50 3400028E */  lw         $v0, 0x34($s0)
    /* A4564 800B5D54 0E80013C */  lui        $at, %hi(D_800DE720)
    /* A4568 800B5D58 20E722AC */  sw         $v0, %lo(D_800DE720)($at)
    /* A456C 800B5D5C 50D70208 */  j          .L800B5D40
    /* A4570 800B5D60 01000324 */   addiu     $v1, $zero, 0x1
  .L800B5D64:
    /* A4574 800B5D64 0B80023C */  lui        $v0, %hi(func_800B5E0C)
    /* A4578 800B5D68 0C5E4224 */  addiu      $v0, $v0, %lo(func_800B5E0C)
    /* A457C 800B5D6C 79D70208 */  j          .L800B5DE4
    /* A4580 800B5D70 340002AE */   sw        $v0, 0x34($s0)
  .L800B5D74:
    /* A4584 800B5D74 5401038C */  lw         $v1, 0x154($zero)
    /* A4588 800B5D78 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* A458C 800B5D7C CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* A4590 800B5D80 19006200 */  multu      $v1, $v0
    /* A4594 800B5D84 5001108C */  lw         $s0, 0x150($zero)
    /* A4598 800B5D88 10300000 */  mfhi       $a2
    /* A459C 800B5D8C 82190600 */  srl        $v1, $a2, 6
    /* A45A0 800B5D90 80100300 */  sll        $v0, $v1, 2
    /* A45A4 800B5D94 21104300 */  addu       $v0, $v0, $v1
    /* A45A8 800B5D98 00110200 */  sll        $v0, $v0, 4
    /* A45AC 800B5D9C 21180202 */  addu       $v1, $s0, $v0
    /* A45B0 800B5DA0 2B100302 */  sltu       $v0, $s0, $v1
    /* A45B4 800B5DA4 10004010 */  beqz       $v0, .L800B5DE8
    /* A45B8 800B5DA8 21204002 */   addu      $a0, $s2, $zero
    /* A45BC 800B5DAC 21886000 */  addu       $s1, $v1, $zero
  .L800B5DB0:
    /* A45C0 800B5DB0 0000048E */  lw         $a0, 0x0($s0)
    /* A45C4 800B5DB4 00000000 */  nop
    /* A45C8 800B5DB8 06008010 */  beqz       $a0, .L800B5DD4
    /* A45CC 800B5DBC 00000000 */   nop
    /* A45D0 800B5DC0 0E80053C */  lui        $a1, %hi(D_800DE728)
    /* A45D4 800B5DC4 FED8020C */  jal        strcmp
    /* A45D8 800B5DC8 28E7A524 */   addiu     $a1, $a1, %lo(D_800DE728)
    /* A45DC 800B5DCC E5FF4010 */  beqz       $v0, .L800B5D64
    /* A45E0 800B5DD0 00000000 */   nop
  .L800B5DD4:
    /* A45E4 800B5DD4 50001026 */  addiu      $s0, $s0, 0x50
    /* A45E8 800B5DD8 2B101102 */  sltu       $v0, $s0, $s1
    /* A45EC 800B5DDC F4FF4014 */  bnez       $v0, .L800B5DB0
    /* A45F0 800B5DE0 00000000 */   nop
  .L800B5DE4:
    /* A45F4 800B5DE4 21204002 */  addu       $a0, $s2, $zero
  .L800B5DE8:
    /* A45F8 800B5DE8 C4D7020C */  jal        func_800B5F10
    /* A45FC 800B5DEC 21286002 */   addu      $a1, $s3, $zero
  .L800B5DF0:
    /* A4600 800B5DF0 2000BF8F */  lw         $ra, 0x20($sp)
    /* A4604 800B5DF4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A4608 800B5DF8 1800B28F */  lw         $s2, 0x18($sp)
    /* A460C 800B5DFC 1400B18F */  lw         $s1, 0x14($sp)
    /* A4610 800B5E00 1000B08F */  lw         $s0, 0x10($sp)
    /* A4614 800B5E04 0800E003 */  jr         $ra
    /* A4618 800B5E08 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel firstfile
