nonmatching func_8006FADC, 0x1C

glabel func_8006FADC
    /* 5E2EC 8006FADC 40200400 */  sll        $a0, $a0, 1
    /* 5E2F0 8006FAE0 0C80033C */  lui        $v1, %hi(D_800C7F18)
    /* 5E2F4 8006FAE4 187F6324 */  addiu      $v1, $v1, %lo(D_800C7F18)
    /* 5E2F8 8006FAE8 21208300 */  addu       $a0, $a0, $v1
    /* 5E2FC 8006FAEC 00008284 */  lh         $v0, 0x0($a0)
    /* 5E300 8006FAF0 0800E003 */  jr         $ra
    /* 5E304 8006FAF4 00000000 */   nop
endlabel func_8006FADC
