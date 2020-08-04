.MODEL SMALL
.STACK 100H

.DATA
MSG1 DB "HELLO WORLD$"
MSG2 DB "ASSEMBLY LANGUAGE CSE331$"

.CODE
MAIN PROC
        MOV AX,@DATA
        MOV DS, AX ;these 2 lines for initializing. Only write once
        
        LEA DX, MSG1
        MOV AH,9
        INT 21H  ;these 3 lines for printing
        
        MOV AH, 2
        MOV DL,0DH
        INT 21H   
        
        MOV DL,0AH
        INT 21H   ;these 5 lines for spacing and new line
        
        LEA DX,MSG2 
        MOV AH,9
        INT 21H  ;these 3 lines for printing 
        
        MOV AH,4CH
        INT 21H  ;these 2 lines for carriage return
        
MAIN ENDP     
END MAIN