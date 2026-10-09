nonmatching SpuClearReverbWorkArea, 0x1A0

glabel SpuClearReverbWorkArea
    /* 10054 80142B88 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 10058 80142B8C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1005C 80142B90 21808000 */  addu       $s0, $a0, $zero
    /* 10060 80142B94 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 10064 80142B98 0A00022E */  sltiu      $v0, $s0, 0xA
    /* 10068 80142B9C 3000BFAF */  sw         $ra, 0x30($sp)
    /* 1006C 80142BA0 2800B4AF */  sw         $s4, 0x28($sp)
    /* 10070 80142BA4 2400B3AF */  sw         $s3, 0x24($sp)
    /* 10074 80142BA8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 10078 80142BAC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1007C 80142BB0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 10080 80142BB4 0A004010 */  beqz       $v0, .L80142BE0
    /* 10084 80142BB8 21A80000 */   addu      $s5, $zero, $zero
    /* 10088 80142BBC 1C80033C */  lui        $v1, %hi(D_801C0404)
    /* 1008C 80142BC0 04046324 */  addiu      $v1, $v1, %lo(D_801C0404)
    /* 10090 80142BC4 80101000 */  sll        $v0, $s0, 2
    /* 10094 80142BC8 21884300 */  addu       $s1, $v0, $v1
    /* 10098 80142BCC 0000248E */  lw         $a0, 0x0($s1)
    /* 1009C 80142BD0 2C0E050C */  jal        _SpuIsInAllocateArea_
    /* 100A0 80142BD4 00000000 */   nop
    /* 100A4 80142BD8 03004010 */  beqz       $v0, .L80142BE8
    /* 100A8 80142BDC 00000000 */   nop
  .L80142BE0:
    /* 100AC 80142BE0 3E0B0508 */  j          .L80142CF8
    /* 100B0 80142BE4 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L80142BE8:
    /* 100B4 80142BE8 08000016 */  bnez       $s0, .L80142C0C
    /* 100B8 80142BEC 0100023C */   lui       $v0, (0x10000 >> 16)
    /* 100BC 80142BF0 1C80023C */  lui        $v0, %hi(D_801BFF3C)
    /* 100C0 80142BF4 3CFF428C */  lw         $v0, %lo(D_801BFF3C)($v0)
    /* 100C4 80142BF8 10000324 */  addiu      $v1, $zero, 0x10
    /* 100C8 80142BFC 04884300 */  sllv       $s1, $v1, $v0
    /* 100CC 80142C00 F0FF0334 */  ori        $v1, $zero, 0xFFF0
    /* 100D0 80142C04 090B0508 */  j          .L80142C24
    /* 100D4 80142C08 04904300 */   sllv      $s2, $v1, $v0
  .L80142C0C:
    /* 100D8 80142C0C 0000248E */  lw         $a0, 0x0($s1)
    /* 100DC 80142C10 1C80033C */  lui        $v1, %hi(D_801BFF3C)
    /* 100E0 80142C14 3CFF638C */  lw         $v1, %lo(D_801BFF3C)($v1)
    /* 100E4 80142C18 23104400 */  subu       $v0, $v0, $a0
    /* 100E8 80142C1C 04886200 */  sllv       $s1, $v0, $v1
    /* 100EC 80142C20 04906400 */  sllv       $s2, $a0, $v1
  .L80142C24:
    /* 100F0 80142C24 1C80143C */  lui        $s4, %hi(D_801BFF30)
    /* 100F4 80142C28 30FF948E */  lw         $s4, %lo(D_801BFF30)($s4)
    /* 100F8 80142C2C 01000224 */  addiu      $v0, $zero, 0x1
    /* 100FC 80142C30 04008216 */  bne        $s4, $v0, .L80142C44
    /* 10100 80142C34 00000000 */   nop
    /* 10104 80142C38 1C80013C */  lui        $at, %hi(D_801BFF30)
    /* 10108 80142C3C 30FF20AC */  sw         $zero, %lo(D_801BFF30)($at)
    /* 1010C 80142C40 01001524 */  addiu      $s5, $zero, 0x1
  .L80142C44:
    /* 10110 80142C44 1C80023C */  lui        $v0, %hi(D_801BFF4C)
    /* 10114 80142C48 4CFF428C */  lw         $v0, %lo(D_801BFF4C)($v0)
    /* 10118 80142C4C 00000000 */  nop
    /* 1011C 80142C50 07004010 */  beqz       $v0, .L80142C70
    /* 10120 80142C54 01001324 */   addiu     $s3, $zero, 0x1
    /* 10124 80142C58 1C80023C */  lui        $v0, %hi(D_801BFF4C)
    /* 10128 80142C5C 4CFF428C */  lw         $v0, %lo(D_801BFF4C)($v0)
    /* 1012C 80142C60 00000000 */  nop
    /* 10130 80142C64 1000A2AF */  sw         $v0, 0x10($sp)
    /* 10134 80142C68 1C80013C */  lui        $at, %hi(D_801BFF4C)
    /* 10138 80142C6C 4CFF20AC */  sw         $zero, %lo(D_801BFF4C)($at)
  .L80142C70:
    /* 1013C 80142C70 0104222E */  sltiu      $v0, $s1, 0x401
  .L80142C74:
    /* 10140 80142C74 03004010 */  beqz       $v0, .L80142C84
    /* 10144 80142C78 00041024 */   addiu     $s0, $zero, 0x400
    /* 10148 80142C7C 21802002 */  addu       $s0, $s1, $zero
    /* 1014C 80142C80 21980000 */  addu       $s3, $zero, $zero
  .L80142C84:
    /* 10150 80142C84 02000424 */  addiu      $a0, $zero, 0x2
    /* 10154 80142C88 890C050C */  jal        _spu_t
    /* 10158 80142C8C 21284002 */   addu      $a1, $s2, $zero
    /* 1015C 80142C90 890C050C */  jal        _spu_t
    /* 10160 80142C94 01000424 */   addiu     $a0, $zero, 0x1
    /* 10164 80142C98 03000424 */  addiu      $a0, $zero, 0x3
    /* 10168 80142C9C 1C80053C */  lui        $a1, %hi(D_801C0004)
    /* 1016C 80142CA0 0400A524 */  addiu      $a1, $a1, %lo(D_801C0004)
    /* 10170 80142CA4 890C050C */  jal        _spu_t
    /* 10174 80142CA8 21300002 */   addu      $a2, $s0, $zero
    /* 10178 80142CAC 1C80043C */  lui        $a0, %hi(D_801BFF7C)
    /* 1017C 80142CB0 7CFF848C */  lw         $a0, %lo(D_801BFF7C)($a0)
    /* 10180 80142CB4 00FC3126 */  addiu      $s1, $s1, -0x400
    /* 10184 80142CB8 E32A050C */  jal        WaitEvent
    /* 10188 80142CBC 00045226 */   addiu     $s2, $s2, 0x400
    /* 1018C 80142CC0 ECFF6016 */  bnez       $s3, .L80142C74
    /* 10190 80142CC4 0104222E */   sltiu     $v0, $s1, 0x401
    /* 10194 80142CC8 0300A012 */  beqz       $s5, .L80142CD8
    /* 10198 80142CCC 00000000 */   nop
    /* 1019C 80142CD0 1C80013C */  lui        $at, %hi(D_801BFF30)
    /* 101A0 80142CD4 30FF34AC */  sw         $s4, %lo(D_801BFF30)($at)
  .L80142CD8:
    /* 101A4 80142CD8 1000A28F */  lw         $v0, 0x10($sp)
    /* 101A8 80142CDC 00000000 */  nop
    /* 101AC 80142CE0 05004010 */  beqz       $v0, .L80142CF8
    /* 101B0 80142CE4 21100000 */   addu      $v0, $zero, $zero
    /* 101B4 80142CE8 1000A28F */  lw         $v0, 0x10($sp)
    /* 101B8 80142CEC 1C80013C */  lui        $at, %hi(D_801BFF4C)
    /* 101BC 80142CF0 4CFF22AC */  sw         $v0, %lo(D_801BFF4C)($at)
    /* 101C0 80142CF4 21100000 */  addu       $v0, $zero, $zero
  .L80142CF8:
    /* 101C4 80142CF8 3000BF8F */  lw         $ra, 0x30($sp)
    /* 101C8 80142CFC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 101CC 80142D00 2800B48F */  lw         $s4, 0x28($sp)
    /* 101D0 80142D04 2400B38F */  lw         $s3, 0x24($sp)
    /* 101D4 80142D08 2000B28F */  lw         $s2, 0x20($sp)
    /* 101D8 80142D0C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 101DC 80142D10 1800B08F */  lw         $s0, 0x18($sp)
    /* 101E0 80142D14 0800E003 */  jr         $ra
    /* 101E4 80142D18 3800BD27 */   addiu     $sp, $sp, 0x38
    /* 101E8 80142D1C 00000000 */  nop
    /* 101EC 80142D20 00000000 */  nop
    /* 101F0 80142D24 00000000 */  nop
endlabel SpuClearReverbWorkArea
