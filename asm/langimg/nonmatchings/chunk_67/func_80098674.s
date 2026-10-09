/* Handwritten function */
nonmatching func_80098674, 0xF4

glabel func_80098674
    /* 86E84 80098674 2110C000 */  addu       $v0, $a2, $zero
    /* 86E88 80098678 0000838C */  lw         $v1, 0x0($a0)
    /* 86E8C 8009867C 0400868C */  lw         $a2, 0x4($a0)
    /* 86E90 80098680 0000C348 */  ctc2       $v1, $0 /* handwritten instruction */
    /* 86E94 80098684 0008C648 */  ctc2       $a2, $1 /* handwritten instruction */
    /* 86E98 80098688 0800838C */  lw         $v1, 0x8($a0)
    /* 86E9C 8009868C 0C00868C */  lw         $a2, 0xC($a0)
    /* 86EA0 80098690 0010C348 */  ctc2       $v1, $2 /* handwritten instruction */
    /* 86EA4 80098694 1000838C */  lw         $v1, 0x10($a0)
    /* 86EA8 80098698 0018C648 */  ctc2       $a2, $3 /* handwritten instruction */
    /* 86EAC 8009869C 0020C348 */  ctc2       $v1, $4 /* handwritten instruction */
    /* 86EB0 800986A0 0000A78C */  lw         $a3, 0x0($a1)
    /* 86EB4 800986A4 0400A88C */  lw         $t0, 0x4($a1)
    /* 86EB8 800986A8 0C00AA8C */  lw         $t2, 0xC($a1)
    /* 86EBC 800986AC 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* 86EC0 800986B0 031C0800 */  sra        $v1, $t0, 16
    /* 86EC4 800986B4 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
    /* 86EC8 800986B8 00588A48 */  mtc2       $t2, $11 /* handwritten instruction */
    /* 86ECC 800986BC 023C0700 */  srl        $a3, $a3, 16
    /* 86ED0 800986C0 02540A00 */  srl        $t2, $t2, 16
    /* 86ED4 800986C4 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* 86ED8 800986C8 0800A98C */  lw         $t1, 0x8($a1)
    /* 86EDC 800986CC 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* 86EE0 800986D0 001C0900 */  sll        $v1, $t1, 16
    /* 86EE4 800986D4 2538E300 */  or         $a3, $a3, $v1
    /* 86EE8 800986D8 00008748 */  mtc2       $a3, $0 /* handwritten instruction */
    /* 86EEC 800986DC 00480748 */  mfc2       $a3, $9 /* handwritten instruction */
    /* 86EF0 800986E0 00500A48 */  mfc2       $t2, $10 /* handwritten instruction */
    /* 86EF4 800986E4 00580648 */  mfc2       $a2, $11 /* handwritten instruction */
    /* 86EF8 800986E8 1260484A */  mvmva      1, 0, 0, 3, 0
    /* 86EFC 800986EC FFFF0431 */  andi       $a0, $t0, 0xFFFF
    /* 86F00 800986F0 FFFF033C */  lui        $v1, (0xFFFF0000 >> 16)
    /* 86F04 800986F4 24182301 */  and        $v1, $t1, $v1
    /* 86F08 800986F8 25488300 */  or         $t1, $a0, $v1
    /* 86F0C 800986FC 00108948 */  mtc2       $t1, $2 /* handwritten instruction */
    /* 86F10 80098700 1000A3C8 */  lwc2       $3, 0x10($a1)
    /* 86F14 80098704 00480848 */  mfc2       $t0, $9 /* handwritten instruction */
    /* 86F18 80098708 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
    /* 86F1C 8009870C 00580548 */  mfc2       $a1, $11 /* handwritten instruction */
    /* 86F20 80098710 12E0484A */  mvmva      1, 0, 1, 3, 0
    /* 86F24 80098714 FFFFE330 */  andi       $v1, $a3, 0xFFFF
    /* 86F28 80098718 00240800 */  sll        $a0, $t0, 16
    /* 86F2C 8009871C 25186400 */  or         $v1, $v1, $a0
    /* 86F30 80098720 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* 86F34 80098724 002C0500 */  sll        $a1, $a1, 16
    /* 86F38 80098728 2530C500 */  or         $a2, $a2, $a1
    /* 86F3C 8009872C 000043AC */  sw         $v1, 0x0($v0)
    /* 86F40 80098730 0C0046AC */  sw         $a2, 0xC($v0)
    /* 86F44 80098734 00480748 */  mfc2       $a3, $9 /* handwritten instruction */
    /* 86F48 80098738 00500848 */  mfc2       $t0, $10 /* handwritten instruction */
    /* 86F4C 8009873C FFFFE330 */  andi       $v1, $a3, 0xFFFF
    /* 86F50 80098740 002C0A00 */  sll        $a1, $t2, 16
    /* 86F54 80098744 25186500 */  or         $v1, $v1, $a1
    /* 86F58 80098748 FFFF2431 */  andi       $a0, $t1, 0xFFFF
    /* 86F5C 8009874C 002C0800 */  sll        $a1, $t0, 16
    /* 86F60 80098750 25208500 */  or         $a0, $a0, $a1
    /* 86F64 80098754 040043AC */  sw         $v1, 0x4($v0)
    /* 86F68 80098758 080044AC */  sw         $a0, 0x8($v0)
    /* 86F6C 8009875C 10004BE8 */  swc2       $11, 0x10($v0)
    /* 86F70 80098760 0800E003 */  jr         $ra
    /* 86F74 80098764 00000000 */   nop
endlabel func_80098674
