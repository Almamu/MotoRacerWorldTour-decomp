nonmatching func_800B52C0, 0x8C

glabel func_800B52C0
    /* A3AD0 800B52C0 FF1F083C */  lui        $t0, (0x1FFFFFFF >> 16)
    /* A3AD4 800B52C4 FFFF0835 */  ori        $t0, $t0, (0x1FFFFFFF & 0xFFFF)
    /* A3AD8 800B52C8 0E80023C */  lui        $v0, %hi(D_800DE6E8)
    /* A3ADC 800B52CC E8E640AC */  sw         $zero, %lo(D_800DE6E8)($v0)
    /* A3AE0 800B52D0 0E80023C */  lui        $v0, %hi(D_800DE6EC)
    /* A3AE4 800B52D4 ECE640AC */  sw         $zero, %lo(D_800DE6EC)($v0)
    /* A3AE8 800B52D8 0C80023C */  lui        $v0, %hi(D_800BCF60)
    /* A3AEC 800B52DC 0C80043C */  lui        $a0, %hi(D_800BCF64)
    /* A3AF0 800B52E0 60CF438C */  lw         $v1, %lo(D_800BCF60)($v0)
    /* A3AF4 800B52E4 0E80023C */  lui        $v0, %hi(D_800DE6F0)
    /* A3AF8 800B52E8 64CF878C */  lw         $a3, %lo(D_800BCF64)($a0)
    /* A3AFC 800B52EC 0E80043C */  lui        $a0, %hi(D_800DE6F8)
    /* A3B00 800B52F0 0C80063C */  lui        $a2, %hi(D_800BCF78)
    /* A3B04 800B52F4 F0E643AC */  sw         $v1, %lo(D_800DE6F0)($v0)
    /* A3B08 800B52F8 0200E234 */  ori        $v0, $a3, 0x2
    /* A3B0C 800B52FC 040062AC */  sw         $v0, 0x4($v1)
    /* A3B10 800B5300 0D80023C */  lui        $v0, %hi(D_800C8DC8)
    /* A3B14 800B5304 000060AC */  sw         $zero, 0x0($v1)
    /* A3B18 800B5308 0C80033C */  lui        $v1, %hi(D_800BCF7C)
    /* A3B1C 800B530C C88D428C */  lw         $v0, %lo(D_800C8DC8)($v0)
    /* A3B20 800B5310 7CCF658C */  lw         $a1, %lo(D_800BCF7C)($v1)
    /* A3B24 800B5314 78CFC38C */  lw         $v1, %lo(D_800BCF78)($a2)
    /* A3B28 800B5318 21104500 */  addu       $v0, $v0, $a1
    /* A3B2C 800B531C 24186800 */  and        $v1, $v1, $t0
    /* A3B30 800B5320 21104300 */  addu       $v0, $v0, $v1
    /* A3B34 800B5324 08004224 */  addiu      $v0, $v0, 0x8
    /* A3B38 800B5328 F8E682AC */  sw         $v0, %lo(D_800DE6F8)($a0)
    /* A3B3C 800B532C F8E68424 */  addiu      $a0, $a0, %lo(D_800DE6F8)
    /* A3B40 800B5330 01000224 */  addiu      $v0, $zero, 0x1
    /* A3B44 800B5334 040087AC */  sw         $a3, 0x4($a0)
    /* A3B48 800B5338 0C0087AC */  sw         $a3, 0xC($a0)
    /* A3B4C 800B533C 080080AC */  sw         $zero, 0x8($a0)
    /* A3B50 800B5340 100080AC */  sw         $zero, 0x10($a0)
    /* A3B54 800B5344 0800E003 */  jr         $ra
    /* A3B58 800B5348 140082AC */   sw        $v0, 0x14($a0)
endlabel func_800B52C0
