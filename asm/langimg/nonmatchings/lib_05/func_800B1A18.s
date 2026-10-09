nonmatching func_800B1A18, 0x1C

glabel func_800B1A18
    /* A0228 800B1A18 2000838C */  lw         $v1, 0x20($a0)
    /* A022C 800B1A1C 4D000224 */  addiu      $v0, $zero, 0x4D
    /* A0230 800B1A20 360082A0 */  sb         $v0, 0x36($a0)
    /* A0234 800B1A24 06000224 */  addiu      $v0, $zero, 0x6
    /* A0238 800B1A28 350082A0 */  sb         $v0, 0x35($a0)
    /* A023C 800B1A2C 0800E003 */  jr         $ra
    /* A0240 800B1A30 2C0083AC */   sw        $v1, 0x2C($a0)
endlabel func_800B1A18
