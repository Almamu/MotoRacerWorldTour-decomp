nonmatching func_8001D07C, 0x8C

glabel func_8001D07C
    /* B88C 8001D07C CDCD023C */  lui        $v0, (0xCDCDCDCD >> 16)
    /* B890 8001D080 CDCD4234 */  ori        $v0, $v0, (0xCDCDCDCD & 0xFFFF)
    /* B894 8001D084 14008324 */  addiu      $v1, $a0, 0x14
    /* B898 8001D088 140082AC */  sw         $v0, 0x14($a0)
    /* B89C 8001D08C 040062AC */  sw         $v0, 0x4($v1)
    /* B8A0 8001D090 080062AC */  sw         $v0, 0x8($v1)
    /* B8A4 8001D094 2C008324 */  addiu      $v1, $a0, 0x2C
    /* B8A8 8001D098 200082AC */  sw         $v0, 0x20($a0)
    /* B8AC 8001D09C 240082AC */  sw         $v0, 0x24($a0)
    /* B8B0 8001D0A0 280082AC */  sw         $v0, 0x28($a0)
    /* B8B4 8001D0A4 2C0082AC */  sw         $v0, 0x2C($a0)
    /* B8B8 8001D0A8 040062AC */  sw         $v0, 0x4($v1)
    /* B8BC 8001D0AC 080062AC */  sw         $v0, 0x8($v1)
    /* B8C0 8001D0B0 380082AC */  sw         $v0, 0x38($a0)
    /* B8C4 8001D0B4 3C0082AC */  sw         $v0, 0x3C($a0)
    /* B8C8 8001D0B8 400082AC */  sw         $v0, 0x40($a0)
    /* B8CC 8001D0BC 440082AC */  sw         $v0, 0x44($a0)
    /* B8D0 8001D0C0 480082AC */  sw         $v0, 0x48($a0)
    /* B8D4 8001D0C4 4C0082AC */  sw         $v0, 0x4C($a0)
    /* B8D8 8001D0C8 000080AC */  sw         $zero, 0x0($a0)
    /* B8DC 8001D0CC 040080AC */  sw         $zero, 0x4($a0)
    /* B8E0 8001D0D0 080080AC */  sw         $zero, 0x8($a0)
    /* B8E4 8001D0D4 0C0080AC */  sw         $zero, 0xC($a0)
    /* B8E8 8001D0D8 100080AC */  sw         $zero, 0x10($a0)
    /* B8EC 8001D0DC 680080AC */  sw         $zero, 0x68($a0)
    /* B8F0 8001D0E0 500080AC */  sw         $zero, 0x50($a0)
    /* B8F4 8001D0E4 540080AC */  sw         $zero, 0x54($a0)
    /* B8F8 8001D0E8 580080AC */  sw         $zero, 0x58($a0)
    /* B8FC 8001D0EC 080080AC */  sw         $zero, 0x8($a0)
    /* B900 8001D0F0 5C0080AC */  sw         $zero, 0x5C($a0)
    /* B904 8001D0F4 0C0080AC */  sw         $zero, 0xC($a0)
    /* B908 8001D0F8 100080AC */  sw         $zero, 0x10($a0)
    /* B90C 8001D0FC 640080AC */  sw         $zero, 0x64($a0)
    /* B910 8001D100 0800E003 */  jr         $ra
    /* B914 8001D104 600080AC */   sw        $zero, 0x60($a0)
endlabel func_8001D07C
