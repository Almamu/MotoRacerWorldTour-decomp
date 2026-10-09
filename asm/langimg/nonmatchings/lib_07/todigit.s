nonmatching todigit, 0x70

glabel todigit
    /* A4DF8 800B65E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A4DFC 800B65EC FF008230 */  andi       $v0, $a0, 0xFF
    /* A4E00 800B65F0 1000BFAF */  sw         $ra, 0x10($sp)
    /* A4E04 800B65F4 0C80033C */  lui        $v1, %hi(D_800C4631)
    /* A4E08 800B65F8 21186200 */  addu       $v1, $v1, $v0
    /* A4E0C 800B65FC 31466390 */  lbu        $v1, %lo(D_800C4631)($v1)
    /* A4E10 800B6600 00000000 */  nop
    /* A4E14 800B6604 04006230 */  andi       $v0, $v1, 0x4
    /* A4E18 800B6608 04004010 */  beqz       $v0, .L800B661C
    /* A4E1C 800B660C 00160400 */   sll       $v0, $a0, 24
    /* A4E20 800B6610 03160200 */  sra        $v0, $v0, 24
    /* A4E24 800B6614 92D90208 */  j          .L800B6648
    /* A4E28 800B6618 D0FF4224 */   addiu     $v0, $v0, -0x30
  .L800B661C:
    /* A4E2C 800B661C 03006230 */  andi       $v0, $v1, 0x3
    /* A4E30 800B6620 07004010 */  beqz       $v0, .L800B6640
    /* A4E34 800B6624 00260400 */   sll       $a0, $a0, 24
    /* A4E38 800B6628 23D8020C */  jal        func_800B608C
    /* A4E3C 800B662C 03260400 */   sra       $a0, $a0, 24
    /* A4E40 800B6630 00160200 */  sll        $v0, $v0, 24
    /* A4E44 800B6634 03160200 */  sra        $v0, $v0, 24
    /* A4E48 800B6638 92D90208 */  j          .L800B6648
    /* A4E4C 800B663C A9FF4224 */   addiu     $v0, $v0, -0x57
  .L800B6640:
    /* A4E50 800B6640 9800023C */  lui        $v0, (0x98967F >> 16)
    /* A4E54 800B6644 7F964234 */  ori        $v0, $v0, (0x98967F & 0xFFFF)
  .L800B6648:
    /* A4E58 800B6648 1000BF8F */  lw         $ra, 0x10($sp)
    /* A4E5C 800B664C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A4E60 800B6650 0800E003 */  jr         $ra
    /* A4E64 800B6654 00000000 */   nop
endlabel todigit
