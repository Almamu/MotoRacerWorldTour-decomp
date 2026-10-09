nonmatching func_800467B8, 0x90

glabel func_800467B8
    /* 34FC8 800467B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 34FCC 800467BC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 34FD0 800467C0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 34FD4 800467C4 3113010C */  jal        func_80044CC4
    /* 34FD8 800467C8 21808000 */   addu      $s0, $a0, $zero
    /* 34FDC 800467CC 21200002 */  addu       $a0, $s0, $zero
    /* 34FE0 800467D0 0C80023C */  lui        $v0, %hi(D_800C5BF0)
    /* 34FE4 800467D4 F05B4224 */  addiu      $v0, $v0, %lo(D_800C5BF0)
    /* 34FE8 800467D8 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 34FEC 800467DC 11000324 */  addiu      $v1, $zero, 0x11
    /* 34FF0 800467E0 680002AE */  sw         $v0, 0x68($s0)
    /* 34FF4 800467E4 0C80023C */  lui        $v0, %hi(D_800C5CD8)
    /* 34FF8 800467E8 D85C4224 */  addiu      $v0, $v0, %lo(D_800C5CD8)
    /* 34FFC 800467EC 600002AE */  sw         $v0, 0x60($s0)
    /* 35000 800467F0 01000224 */  addiu      $v0, $zero, 0x1
    /* 35004 800467F4 0C0005AE */  sw         $a1, 0xC($s0)
    /* 35008 800467F8 180005AE */  sw         $a1, 0x18($s0)
    /* 3500C 800467FC 0C80053C */  lui        $a1, %hi(D_800C5804)
    /* 35010 80046800 100003AE */  sw         $v1, 0x10($s0)
    /* 35014 80046804 0000038E */  lw         $v1, 0x0($s0)
    /* 35018 80046808 0458A524 */  addiu      $a1, $a1, %lo(D_800C5804)
    /* 3501C 8004680C A40000AE */  sw         $zero, 0xA4($s0)
    /* 35020 80046810 A00000AE */  sw         $zero, 0xA0($s0)
    /* 35024 80046814 AC0000AE */  sw         $zero, 0xAC($s0)
    /* 35028 80046818 B00000AE */  sw         $zero, 0xB0($s0)
    /* 3502C 8004681C B40002AE */  sw         $v0, 0xB4($s0)
    /* 35030 80046820 B80000AE */  sw         $zero, 0xB8($s0)
    /* 35034 80046824 BC0000AE */  sw         $zero, 0xBC($s0)
    /* 35038 80046828 80006334 */  ori        $v1, $v1, 0x80
    /* 3503C 8004682C 8BFF000C */  jal        func_8003FE2C
    /* 35040 80046830 000003AE */   sw        $v1, 0x0($s0)
    /* 35044 80046834 21100002 */  addu       $v0, $s0, $zero
    /* 35048 80046838 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3504C 8004683C 1000B08F */  lw         $s0, 0x10($sp)
    /* 35050 80046840 0800E003 */  jr         $ra
    /* 35054 80046844 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800467B8
