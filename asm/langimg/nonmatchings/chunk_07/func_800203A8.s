nonmatching func_800203A8, 0x494

glabel func_800203A8
    /* EBB8 800203A8 E0FEBD27 */  addiu      $sp, $sp, -0x120
    /* EBBC 800203AC 1001B6AF */  sw         $s6, 0x110($sp)
    /* EBC0 800203B0 21B08000 */  addu       $s6, $a0, $zero
    /* EBC4 800203B4 2120A000 */  addu       $a0, $a1, $zero
    /* EBC8 800203B8 0C01B5AF */  sw         $s5, 0x10C($sp)
    /* EBCC 800203BC 1000B527 */  addiu      $s5, $sp, 0x10
    /* EBD0 800203C0 2128A002 */  addu       $a1, $s5, $zero
    /* EBD4 800203C4 F800B0AF */  sw         $s0, 0xF8($sp)
    /* EBD8 800203C8 2180C000 */  addu       $s0, $a2, $zero
    /* EBDC 800203CC 2130A002 */  addu       $a2, $s5, $zero
    /* EBE0 800203D0 23100700 */  negu       $v0, $a3
    /* EBE4 800203D4 C21F0200 */  srl        $v1, $v0, 31
    /* EBE8 800203D8 21104300 */  addu       $v0, $v0, $v1
    /* EBEC 800203DC 43100200 */  sra        $v0, $v0, 1
    /* EBF0 800203E0 1000A2AF */  sw         $v0, 0x10($sp)
    /* EBF4 800203E4 C2170700 */  srl        $v0, $a3, 31
    /* EBF8 800203E8 2138E200 */  addu       $a3, $a3, $v0
    /* EBFC 800203EC 1C01BFAF */  sw         $ra, 0x11C($sp)
    /* EC00 800203F0 1801BEAF */  sw         $fp, 0x118($sp)
    /* EC04 800203F4 1401B7AF */  sw         $s7, 0x114($sp)
    /* EC08 800203F8 0801B4AF */  sw         $s4, 0x108($sp)
    /* EC0C 800203FC 0401B3AF */  sw         $s3, 0x104($sp)
    /* EC10 80020400 0001B2AF */  sw         $s2, 0x100($sp)
    /* EC14 80020404 FC00B1AF */  sw         $s1, 0xFC($sp)
    /* EC18 80020408 0400A0AE */  sw         $zero, 0x4($s5)
    /* EC1C 8002040C 0800A0AE */  sw         $zero, 0x8($s5)
    /* EC20 80020410 3001B28F */  lw         $s2, 0x130($sp)
    /* EC24 80020414 43380700 */  sra        $a3, $a3, 1
    /* EC28 80020418 2000A7AF */  sw         $a3, 0x20($sp)
    /* EC2C 8002041C 2400A0AF */  sw         $zero, 0x24($sp)
    /* EC30 80020420 DA61020C */  jal        func_80098768
    /* EC34 80020424 2800A0AF */   sw        $zero, 0x28($sp)
    /* EC38 80020428 2000A427 */  addiu      $a0, $sp, 0x20
    /* EC3C 8002042C 1F62020C */  jal        func_8009887C
    /* EC40 80020430 21288000 */   addu      $a1, $a0, $zero
    /* EC44 80020434 2120A002 */  addu       $a0, $s5, $zero
    /* EC48 80020438 F465020C */  jal        func_800997D0
    /* EC4C 8002043C 21280002 */   addu      $a1, $s0, $zero
    /* EC50 80020440 2000B427 */  addiu      $s4, $sp, 0x20
    /* EC54 80020444 21208002 */  addu       $a0, $s4, $zero
    /* EC58 80020448 F465020C */  jal        func_800997D0
    /* EC5C 8002044C 21280002 */   addu      $a1, $s0, $zero
    /* EC60 80020450 7000B327 */  addiu      $s3, $sp, 0x70
    /* EC64 80020454 21206002 */  addu       $a0, $s3, $zero
    /* EC68 80020458 21288002 */  addu       $a1, $s4, $zero
    /* EC6C 8002045C 3466020C */  jal        func_800998D0
    /* EC70 80020460 2130A002 */   addu      $a2, $s5, $zero
    /* EC74 80020464 21206002 */  addu       $a0, $s3, $zero
    /* EC78 80020468 2128A002 */  addu       $a1, $s5, $zero
    /* EC7C 8002046C 7000A28F */  lw         $v0, 0x70($sp)
    /* EC80 80020470 7400A38F */  lw         $v1, 0x74($sp)
    /* EC84 80020474 7800A78F */  lw         $a3, 0x78($sp)
    /* EC88 80020478 0C000624 */  addiu      $a2, $zero, 0xC
    /* EC8C 8002047C 3000A2AF */  sw         $v0, 0x30($sp)
    /* EC90 80020480 3400A3AF */  sw         $v1, 0x34($sp)
    /* EC94 80020484 7367020C */  jal        func_80099DCC
    /* EC98 80020488 3800A7AF */   sw        $a3, 0x38($sp)
    /* EC9C 8002048C 21206002 */  addu       $a0, $s3, $zero
    /* ECA0 80020490 5000AE27 */  addiu      $t6, $sp, 0x50
    /* ECA4 80020494 2128C001 */  addu       $a1, $t6, $zero
    /* ECA8 80020498 7000A28F */  lw         $v0, 0x70($sp)
    /* ECAC 8002049C 7400A38F */  lw         $v1, 0x74($sp)
    /* ECB0 800204A0 7800A78F */  lw         $a3, 0x78($sp)
    /* ECB4 800204A4 0C000624 */  addiu      $a2, $zero, 0xC
    /* ECB8 800204A8 F000AEAF */  sw         $t6, 0xF0($sp)
    /* ECBC 800204AC 5000A2AF */  sw         $v0, 0x50($sp)
    /* ECC0 800204B0 5400A3AF */  sw         $v1, 0x54($sp)
    /* ECC4 800204B4 6867020C */  jal        func_80099DA0
    /* ECC8 800204B8 5800A7AF */   sw        $a3, 0x58($sp)
    /* ECCC 800204BC 21206002 */  addu       $a0, $s3, $zero
    /* ECD0 800204C0 2128A002 */  addu       $a1, $s5, $zero
    /* ECD4 800204C4 7000A28F */  lw         $v0, 0x70($sp)
    /* ECD8 800204C8 7400A38F */  lw         $v1, 0x74($sp)
    /* ECDC 800204CC 7800A78F */  lw         $a3, 0x78($sp)
    /* ECE0 800204D0 6000A627 */  addiu      $a2, $sp, 0x60
    /* ECE4 800204D4 6000A2AF */  sw         $v0, 0x60($sp)
    /* ECE8 800204D8 6400A3AF */  sw         $v1, 0x64($sp)
    /* ECEC 800204DC 3466020C */  jal        func_800998D0
    /* ECF0 800204E0 6800A7AF */   sw        $a3, 0x68($sp)
    /* ECF4 800204E4 40881200 */  sll        $s1, $s2, 1
    /* ECF8 800204E8 21883202 */  addu       $s1, $s1, $s2
    /* ECFC 800204EC C0881100 */  sll        $s1, $s1, 3
    /* ED00 800204F0 21183602 */  addu       $v1, $s1, $s6
    /* ED04 800204F4 04006324 */  addiu      $v1, $v1, 0x4
    /* ED08 800204F8 21303602 */  addu       $a2, $s1, $s6
    /* ED0C 800204FC 0400C624 */  addiu      $a2, $a2, 0x4
    /* ED10 80020500 21206002 */  addu       $a0, $s3, $zero
    /* ED14 80020504 1000C226 */  addiu      $v0, $s6, 0x10
    /* ED18 80020508 21F05100 */  addu       $fp, $v0, $s1
    /* ED1C 8002050C 7000AB8F */  lw         $t3, 0x70($sp)
    /* ED20 80020510 7400AC8F */  lw         $t4, 0x74($sp)
    /* ED24 80020514 7800AD8F */  lw         $t5, 0x78($sp)
    /* ED28 80020518 0000D28F */  lw         $s2, 0x0($fp)
    /* ED2C 8002051C 0000628C */  lw         $v0, 0x0($v1)
    /* ED30 80020520 0400678C */  lw         $a3, 0x4($v1)
    /* ED34 80020524 0800688C */  lw         $t0, 0x8($v1)
    /* ED38 80020528 0000C98C */  lw         $t1, 0x0($a2)
    /* ED3C 8002052C 0400CA8C */  lw         $t2, 0x4($a2)
    /* ED40 80020530 0800C38C */  lw         $v1, 0x8($a2)
    /* ED44 80020534 21284002 */  addu       $a1, $s2, $zero
    /* ED48 80020538 4000ABAF */  sw         $t3, 0x40($sp)
    /* ED4C 8002053C 4400ACAF */  sw         $t4, 0x44($sp)
    /* ED50 80020540 4800ADAF */  sw         $t5, 0x48($sp)
    /* ED54 80020544 7000A2AF */  sw         $v0, 0x70($sp)
    /* ED58 80020548 7400A7AF */  sw         $a3, 0x74($sp)
    /* ED5C 8002054C 7800A8AF */  sw         $t0, 0x78($sp)
    /* ED60 80020550 8000A9AF */  sw         $t1, 0x80($sp)
    /* ED64 80020554 8400AAAF */  sw         $t2, 0x84($sp)
    /* ED68 80020558 1B66020C */  jal        func_8009986C
    /* ED6C 8002055C 8800A3AF */   sw        $v1, 0x88($sp)
    /* ED70 80020560 8000B027 */  addiu      $s0, $sp, 0x80
    /* ED74 80020564 21200002 */  addu       $a0, $s0, $zero
    /* ED78 80020568 0266020C */  jal        func_80099808
    /* ED7C 8002056C 21284002 */   addu      $a1, $s2, $zero
    /* ED80 80020570 21206002 */  addu       $a0, $s3, $zero
    /* ED84 80020574 7563020C */  jal        func_80098DD4
    /* ED88 80020578 2128A002 */   addu      $a1, $s5, $zero
    /* ED8C 8002057C 21200002 */  addu       $a0, $s0, $zero
    /* ED90 80020580 8E63020C */  jal        func_80098E38
    /* ED94 80020584 2128A002 */   addu      $a1, $s5, $zero
    /* ED98 80020588 21206002 */  addu       $a0, $s3, $zero
    /* ED9C 8002058C 7563020C */  jal        func_80098DD4
    /* EDA0 80020590 21288002 */   addu      $a1, $s4, $zero
    /* EDA4 80020594 21200002 */  addu       $a0, $s0, $zero
    /* EDA8 80020598 8E63020C */  jal        func_80098E38
    /* EDAC 8002059C 21288002 */   addu      $a1, $s4, $zero
    /* EDB0 800205A0 A000B227 */  addiu      $s2, $sp, 0xA0
    /* EDB4 800205A4 21204002 */  addu       $a0, $s2, $zero
    /* EDB8 800205A8 21286002 */  addu       $a1, $s3, $zero
    /* EDBC 800205AC 21300002 */  addu       $a2, $s0, $zero
    /* EDC0 800205B0 2666020C */  jal        func_80099898
    /* EDC4 800205B4 9000B727 */   addiu     $s7, $sp, 0x90
    /* EDC8 800205B8 2120E002 */  addu       $a0, $s7, $zero
    /* EDCC 800205BC 21284002 */  addu       $a1, $s2, $zero
    /* EDD0 800205C0 7367020C */  jal        func_80099DCC
    /* EDD4 800205C4 01000624 */   addiu     $a2, $zero, 0x1
    /* EDD8 800205C8 21A03602 */  addu       $s4, $s1, $s6
    /* EDDC 800205CC 8400A38F */  lw         $v1, 0x84($sp)
    /* EDE0 800205D0 7400A28F */  lw         $v0, 0x74($sp)
    /* EDE4 800205D4 9000A48F */  lw         $a0, 0x90($sp)
    /* EDE8 800205D8 23386200 */  subu       $a3, $v1, $v0
    /* EDEC 800205DC 04008326 */  addiu      $v1, $s4, 0x4
    /* EDF0 800205E0 040084AE */  sw         $a0, 0x4($s4)
    /* EDF4 800205E4 9400A28F */  lw         $v0, 0x94($sp)
    /* EDF8 800205E8 8000A68F */  lw         $a2, 0x80($sp)
    /* EDFC 800205EC 7000A48F */  lw         $a0, 0x70($sp)
    /* EE00 800205F0 9800A58F */  lw         $a1, 0x98($sp)
    /* EE04 800205F4 2330C400 */  subu       $a2, $a2, $a0
    /* EE08 800205F8 040062AC */  sw         $v0, 0x4($v1)
    /* EE0C 800205FC 2A10E600 */  slt        $v0, $a3, $a2
    /* EE10 80020600 02004010 */  beqz       $v0, .L8002060C
    /* EE14 80020604 080065AC */   sw        $a1, 0x8($v1)
    /* EE18 80020608 2138C000 */  addu       $a3, $a2, $zero
  .L8002060C:
    /* EE1C 8002060C 8800A28F */  lw         $v0, 0x88($sp)
    /* EE20 80020610 7800A38F */  lw         $v1, 0x78($sp)
    /* EE24 80020614 00000000 */  nop
    /* EE28 80020618 23104300 */  subu       $v0, $v0, $v1
    /* EE2C 8002061C 2A204700 */  slt        $a0, $v0, $a3
    /* EE30 80020620 03008010 */  beqz       $a0, .L80020630
    /* EE34 80020624 43100200 */   sra       $v0, $v0, 1
    /* EE38 80020628 2110E000 */  addu       $v0, $a3, $zero
    /* EE3C 8002062C 43100200 */  sra        $v0, $v0, 1
  .L80020630:
    /* EE40 80020630 0000C2AF */  sw         $v0, 0x0($fp)
    /* EE44 80020634 C812C386 */  lh         $v1, 0x12C8($s6)
    /* EE48 80020638 0000C58E */  lw         $a1, 0x0($s6)
    /* EE4C 8002063C C0200300 */  sll        $a0, $v1, 3
    /* EE50 80020640 23208300 */  subu       $a0, $a0, $v1
    /* EE54 80020644 C0200400 */  sll        $a0, $a0, 3
    /* EE58 80020648 4180000C */  jal        func_80020104
    /* EE5C 8002064C 2120A400 */   addu      $a0, $a1, $a0
    /* EE60 80020650 21984000 */  addu       $s3, $v0, $zero
    /* EE64 80020654 33006012 */  beqz       $s3, .L80020724
    /* EE68 80020658 C000B227 */   addiu     $s2, $sp, 0xC0
    /* EE6C 8002065C 21204002 */  addu       $a0, $s2, $zero
    /* EE70 80020660 D000A527 */  addiu      $a1, $sp, 0xD0
    /* EE74 80020664 14008226 */  addiu      $v0, $s4, 0x14
    /* EE78 80020668 06006386 */  lh         $v1, 0x6($s3)
    /* EE7C 8002066C 0E006786 */  lh         $a3, 0xE($s3)
    /* EE80 80020670 16006886 */  lh         $t0, 0x16($s3)
    /* EE84 80020674 14008986 */  lh         $t1, 0x14($s4)
    /* EE88 80020678 02004A84 */  lh         $t2, 0x2($v0)
    /* EE8C 8002067C 04004B84 */  lh         $t3, 0x4($v0)
    /* EE90 80020680 07000624 */  addiu      $a2, $zero, 0x7
    /* EE94 80020684 9000A3AF */  sw         $v1, 0x90($sp)
    /* EE98 80020688 9400A7AF */  sw         $a3, 0x94($sp)
    /* EE9C 8002068C 9800A8AF */  sw         $t0, 0x98($sp)
    /* EEA0 80020690 D000A9AF */  sw         $t1, 0xD0($sp)
    /* EEA4 80020694 D400AAAF */  sw         $t2, 0xD4($sp)
    /* EEA8 80020698 6867020C */  jal        func_80099DA0
    /* EEAC 8002069C D800ABAF */   sw        $t3, 0xD8($sp)
    /* EEB0 800206A0 B000B127 */  addiu      $s1, $sp, 0xB0
    /* EEB4 800206A4 21202002 */  addu       $a0, $s1, $zero
    /* EEB8 800206A8 C000A28F */  lw         $v0, 0xC0($sp)
    /* EEBC 800206AC C400A38F */  lw         $v1, 0xC4($sp)
    /* EEC0 800206B0 C800A68F */  lw         $a2, 0xC8($sp)
    /* EEC4 800206B4 2128E002 */  addu       $a1, $s7, $zero
    /* EEC8 800206B8 B000A2AF */  sw         $v0, 0xB0($sp)
    /* EECC 800206BC B400A3AF */  sw         $v1, 0xB4($sp)
    /* EED0 800206C0 F465020C */  jal        func_800997D0
    /* EED4 800206C4 B800A6AF */   sw        $a2, 0xB8($sp)
    /* EED8 800206C8 E000B027 */  addiu      $s0, $sp, 0xE0
    /* EEDC 800206CC 21200002 */  addu       $a0, $s0, $zero
    /* EEE0 800206D0 2128A002 */  addu       $a1, $s5, $zero
    /* EEE4 800206D4 7367020C */  jal        func_80099DCC
    /* EEE8 800206D8 05000624 */   addiu     $a2, $zero, 0x5
    /* EEEC 800206DC 21204002 */  addu       $a0, $s2, $zero
    /* EEF0 800206E0 21282002 */  addu       $a1, $s1, $zero
    /* EEF4 800206E4 3466020C */  jal        func_800998D0
    /* EEF8 800206E8 21300002 */   addu      $a2, $s0, $zero
    /* EEFC 800206EC C000A28F */  lw         $v0, 0xC0($sp)
    /* EF00 800206F0 C400A38F */  lw         $v1, 0xC4($sp)
    /* EF04 800206F4 C800A48F */  lw         $a0, 0xC8($sp)
    /* EF08 800206F8 9000A2AF */  sw         $v0, 0x90($sp)
    /* EF0C 800206FC 9000A597 */  lhu        $a1, 0x90($sp)
    /* EF10 80020700 9400A3AF */  sw         $v1, 0x94($sp)
    /* EF14 80020704 9800A4AF */  sw         $a0, 0x98($sp)
    /* EF18 80020708 060065A6 */  sh         $a1, 0x6($s3)
    /* EF1C 8002070C 9400A297 */  lhu        $v0, 0x94($sp)
    /* EF20 80020710 00000000 */  nop
    /* EF24 80020714 0E0062A6 */  sh         $v0, 0xE($s3)
    /* EF28 80020718 9800A397 */  lhu        $v1, 0x98($sp)
    /* EF2C 8002071C 00000000 */  nop
    /* EF30 80020720 160063A6 */  sh         $v1, 0x16($s3)
  .L80020724:
    /* EF34 80020724 F000A58F */  lw         $a1, 0xF0($sp)
    /* EF38 80020728 4E84000C */  jal        func_80021138
    /* EF3C 8002072C 2120E002 */   addu      $a0, $s7, $zero
    /* EF40 80020730 2120A002 */  addu       $a0, $s5, $zero
    /* EF44 80020734 9300AF8B */  lwl        $t7, 0x93($sp)
    /* EF48 80020738 9000AF9B */  lwr        $t7, 0x90($sp)
    /* EF4C 8002073C 9400B887 */  lh         $t8, 0x94($sp)
    /* EF50 80020740 17008FAA */  swl        $t7, 0x17($s4)
    /* EF54 80020744 14008FBA */  swr        $t7, 0x14($s4)
    /* EF58 80020748 180098A6 */  sh         $t8, 0x18($s4)
    /* EF5C 8002074C 5267020C */  jal        func_80099D48
    /* EF60 80020750 05000524 */   addiu     $a1, $zero, 0x5
    /* EF64 80020754 4000A427 */  addiu      $a0, $sp, 0x40
    /* EF68 80020758 5267020C */  jal        func_80099D48
    /* EF6C 8002075C 05000524 */   addiu     $a1, $zero, 0x5
    /* EF70 80020760 3000A427 */  addiu      $a0, $sp, 0x30
    /* EF74 80020764 5267020C */  jal        func_80099D48
    /* EF78 80020768 05000524 */   addiu     $a1, $zero, 0x5
    /* EF7C 8002076C C812C386 */  lh         $v1, 0x12C8($s6)
    /* EF80 80020770 0000C58E */  lw         $a1, 0x0($s6)
    /* EF84 80020774 4000A697 */  lhu        $a2, 0x40($sp)
    /* EF88 80020778 1C01BF8F */  lw         $ra, 0x11C($sp)
    /* EF8C 8002077C 1801BE8F */  lw         $fp, 0x118($sp)
    /* EF90 80020780 1401B78F */  lw         $s7, 0x114($sp)
    /* EF94 80020784 0C01B58F */  lw         $s5, 0x10C($sp)
    /* EF98 80020788 0801B48F */  lw         $s4, 0x108($sp)
    /* EF9C 8002078C 0401B38F */  lw         $s3, 0x104($sp)
    /* EFA0 80020790 0001B28F */  lw         $s2, 0x100($sp)
    /* EFA4 80020794 FC00B18F */  lw         $s1, 0xFC($sp)
    /* EFA8 80020798 F800B08F */  lw         $s0, 0xF8($sp)
    /* EFAC 8002079C C0100300 */  sll        $v0, $v1, 3
    /* EFB0 800207A0 23104300 */  subu       $v0, $v0, $v1
    /* EFB4 800207A4 C0100200 */  sll        $v0, $v0, 3
    /* EFB8 800207A8 21104500 */  addu       $v0, $v0, $a1
    /* EFBC 800207AC 060046A4 */  sh         $a2, 0x6($v0)
    /* EFC0 800207B0 C812C486 */  lh         $a0, 0x12C8($s6)
    /* EFC4 800207B4 0000C28E */  lw         $v0, 0x0($s6)
    /* EFC8 800207B8 4400A597 */  lhu        $a1, 0x44($sp)
    /* EFCC 800207BC C0180400 */  sll        $v1, $a0, 3
    /* EFD0 800207C0 23186400 */  subu       $v1, $v1, $a0
    /* EFD4 800207C4 C0180300 */  sll        $v1, $v1, 3
    /* EFD8 800207C8 21186200 */  addu       $v1, $v1, $v0
    /* EFDC 800207CC 0E0065A4 */  sh         $a1, 0xE($v1)
    /* EFE0 800207D0 C812C486 */  lh         $a0, 0x12C8($s6)
    /* EFE4 800207D4 0000C38E */  lw         $v1, 0x0($s6)
    /* EFE8 800207D8 4800A597 */  lhu        $a1, 0x48($sp)
    /* EFEC 800207DC C0100400 */  sll        $v0, $a0, 3
    /* EFF0 800207E0 23104400 */  subu       $v0, $v0, $a0
    /* EFF4 800207E4 C0100200 */  sll        $v0, $v0, 3
    /* EFF8 800207E8 21104300 */  addu       $v0, $v0, $v1
    /* EFFC 800207EC 160045A4 */  sh         $a1, 0x16($v0)
    /* F000 800207F0 C812C486 */  lh         $a0, 0x12C8($s6)
    /* F004 800207F4 0000C28E */  lw         $v0, 0x0($s6)
    /* F008 800207F8 3000A593 */  lbu        $a1, 0x30($sp)
    /* F00C 800207FC C0180400 */  sll        $v1, $a0, 3
    /* F010 80020800 23186400 */  subu       $v1, $v1, $a0
    /* F014 80020804 C0180300 */  sll        $v1, $v1, 3
    /* F018 80020808 21186200 */  addu       $v1, $v1, $v0
    /* F01C 8002080C 1E0065A0 */  sb         $a1, 0x1E($v1)
    /* F020 80020810 C812C486 */  lh         $a0, 0x12C8($s6)
    /* F024 80020814 0000C38E */  lw         $v1, 0x0($s6)
    /* F028 80020818 1001B68F */  lw         $s6, 0x110($sp)
    /* F02C 8002081C C0100400 */  sll        $v0, $a0, 3
    /* F030 80020820 23104400 */  subu       $v0, $v0, $a0
    /* F034 80020824 C0100200 */  sll        $v0, $v0, 3
    /* F038 80020828 3800A493 */  lbu        $a0, 0x38($sp)
    /* F03C 8002082C 21104300 */  addu       $v0, $v0, $v1
    /* F040 80020830 1F0044A0 */  sb         $a0, 0x1F($v0)
    /* F044 80020834 0800E003 */  jr         $ra
    /* F048 80020838 2001BD27 */   addiu     $sp, $sp, 0x120
endlabel func_800203A8
