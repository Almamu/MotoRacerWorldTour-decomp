nonmatching _padGetActSize, 0x38

glabel _padGetActSize
    /* E554 80141088 E3008290 */  lbu        $v0, 0xE3($a0)
    /* E558 8014108C E9008590 */  lbu        $a1, 0xE9($a0)
    /* E55C 80141090 EC008494 */  lhu        $a0, 0xEC($a0)
    /* E560 80141094 01004224 */  addiu      $v0, $v0, 0x1
    /* E564 80141098 43100200 */  sra        $v0, $v0, 1
    /* E568 8014109C 80100200 */  sll        $v0, $v0, 2
    /* E56C 801410A0 80180500 */  sll        $v1, $a1, 2
    /* E570 801410A4 21186500 */  addu       $v1, $v1, $a1
    /* E574 801410A8 03006324 */  addiu      $v1, $v1, 0x3
    /* E578 801410AC FC0F6330 */  andi       $v1, $v1, 0xFFC
    /* E57C 801410B0 04006324 */  addiu      $v1, $v1, 0x4
    /* E580 801410B4 21104300 */  addu       $v0, $v0, $v1
    /* E584 801410B8 0800E003 */  jr         $ra
    /* E588 801410BC 21104400 */   addu      $v0, $v0, $a0
endlabel _padGetActSize
