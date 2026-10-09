nonmatching _padSetVsyncParam, 0x2C

glabel _padSetVsyncParam
    /* 9EFE8 800B07D8 0E80023C */  lui        $v0, %hi(D_800DE424)
    /* 9EFEC 800B07DC 24E44224 */  addiu      $v0, $v0, %lo(D_800DE424)
    /* 9EFF0 800B07E0 0B80033C */  lui        $v1, %hi(func_800B086C)
    /* 9EFF4 800B07E4 6C086324 */  addiu      $v1, $v1, %lo(func_800B086C)
    /* 9EFF8 800B07E8 000043AC */  sw         $v1, 0x0($v0)
    /* 9EFFC 800B07EC 0B80033C */  lui        $v1, %hi(func_800B0804)
    /* 9F000 800B07F0 04086324 */  addiu      $v1, $v1, %lo(func_800B0804)
    /* 9F004 800B07F4 040043AC */  sw         $v1, 0x4($v0)
    /* 9F008 800B07F8 FCFF40AC */  sw         $zero, -0x4($v0)
    /* 9F00C 800B07FC 0800E003 */  jr         $ra
    /* 9F010 800B0800 080040AC */   sw        $zero, 0x8($v0)
endlabel _padSetVsyncParam
