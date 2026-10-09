nonmatching FlushCache, 0x10

glabel FlushCache
    /* A42B0 800B5AA0 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* A42B4 800B5AA4 08004001 */  jr         $t2
    /* A42B8 800B5AA8 44000924 */   addiu     $t1, $zero, 0x44
    /* A42BC 800B5AAC 00000000 */  nop
endlabel FlushCache
