nonmatching _spu_setInTransfer, 0x28

glabel _spu_setInTransfer
    /* 15610 80148144 01000224 */  addiu      $v0, $zero, 0x1
    /* 15614 80148148 04008214 */  bne        $a0, $v0, .L8014815C
    /* 15618 8014814C 00000000 */   nop
    /* 1561C 80148150 1C80013C */  lui        $at, %hi(_spu_inTransfer)
    /* 15620 80148154 59200508 */  j          .L80148164
    /* 15624 80148158 48FF20AC */   sw        $zero, %lo(_spu_inTransfer)($at)
  .L8014815C:
    /* 15628 8014815C 1C80013C */  lui        $at, %hi(_spu_inTransfer)
    /* 1562C 80148160 48FF22AC */  sw         $v0, %lo(_spu_inTransfer)($at)
  .L80148164:
    /* 15630 80148164 0800E003 */  jr         $ra
    /* 15634 80148168 00000000 */   nop
endlabel _spu_setInTransfer
