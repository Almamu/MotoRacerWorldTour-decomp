/* Handwritten function */
nonmatching func_80097F68, 0x128

glabel func_80097F68
    /* 86778 80097F68 0C80063C */  lui        $a2, %hi(D_800BF3A0)
    /* 8677C 80097F6C A0F3C624 */  addiu      $a2, $a2, %lo(D_800BF3A0)
    /* 86780 80097F70 0000A284 */  lh         $v0, 0x0($a1)
    /* 86784 80097F74 0200A384 */  lh         $v1, 0x2($a1)
    /* 86788 80097F78 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 8678C 80097F7C 80100200 */  sll        $v0, $v0, 2
    /* 86790 80097F80 21484600 */  addu       $t1, $v0, $a2
    /* 86794 80097F84 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 86798 80097F88 80180300 */  sll        $v1, $v1, 2
    /* 8679C 80097F8C 0400A284 */  lh         $v0, 0x4($a1)
    /* 867A0 80097F90 02002A85 */  lh         $t2, 0x2($t1)
    /* 867A4 80097F94 00002585 */  lh         $a1, 0x0($t1)
    /* 867A8 80097F98 21486600 */  addu       $t1, $v1, $a2
    /* 867AC 80097F9C 02002885 */  lh         $t0, 0x2($t1)
    /* 867B0 80097FA0 00002385 */  lh         $v1, 0x0($t1)
    /* 867B4 80097FA4 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 867B8 80097FA8 80100200 */  sll        $v0, $v0, 2
    /* 867BC 80097FAC 21484600 */  addu       $t1, $v0, $a2
    /* 867C0 80097FB0 02002785 */  lh         $a3, 0x2($t1)
    /* 867C4 80097FB4 00002685 */  lh         $a2, 0x0($t1)
    /* 867C8 80097FB8 1800A300 */  mult       $a1, $v1
    /* 867CC 80097FBC 00408A48 */  mtc2       $t2, $8 /* handwritten instruction */
    /* 867D0 80097FC0 00488348 */  mtc2       $v1, $9 /* handwritten instruction */
    /* 867D4 80097FC4 00508648 */  mtc2       $a2, $10 /* handwritten instruction */
    /* 867D8 80097FC8 00588748 */  mtc2       $a3, $11 /* handwritten instruction */
    /* 867DC 80097FCC 00000000 */  nop
    /* 867E0 80097FD0 00000000 */  nop
    /* 867E4 80097FD4 3D00984B */  gpf        1
    /* 867E8 80097FD8 23100500 */  negu       $v0, $a1
    /* 867EC 80097FDC 0A0082A4 */  sh         $v0, 0xA($a0)
    /* 867F0 80097FE0 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* 867F4 80097FE4 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* 867F8 80097FE8 00580948 */  mfc2       $t1, $11 /* handwritten instruction */
    /* 867FC 80097FEC 12100000 */  mflo       $v0
    /* 86800 80097FF0 025B0200 */  srl        $t3, $v0, 12
    /* 86804 80097FF4 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* 86808 80097FF8 18000501 */  mult       $t0, $a1
    /* 8680C 80097FFC 23100600 */  negu       $v0, $a2
    /* 86810 80098000 00508248 */  mtc2       $v0, $10 /* handwritten instruction */
    /* 86814 80098004 00588848 */  mtc2       $t0, $11 /* handwritten instruction */
    /* 86818 80098008 0000C648 */  ctc2       $a2, $0 /* handwritten instruction */
    /* 8681C 8009800C 0010C748 */  ctc2       $a3, $2 /* handwritten instruction */
    /* 86820 80098010 0020CB48 */  ctc2       $t3, $4 /* handwritten instruction */
    /* 86824 80098014 00000000 */  nop
    /* 86828 80098018 00000000 */  nop
    /* 8682C 8009801C 0C00784B */  op         1
    /* 86830 80098020 04008CA4 */  sh         $t4, 0x4($a0)
    /* 86834 80098024 06008DA4 */  sh         $t5, 0x6($a0)
    /* 86838 80098028 080089A4 */  sh         $t1, 0x8($a0)
    /* 8683C 8009802C 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* 86840 80098030 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* 86844 80098034 12100000 */  mflo       $v0
    /* 86848 80098038 025B0200 */  srl        $t3, $v0, 12
    /* 8684C 8009803C 00488B48 */  mtc2       $t3, $9 /* handwritten instruction */
    /* 86850 80098040 18004801 */  mult       $t2, $t0
    /* 86854 80098044 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
    /* 86858 80098048 00588648 */  mtc2       $a2, $11 /* handwritten instruction */
    /* 8685C 8009804C 23180300 */  negu       $v1, $v1
    /* 86860 80098050 0000C348 */  ctc2       $v1, $0 /* handwritten instruction */
    /* 86864 80098054 0010CB48 */  ctc2       $t3, $2 /* handwritten instruction */
    /* 86868 80098058 0020C748 */  ctc2       $a3, $4 /* handwritten instruction */
    /* 8686C 8009805C 00000000 */  nop
    /* 86870 80098060 00000000 */  nop
    /* 86874 80098064 0C00784B */  op         1
    /* 86878 80098068 00008CA4 */  sh         $t4, 0x0($a0)
    /* 8687C 8009806C 02008DA4 */  sh         $t5, 0x2($a0)
    /* 86880 80098070 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* 86884 80098074 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* 86888 80098078 0C008CA4 */  sh         $t4, 0xC($a0)
    /* 8688C 8009807C 0E008DA4 */  sh         $t5, 0xE($a0)
    /* 86890 80098080 12100000 */  mflo       $v0
    /* 86894 80098084 02130200 */  srl        $v0, $v0, 12
    /* 86898 80098088 0800E003 */  jr         $ra
    /* 8689C 8009808C 100082A4 */   sh        $v0, 0x10($a0)
endlabel func_80097F68
