/* Handwritten function */
nonmatching func_80020AE4, 0x164

glabel func_80020AE4
    /* F2F4 80020AE4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* F2F8 80020AE8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* F2FC 80020AEC 2198A000 */  addu       $s3, $a1, $zero
    /* F300 80020AF0 1000B0AF */  sw         $s0, 0x10($sp)
    /* F304 80020AF4 21808000 */  addu       $s0, $a0, $zero
    /* F308 80020AF8 1800B2AF */  sw         $s2, 0x18($sp)
    /* F30C 80020AFC 04001226 */  addiu      $s2, $s0, 0x4
    /* F310 80020B00 1400B1AF */  sw         $s1, 0x14($sp)
    /* F314 80020B04 C8001124 */  addiu      $s1, $zero, 0xC8
    /* F318 80020B08 2000B4AF */  sw         $s4, 0x20($sp)
    /* F31C 80020B0C 0D80143C */  lui        $s4, %hi(D_800CA7D8)
    /* F320 80020B10 D8A79426 */  addiu      $s4, $s4, %lo(D_800CA7D8)
    /* F324 80020B14 21208002 */  addu       $a0, $s4, $zero
    /* F328 80020B18 21280000 */  addu       $a1, $zero, $zero
    /* F32C 80020B1C 3400BFAF */  sw         $ra, 0x34($sp)
    /* F330 80020B20 3000BEAF */  sw         $fp, 0x30($sp)
    /* F334 80020B24 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* F338 80020B28 2800B6AF */  sw         $s6, 0x28($sp)
    /* F33C 80020B2C 2400B5AF */  sw         $s5, 0x24($sp)
    /* F340 80020B30 5C01838E */  lw         $v1, 0x15C($s4)
    /* F344 80020B34 0D80023C */  lui        $v0, %hi(D_800C8864)
    /* F348 80020B38 6488428C */  lw         $v0, %lo(D_800C8864)($v0)
    /* F34C 80020B3C 00000000 */  nop
    /* F350 80020B40 F800578C */  lw         $s7, 0xF8($v0)
    /* F354 80020B44 FC00568C */  lw         $s6, 0xFC($v0)
    /* F358 80020B48 0001558C */  lw         $s5, 0x100($v0)
    /* F35C 80020B4C F677000C */  jal        func_8001DFD8
    /* F360 80020B50 03F20300 */   sra       $fp, $v1, 8
    /* F364 80020B54 00830824 */  addiu      $t0, $zero, -0x7D00
    /* F368 80020B58 0C000726 */  addiu      $a3, $s0, 0xC
    /* F36C 80020B5C 08001026 */  addiu      $s0, $s0, 0x8
  .L80020B60:
    /* F370 80020B60 12000286 */  lh         $v0, 0x12($s0)
    /* F374 80020B64 00000000 */  nop
    /* F378 80020B68 22004810 */  beq        $v0, $t0, .L80020BF4
    /* F37C 80020B6C 21180000 */   addu      $v1, $zero, $zero
    /* F380 80020B70 0800068E */  lw         $a2, 0x8($s0)
    /* F384 80020B74 0000438E */  lw         $v1, 0x0($s2)
    /* F388 80020B78 0000048E */  lw         $a0, 0x0($s0)
    /* F38C 80020B7C 0000E58C */  lw         $a1, 0x0($a3)
    /* F390 80020B80 23187700 */  subu       $v1, $v1, $s7
    /* F394 80020B84 23209600 */  subu       $a0, $a0, $s6
    /* F398 80020B88 2328B500 */  subu       $a1, $a1, $s5
    /* F39C 80020B8C 43100600 */  sra        $v0, $a2, 1
    /* F3A0 80020B90 2130C200 */  addu       $a2, $a2, $v0
    /* F3A4 80020B94 03320600 */  sra        $a2, $a2, 8
    /* F3A8 80020B98 03120300 */  sra        $v0, $v1, 8
    /* F3AC 80020B9C 031A0400 */  sra        $v1, $a0, 8
    /* F3B0 80020BA0 032A0500 */  sra        $a1, $a1, 8
    /* F3B4 80020BA4 00488248 */  mtc2       $v0, $9 /* handwritten instruction */
    /* F3B8 80020BA8 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
    /* F3BC 80020BAC 00588548 */  mtc2       $a1, $11 /* handwritten instruction */
    /* F3C0 80020BB0 00000000 */  nop
    /* F3C4 80020BB4 00000000 */  nop
    /* F3C8 80020BB8 12E04B4A */  mvmva      1, 1, 3, 3, 0
    /* F3CC 80020BBC 00C80248 */  mfc2       $v0, $25 /* handwritten instruction */
    /* F3D0 80020BC0 00D00348 */  mfc2       $v1, $26 /* handwritten instruction */
    /* F3D4 80020BC4 00D80548 */  mfc2       $a1, $27 /* handwritten instruction */
    /* F3D8 80020BC8 2A104600 */  slt        $v0, $v0, $a2
    /* F3DC 80020BCC 08004010 */  beqz       $v0, .L80020BF0
    /* F3E0 80020BD0 21200000 */   addu      $a0, $zero, $zero
    /* F3E4 80020BD4 2A106600 */  slt        $v0, $v1, $a2
    /* F3E8 80020BD8 05004010 */  beqz       $v0, .L80020BF0
    /* F3EC 80020BDC 2A10A600 */   slt       $v0, $a1, $a2
    /* F3F0 80020BE0 03004010 */  beqz       $v0, .L80020BF0
    /* F3F4 80020BE4 23180300 */   negu      $v1, $v1
    /* F3F8 80020BE8 2110C603 */  addu       $v0, $fp, $a2
    /* F3FC 80020BEC 2A206200 */  slt        $a0, $v1, $v0
  .L80020BF0:
    /* F400 80020BF0 21188000 */  addu       $v1, $a0, $zero
  .L80020BF4:
    /* F404 80020BF4 000063A2 */  sb         $v1, 0x0($s3)
    /* F408 80020BF8 18001026 */  addiu      $s0, $s0, 0x18
    /* F40C 80020BFC 1800E724 */  addiu      $a3, $a3, 0x18
    /* F410 80020C00 18005226 */  addiu      $s2, $s2, 0x18
    /* F414 80020C04 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* F418 80020C08 D5FF2016 */  bnez       $s1, .L80020B60
    /* F41C 80020C0C 01007326 */   addiu     $s3, $s3, 0x1
    /* F420 80020C10 4478000C */  jal        func_8001E110
    /* F424 80020C14 21208002 */   addu      $a0, $s4, $zero
    /* F428 80020C18 3400BF8F */  lw         $ra, 0x34($sp)
    /* F42C 80020C1C 3000BE8F */  lw         $fp, 0x30($sp)
    /* F430 80020C20 2C00B78F */  lw         $s7, 0x2C($sp)
    /* F434 80020C24 2800B68F */  lw         $s6, 0x28($sp)
    /* F438 80020C28 2400B58F */  lw         $s5, 0x24($sp)
    /* F43C 80020C2C 2000B48F */  lw         $s4, 0x20($sp)
    /* F440 80020C30 1C00B38F */  lw         $s3, 0x1C($sp)
    /* F444 80020C34 1800B28F */  lw         $s2, 0x18($sp)
    /* F448 80020C38 1400B18F */  lw         $s1, 0x14($sp)
    /* F44C 80020C3C 1000B08F */  lw         $s0, 0x10($sp)
    /* F450 80020C40 0800E003 */  jr         $ra
    /* F454 80020C44 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_80020AE4
