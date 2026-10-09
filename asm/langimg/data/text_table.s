.include "macro.inc"

.section .text, "ax"

nonmatching __text_table_textbin

glabel __text_table_textbin
.incbin "assets/langimg/text_table.textbin.bin"
endlabel __text_table_textbin
