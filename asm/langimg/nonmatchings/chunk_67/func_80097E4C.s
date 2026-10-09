/* Handwritten function */
nonmatching func_80097E4C, 0x11C

glabel func_80097E4C
    /* 8665C 80097E4C 0C80023C */  lui        $v0, %hi(D_800BF3A0)
    /* 86660 80097E50 A0F34224 */  addiu      $v0, $v0, %lo(D_800BF3A0)
    /* 86664 80097E54 FF0FA530 */  andi       $a1, $a1, 0xFFF
    /* 86668 80097E58 80280500 */  sll        $a1, $a1, 2
    /* 8666C 80097E5C 2118A200 */  addu       $v1, $a1, $v0
    /* 86670 80097E60 FF0FC630 */  andi       $a2, $a2, 0xFFF
    /* 86674 80097E64 80300600 */  sll        $a2, $a2, 2
    /* 86678 80097E68 02006884 */  lh         $t0, 0x2($v1)
    /* 8667C 80097E6C 00006984 */  lh         $t1, 0x0($v1)
    /* 86680 80097E70 2118C200 */  addu       $v1, $a2, $v0
    /* 86684 80097E74 FF0FE730 */  andi       $a3, $a3, 0xFFF
    /* 86688 80097E78 80380700 */  sll        $a3, $a3, 2
    /* 8668C 80097E7C 02006A84 */  lh         $t2, 0x2($v1)
    /* 86690 80097E80 00006584 */  lh         $a1, 0x0($v1)
    /* 86694 80097E84 2118E200 */  addu       $v1, $a3, $v0
    /* 86698 80097E88 02006784 */  lh         $a3, 0x2($v1)
    /* 8669C 80097E8C 00006684 */  lh         $a2, 0x0($v1)
    /* 866A0 80097E90 18002501 */  mult       $t1, $a1
    /* 866A4 80097E94 00408A48 */  mtc2       $t2, $8 /* handwritten instruction */
    /* 866A8 80097E98 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* 866AC 80097E9C 23100600 */  negu       $v0, $a2
    /* 866B0 80097EA0 00508248 */  mtc2       $v0, $10 /* handwritten instruction */
    /* 866B4 80097EA4 23180900 */  negu       $v1, $t1
    /* 866B8 80097EA8 00588348 */  mtc2       $v1, $11 /* handwritten instruction */
    /* 866BC 80097EAC 00000000 */  nop
    /* 866C0 80097EB0 00000000 */  nop
    /* 866C4 80097EB4 3D00984B */  gpf        1
    /* 866C8 80097EB8 040085A4 */  sh         $a1, 0x4($a0)
    /* 866CC 80097EBC 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* 866D0 80097EC0 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* 866D4 80097EC4 00580348 */  mfc2       $v1, $11 /* handwritten instruction */
    /* 866D8 80097EC8 12100000 */  mflo       $v0
    /* 866DC 80097ECC 025B0200 */  srl        $t3, $v0, 12
    /* 866E0 80097ED0 00488848 */  mtc2       $t0, $9 /* handwritten instruction */
    /* 866E4 80097ED4 18000501 */  mult       $t0, $a1
    /* 866E8 80097ED8 23100B00 */  negu       $v0, $t3
    /* 866EC 80097EDC 00508248 */  mtc2       $v0, $10 /* handwritten instruction */
    /* 866F0 80097EE0 00588648 */  mtc2       $a2, $11 /* handwritten instruction */
    /* 866F4 80097EE4 0000CB48 */  ctc2       $t3, $0 /* handwritten instruction */
    /* 866F8 80097EE8 0010C848 */  ctc2       $t0, $2 /* handwritten instruction */
    /* 866FC 80097EEC 0020C748 */  ctc2       $a3, $4 /* handwritten instruction */
    /* 86700 80097EF0 00000000 */  nop
    /* 86704 80097EF4 00000000 */  nop
    /* 86708 80097EF8 0C00784B */  op         1
    /* 8670C 80097EFC 00008CA4 */  sh         $t4, 0x0($a0)
    /* 86710 80097F00 02008DA4 */  sh         $t5, 0x2($a0)
    /* 86714 80097F04 0A0083A4 */  sh         $v1, 0xA($a0)
    /* 86718 80097F08 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* 8671C 80097F0C 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* 86720 80097F10 12100000 */  mflo       $v0
    /* 86724 80097F14 025B0200 */  srl        $t3, $v0, 12
    /* 86728 80097F18 00488948 */  mtc2       $t1, $9 /* handwritten instruction */
    /* 8672C 80097F1C 18000A01 */  mult       $t0, $t2
    /* 86730 80097F20 00508B48 */  mtc2       $t3, $10 /* handwritten instruction */
    /* 86734 80097F24 00588648 */  mtc2       $a2, $11 /* handwritten instruction */
    /* 86738 80097F28 23100B00 */  negu       $v0, $t3
    /* 8673C 80097F2C 0000C248 */  ctc2       $v0, $0 /* handwritten instruction */
    /* 86740 80097F30 0010C948 */  ctc2       $t1, $2 /* handwritten instruction */
    /* 86744 80097F34 00000000 */  nop
    /* 86748 80097F38 00000000 */  nop
    /* 8674C 80097F3C 0C00784B */  op         1
    /* 86750 80097F40 06008CA4 */  sh         $t4, 0x6($a0)
    /* 86754 80097F44 08008DA4 */  sh         $t5, 0x8($a0)
    /* 86758 80097F48 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* 8675C 80097F4C 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* 86760 80097F50 0C008CA4 */  sh         $t4, 0xC($a0)
    /* 86764 80097F54 0E008DA4 */  sh         $t5, 0xE($a0)
    /* 86768 80097F58 12100000 */  mflo       $v0
    /* 8676C 80097F5C 02130200 */  srl        $v0, $v0, 12
    /* 86770 80097F60 0800E003 */  jr         $ra
    /* 86774 80097F64 100082A4 */   sh        $v0, 0x10($a0)
endlabel func_80097E4C
