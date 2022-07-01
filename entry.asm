.segment "INES"
.include "ines.asm"
.scope bank_0 
.segment "PRG0" 
.include "bank_0.asm" 
.endscope 

.scope bank_1 
.segment "PRG1" 
.include "bank_1.asm" 
.endscope 

.scope bank_2 
.segment "PRG2" 
.include "bank_2.asm" 
.endscope 

.scope bank_3 
.segment "PRG3" 
.include "bank_3.asm" 
.endscope 

.scope bank_4 
.segment "PRG4" 
.include "bank_4.asm" 
.endscope 

.scope bank_5 
.segment "PRG5" 
.include "bank_5.asm" 
.endscope 

.scope bank_6 
.segment "PRG6" 
.include "bank_6.asm" 
.endscope 

.scope bank_7 
.segment "PRG7" 
.include "bank_7.asm" 
.endscope 

.scope bank_8 
.segment "PRG8" 
.include "bank_8.asm" 
.endscope 

.scope bank_9 
.segment "PRG9" 
.include "bank_9.asm" 
.endscope 

.scope bank_a
.segment "PRG10" 
.include "bank_a.asm" 
.endscope 

.scope bank_b
.segment "PRG11" 
.include "bank_b.asm" 
.endscope 

.scope bank_c
.segment "PRG12" 
.include "bank_c.asm" 
.endscope 

.scope bank_d
.segment "PRG13" 
.include "bank_d.asm" 
.endscope 

.scope bank_e
.segment "PRG14" 
.include "bank_e.asm" 
.endscope 

.scope bank_f
.segment "PRG15" 
.include "bank_f.asm" 
.endscope 

.segment "CHR" 
.incbin "ninja-gaiden-ii.inc.chr"
