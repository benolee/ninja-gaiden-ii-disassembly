.segment "INES"
.include "ines.asm"
.scope bank_0 
.segment "PRG0" 
.include "bank.0.asm" 
.endscope 

.scope bank_1 
.segment "PRG1" 
.include "bank.1.asm" 
.endscope 

.scope bank_2 
.segment "PRG2" 
.include "bank.2.asm" 
.endscope 

.scope bank_3 
.segment "PRG3" 
.include "bank.3.asm" 
.endscope 

.scope bank_4 
.segment "PRG4" 
.include "bank.4.asm" 
.endscope 

.scope bank_5 
.segment "PRG5" 
.include "bank.5.asm" 
.endscope 

.scope bank_6 
.segment "PRG6" 
.include "bank.6.asm" 
.endscope 

.scope bank_7 
.segment "PRG7" 
.include "bank.7.asm" 
.endscope 

.scope bank_8 
.segment "PRG8" 
.include "bank.8.asm" 
.endscope 

.scope bank_9 
.segment "PRG9" 
.include "bank.9.asm" 
.endscope 

.scope bank_10 
.segment "PRG10" 
.include "bank.a.asm" 
.endscope 

.scope bank_11 
.segment "PRG11" 
.include "bank.b.asm" 
.endscope 

.scope bank_12 
.segment "PRG12" 
.include "bank.c.asm" 
.endscope 

.scope bank_13 
.segment "PRG13" 
.include "bank.d.asm" 
.endscope 

.scope bank_14 
.segment "PRG14" 
.include "bank.e.asm" 
.endscope 

.scope bank_15 
.segment "PRG15" 
.include "bank.f.asm" 
.endscope 

.segment "CHR" 
.incbin "ninja-gaiden-ii.chr"
