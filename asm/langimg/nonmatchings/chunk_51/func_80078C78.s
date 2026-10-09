nonmatching func_80078C78, 0x54

glabel func_80078C78
    /* 67488 80078C78 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 6748C 80078C7C 5400A227 */  addiu      $v0, $sp, 0x54
    /* 67490 80078C80 4000A88F */  lw         $t0, 0x40($sp)
    /* 67494 80078C84 4400A98F */  lw         $t1, 0x44($sp)
    /* 67498 80078C88 4800AA8F */  lw         $t2, 0x48($sp)
    /* 6749C 80078C8C 4C00AB8F */  lw         $t3, 0x4C($sp)
    /* 674A0 80078C90 5000A38F */  lw         $v1, 0x50($sp)
    /* 674A4 80078C94 30008424 */  addiu      $a0, $a0, 0x30
    /* 674A8 80078C98 2800BFAF */  sw         $ra, 0x28($sp)
    /* 674AC 80078C9C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 674B0 80078CA0 20006334 */  ori        $v1, $v1, 0x20
    /* 674B4 80078CA4 1000A8AF */  sw         $t0, 0x10($sp)
    /* 674B8 80078CA8 1400A9AF */  sw         $t1, 0x14($sp)
    /* 674BC 80078CAC 1800AAAF */  sw         $t2, 0x18($sp)
    /* 674C0 80078CB0 1C00ABAF */  sw         $t3, 0x1C($sp)
    /* 674C4 80078CB4 961E020C */  jal        func_80087A58
    /* 674C8 80078CB8 2000A3AF */   sw        $v1, 0x20($sp)
    /* 674CC 80078CBC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 674D0 80078CC0 00000000 */  nop
    /* 674D4 80078CC4 0800E003 */  jr         $ra
    /* 674D8 80078CC8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_80078C78
