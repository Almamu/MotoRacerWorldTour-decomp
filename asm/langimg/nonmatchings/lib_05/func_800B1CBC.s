nonmatching func_800B1CBC, 0x20

glabel func_800B1CBC
    /* A04CC 800B1CBC 47000224 */  addiu      $v0, $zero, 0x47
    /* A04D0 800B1CC0 360082A0 */  sb         $v0, 0x36($a0)
    /* A04D4 800B1CC4 24008224 */  addiu      $v0, $a0, 0x24
    /* A04D8 800B1CC8 2C0082AC */  sw         $v0, 0x2C($a0)
    /* A04DC 800B1CCC 01000224 */  addiu      $v0, $zero, 0x1
    /* A04E0 800B1CD0 240085A0 */  sb         $a1, 0x24($a0)
    /* A04E4 800B1CD4 0800E003 */  jr         $ra
    /* A04E8 800B1CD8 350082A0 */   sb        $v0, 0x35($a0)
endlabel func_800B1CBC
