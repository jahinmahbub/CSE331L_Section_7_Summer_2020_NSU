
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

A DB 02,04,06,08,10
B DB 10 DUP(0,A)     

;a DB 10,15,10,11,12
;b DB 10h,15h,10h,11h,12h ; Hex Values
; a b are basically int a[10] = {10,11,12}  

;c DB 10 DUP(?)
;d DB 5 DUP(1,2)     ;1,2,1,2
    
;ARR1 DB DUP(5,10,12)
;MOV BX, offset ARR1
;MOV [BX],6
;MOV [BX+1],10       

MOV BX,10
;INC BX; DOING i++ in C Basically. 
DEC BX;DOING i-- in C Basically.

MOV BX, 35H
MOV DI, 12H
LEA SI, [BX+DI]

ret




