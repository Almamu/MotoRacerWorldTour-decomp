nonmatching SpuSetTransferStartAddr, 0x60

glabel SpuSetTransferStartAddr
    /* A2AE4 800B42D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2AE8 800B42D8 21288000 */  addu       $a1, $a0, $zero
    /* A2AEC 800B42DC 0700023C */  lui        $v0, (0x7EFE8 >> 16)
    /* A2AF0 800B42E0 E8EF4234 */  ori        $v0, $v0, (0x7EFE8 & 0xFFFF)
    /* A2AF4 800B42E4 F0EFA324 */  addiu      $v1, $a1, -0x1010
    /* A2AF8 800B42E8 2B104300 */  sltu       $v0, $v0, $v1
    /* A2AFC 800B42EC 0B004014 */  bnez       $v0, .L800B431C
    /* A2B00 800B42F0 1000BFAF */   sw        $ra, 0x10($sp)
    /* A2B04 800B42F4 18CE020C */  jal        func_800B3860
    /* A2B08 800B42F8 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A2B0C 800B42FC 0C80013C */  lui        $at, %hi(D_800C3DC8)
    /* A2B10 800B4300 C83D22A4 */  sh         $v0, %lo(D_800C3DC8)($at)
    /* A2B14 800B4304 0C80033C */  lui        $v1, %hi(D_800C3DC8)
    /* A2B18 800B4308 C83D6394 */  lhu        $v1, %lo(D_800C3DC8)($v1)
    /* A2B1C 800B430C 0C80023C */  lui        $v0, %hi(D_800C3DD8)
    /* A2B20 800B4310 D83D428C */  lw         $v0, %lo(D_800C3DD8)($v0)
    /* A2B24 800B4314 C8D00208 */  j          .L800B4320
    /* A2B28 800B4318 04104300 */   sllv      $v0, $v1, $v0
  .L800B431C:
    /* A2B2C 800B431C 21100000 */  addu       $v0, $zero, $zero
  .L800B4320:
    /* A2B30 800B4320 1000BF8F */  lw         $ra, 0x10($sp)
    /* A2B34 800B4324 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2B38 800B4328 0800E003 */  jr         $ra
    /* A2B3C 800B432C 00000000 */   nop
    /* A2B40 800B4330 00000000 */  nop
endlabel SpuSetTransferStartAddr
