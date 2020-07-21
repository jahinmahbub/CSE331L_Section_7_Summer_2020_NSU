
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX,K1
MOV AX,K2
K1 EQU 10;
K2 EQU 10;    
ADD AX,K1
ADD AX,K2

ret




