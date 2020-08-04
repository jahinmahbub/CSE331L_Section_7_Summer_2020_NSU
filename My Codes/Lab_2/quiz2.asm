
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

ARR1 DB DUP(5,10,12)
MOV BX, offset ARR1
MOV [BX],6
MOV [BX+1],10

ret




