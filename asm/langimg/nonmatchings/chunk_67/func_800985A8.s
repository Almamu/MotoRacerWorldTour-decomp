/* Handwritten function */
nonmatching func_800985A8, 0xCC

glabel func_800985A8
    /* 86DB8 800985A8 2110A000 */  addu       $v0, $a1, $zero
    /* 86DBC 800985AC 0000878C */  lw         $a3, 0x0($a0)
    /* 86DC0 800985B0 0400898C */  lw         $t1, 0x4($a0)
    /* 86DC4 800985B4 0C008A8C */  lw         $t2, 0xC($a0)
    /* 86DC8 800985B8 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
    /* 86DCC 800985BC 031C0900 */  sra        $v1, $t1, 16
    /* 86DD0 800985C0 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
    /* 86DD4 800985C4 00588A48 */  mtc2       $t2, $11 /* handwritten instruction */
    /* 86DD8 800985C8 023C0700 */  srl        $a3, $a3, 16
    /* 86DDC 800985CC 02540A00 */  srl        $t2, $t2, 16
    /* 86DE0 800985D0 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* 86DE4 800985D4 0800888C */  lw         $t0, 0x8($a0)
    /* 86DE8 800985D8 00088A48 */  mtc2       $t2, $1 /* handwritten instruction */
    /* 86DEC 800985DC 001C0800 */  sll        $v1, $t0, 16
    /* 86DF0 800985E0 2538E300 */  or         $a3, $a3, $v1
    /* 86DF4 800985E4 00008748 */  mtc2       $a3, $0 /* handwritten instruction */
    /* 86DF8 800985E8 00480748 */  mfc2       $a3, $9 /* handwritten instruction */
    /* 86DFC 800985EC 00500A48 */  mfc2       $t2, $10 /* handwritten instruction */
    /* 86E00 800985F0 00580648 */  mfc2       $a2, $11 /* handwritten instruction */
    /* 86E04 800985F4 1260484A */  mvmva      1, 0, 0, 3, 0
    /* 86E08 800985F8 FFFF2531 */  andi       $a1, $t1, 0xFFFF
    /* 86E0C 800985FC FFFF033C */  lui        $v1, (0xFFFF0000 >> 16)
    /* 86E10 80098600 24180301 */  and        $v1, $t0, $v1
    /* 86E14 80098604 2540A300 */  or         $t0, $a1, $v1
    /* 86E18 80098608 00108848 */  mtc2       $t0, $2 /* handwritten instruction */
    /* 86E1C 8009860C 100083C8 */  lwc2       $3, 0x10($a0)
    /* 86E20 80098610 00480948 */  mfc2       $t1, $9 /* handwritten instruction */
    /* 86E24 80098614 00500848 */  mfc2       $t0, $10 /* handwritten instruction */
    /* 86E28 80098618 00580548 */  mfc2       $a1, $11 /* handwritten instruction */
    /* 86E2C 8009861C 12E0484A */  mvmva      1, 0, 1, 3, 0
    /* 86E30 80098620 FFFFE330 */  andi       $v1, $a3, 0xFFFF
    /* 86E34 80098624 00240900 */  sll        $a0, $t1, 16
    /* 86E38 80098628 25186400 */  or         $v1, $v1, $a0
    /* 86E3C 8009862C FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* 86E40 80098630 002C0500 */  sll        $a1, $a1, 16
    /* 86E44 80098634 2530C500 */  or         $a2, $a2, $a1
    /* 86E48 80098638 000043AC */  sw         $v1, 0x0($v0)
    /* 86E4C 8009863C 0C0046AC */  sw         $a2, 0xC($v0)
    /* 86E50 80098640 00480748 */  mfc2       $a3, $9 /* handwritten instruction */
    /* 86E54 80098644 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
    /* 86E58 80098648 FFFFE330 */  andi       $v1, $a3, 0xFFFF
    /* 86E5C 8009864C 002C0A00 */  sll        $a1, $t2, 16
    /* 86E60 80098650 25186500 */  or         $v1, $v1, $a1
    /* 86E64 80098654 FFFF0431 */  andi       $a0, $t0, 0xFFFF
    /* 86E68 80098658 002C0900 */  sll        $a1, $t1, 16
    /* 86E6C 8009865C 25208500 */  or         $a0, $a0, $a1
    /* 86E70 80098660 040043AC */  sw         $v1, 0x4($v0)
    /* 86E74 80098664 080044AC */  sw         $a0, 0x8($v0)
    /* 86E78 80098668 10004BE8 */  swc2       $11, 0x10($v0)
    /* 86E7C 8009866C 0800E003 */  jr         $ra
    /* 86E80 80098670 00000000 */   nop
endlabel func_800985A8
