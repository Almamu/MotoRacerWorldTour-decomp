nonmatching GPU_cw, 0x10

glabel GPU_cw
    /* A42C0 800B5AB0 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* A42C4 800B5AB4 08004001 */  jr         $t2
    /* A42C8 800B5AB8 49000924 */   addiu     $t1, $zero, 0x49
    /* A42CC 800B5ABC 00000000 */  nop
endlabel GPU_cw
