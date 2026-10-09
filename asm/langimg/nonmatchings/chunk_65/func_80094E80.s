nonmatching func_80094E80, 0xB0

glabel func_80094E80
    /* 83690 80094E80 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 83694 80094E84 FFFF033C */  lui        $v1, (0xFFFF0000 >> 16)
    /* 83698 80094E88 0100063C */  lui        $a2, (0x10000 >> 16)
    /* 8369C 80094E8C 6000BFAF */  sw         $ra, 0x60($sp)
    /* 836A0 80094E90 08008A8C */  lw         $t2, 0x8($a0)
    /* 836A4 80094E94 0C008B8C */  lw         $t3, 0xC($a0)
    /* 836A8 80094E98 10008C8C */  lw         $t4, 0x10($a0)
    /* 836AC 80094E9C 21186301 */  addu       $v1, $t3, $v1
    /* 836B0 80094EA0 21486601 */  addu       $t1, $t3, $a2
    /* 836B4 80094EA4 1800AAAF */  sw         $t2, 0x18($sp)
    /* 836B8 80094EA8 5400AAAF */  sw         $t2, 0x54($sp)
    /* 836BC 80094EAC 0800AA8C */  lw         $t2, 0x8($a1)
    /* 836C0 80094EB0 0C00AB8C */  lw         $t3, 0xC($a1)
    /* 836C4 80094EB4 000A073C */  lui        $a3, (0xA000000 >> 16)
    /* 836C8 80094EB8 2000ACAF */  sw         $t4, 0x20($sp)
    /* 836CC 80094EBC 5C00ACAF */  sw         $t4, 0x5C($sp)
    /* 836D0 80094EC0 0400828C */  lw         $v0, 0x4($a0)
    /* 836D4 80094EC4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 836D8 80094EC8 1000AC8C */  lw         $t4, 0x10($a1)
    /* 836DC 80094ECC 0400A88C */  lw         $t0, 0x4($a1)
    /* 836E0 80094ED0 2400A527 */  addiu      $a1, $sp, 0x24
    /* 836E4 80094ED4 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 836E8 80094ED8 5800A9AF */  sw         $t1, 0x58($sp)
    /* 836EC 80094EDC 21104700 */  addu       $v0, $v0, $a3
    /* 836F0 80094EE0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 836F4 80094EE4 5000A2AF */  sw         $v0, 0x50($sp)
    /* 836F8 80094EE8 21100701 */  addu       $v0, $t0, $a3
    /* 836FC 80094EEC 2800A2AF */  sw         $v0, 0x28($sp)
    /* 83700 80094EF0 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 83704 80094EF4 23106601 */  subu       $v0, $t3, $a2
    /* 83708 80094EF8 21306601 */  addu       $a2, $t3, $a2
    /* 8370C 80094EFC 4400A6AF */  sw         $a2, 0x44($sp)
    /* 83710 80094F00 3800A627 */  addiu      $a2, $sp, 0x38
    /* 83714 80094F04 4C00A727 */  addiu      $a3, $sp, 0x4C
    /* 83718 80094F08 2C00AAAF */  sw         $t2, 0x2C($sp)
    /* 8371C 80094F0C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 83720 80094F10 3400ACAF */  sw         $t4, 0x34($sp)
    /* 83724 80094F14 4000AAAF */  sw         $t2, 0x40($sp)
    /* 83728 80094F18 B451020C */  jal        func_800946D0
    /* 8372C 80094F1C 4800ACAF */   sw        $t4, 0x48($sp)
    /* 83730 80094F20 6000BF8F */  lw         $ra, 0x60($sp)
    /* 83734 80094F24 00000000 */  nop
    /* 83738 80094F28 0800E003 */  jr         $ra
    /* 8373C 80094F2C 6800BD27 */   addiu     $sp, $sp, 0x68
endlabel func_80094E80
