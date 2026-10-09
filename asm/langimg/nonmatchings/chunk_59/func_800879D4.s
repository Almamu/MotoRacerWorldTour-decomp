nonmatching func_800879D4, 0x40

glabel func_800879D4
    /* 761E4 800879D4 21108000 */  addu       $v0, $a0, $zero
    /* 761E8 800879D8 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 761EC 800879DC 100040AC */  sw         $zero, 0x10($v0)
    /* 761F0 800879E0 140040AC */  sw         $zero, 0x14($v0)
    /* 761F4 800879E4 1C0040AC */  sw         $zero, 0x1C($v0)
    /* 761F8 800879E8 200043AC */  sw         $v1, 0x20($v0)
    /* 761FC 800879EC 340043AC */  sw         $v1, 0x34($v0)
    /* 76200 800879F0 040040AC */  sw         $zero, 0x4($v0)
    /* 76204 800879F4 0C0040AC */  sw         $zero, 0xC($v0)
    /* 76208 800879F8 080040AC */  sw         $zero, 0x8($v0)
    /* 7620C 800879FC 000040AC */  sw         $zero, 0x0($v0)
    /* 76210 80087A00 180040AC */  sw         $zero, 0x18($v0)
    /* 76214 80087A04 240040AC */  sw         $zero, 0x24($v0)
    /* 76218 80087A08 280043AC */  sw         $v1, 0x28($v0)
    /* 7621C 80087A0C 0800E003 */  jr         $ra
    /* 76220 80087A10 300040AC */   sw        $zero, 0x30($v0)
endlabel func_800879D4
