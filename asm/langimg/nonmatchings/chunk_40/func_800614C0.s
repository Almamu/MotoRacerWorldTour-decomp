nonmatching func_800614C0, 0x50

glabel func_800614C0
    /* 4FCD0 800614C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4FCD4 800614C4 40100500 */  sll        $v0, $a1, 1
    /* 4FCD8 800614C8 21104500 */  addu       $v0, $v0, $a1
    /* 4FCDC 800614CC 80100200 */  sll        $v0, $v0, 2
    /* 4FCE0 800614D0 23104500 */  subu       $v0, $v0, $a1
    /* 4FCE4 800614D4 80100200 */  sll        $v0, $v0, 2
    /* 4FCE8 800614D8 23104500 */  subu       $v0, $v0, $a1
    /* 4FCEC 800614DC 80100200 */  sll        $v0, $v0, 2
    /* 4FCF0 800614E0 21104500 */  addu       $v0, $v0, $a1
    /* 4FCF4 800614E4 7803838C */  lw         $v1, 0x378($a0)
    /* 4FCF8 800614E8 C0100200 */  sll        $v0, $v0, 3
    /* 4FCFC 800614EC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4FD00 800614F0 21104300 */  addu       $v0, $v0, $v1
    /* 4FD04 800614F4 1803458C */  lw         $a1, 0x318($v0)
    /* 4FD08 800614F8 4485010C */  jal        func_80061510
    /* 4FD0C 800614FC 00000000 */   nop
    /* 4FD10 80061500 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4FD14 80061504 00000000 */  nop
    /* 4FD18 80061508 0800E003 */  jr         $ra
    /* 4FD1C 8006150C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800614C0
