/* Handwritten function */
nonmatching func_80094670, 0x60

glabel func_80094670
    /* 82E80 80094670 000080C8 */  lwc2       $0, 0x0($a0)
    /* 82E84 80094674 040081C8 */  lwc2       $1, 0x4($a0)
    /* 82E88 80094678 00000000 */  nop
    /* 82E8C 8009467C 00000000 */  nop
    /* 82E90 80094680 0100184A */  rtps
    /* 82E94 80094684 0000A28C */  lw         $v0, 0x0($a1)
    /* 82E98 80094688 0400A694 */  lhu        $a2, 0x4($a1)
    /* 82E9C 8009468C 140082AC */  sw         $v0, 0x14($a0)
    /* 82EA0 80094690 180086A4 */  sh         $a2, 0x18($a0)
    /* 82EA4 80094694 00F84348 */  cfc2       $v1, $31 /* handwritten instruction */
    /* 82EA8 80094698 0C008EE8 */  swc2       $14, 0xC($a0)
    /* 82EAC 8009469C 431B0300 */  sra        $v1, $v1, 13
    /* 82EB0 800946A0 00980548 */  mfc2       $a1, $19 /* handwritten instruction */
    /* 82EB4 800946A4 3F006230 */  andi       $v0, $v1, 0x3F
    /* 82EB8 800946A8 2B100200 */  sltu       $v0, $zero, $v0
    /* 82EBC 800946AC 40100200 */  sll        $v0, $v0, 1
    /* 82EC0 800946B0 3C006330 */  andi       $v1, $v1, 0x3C
    /* 82EC4 800946B4 2B180300 */  sltu       $v1, $zero, $v1
    /* 82EC8 800946B8 40180300 */  sll        $v1, $v1, 1
    /* 82ECC 800946BC 060085A4 */  sh         $a1, 0x6($a0)
    /* 82ED0 800946C0 110082A0 */  sb         $v0, 0x11($a0)
    /* 82ED4 800946C4 130083A0 */  sb         $v1, 0x13($a0)
    /* 82ED8 800946C8 0800E003 */  jr         $ra
    /* 82EDC 800946CC 00000000 */   nop
endlabel func_80094670
