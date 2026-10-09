nonmatching func_8006AFEC, 0x2C

glabel func_8006AFEC
    /* 597FC 8006AFEC 21108000 */  addu       $v0, $a0, $zero
    /* 59800 8006AFF0 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 59804 8006AFF4 040043AC */  sw         $v1, 0x4($v0)
    /* 59808 8006AFF8 080040AC */  sw         $zero, 0x8($v0)
    /* 5980C 8006AFFC 140040AC */  sw         $zero, 0x14($v0)
    /* 59810 8006B000 000040AC */  sw         $zero, 0x0($v0)
    /* 59814 8006B004 180040AC */  sw         $zero, 0x18($v0)
    /* 59818 8006B008 1C0040AC */  sw         $zero, 0x1C($v0)
    /* 5981C 8006B00C 100040AC */  sw         $zero, 0x10($v0)
    /* 59820 8006B010 0800E003 */  jr         $ra
    /* 59824 8006B014 0C0040AC */   sw        $zero, 0xC($v0)
endlabel func_8006AFEC
