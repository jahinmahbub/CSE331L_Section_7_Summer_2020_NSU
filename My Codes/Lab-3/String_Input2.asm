.MODEL SMALL
.STACK 100H
; SLIDE EXAMPLE 3'S ALTERNATE VERSION
.DATA
MSG_1 EQU "ENTER THREE NUMBERS:$"
MSG_2 EQU 0DH, 0AH, "THE NUMBERS ARE: $", 0DH, 0AH,'$'
MSG_3 EQU 0DH, 0AH, '$'
 
PROMPT_1 DB MSG_1
PROMPT_2 DB MSG_2
NEWLINE DB MSG_3

.CODE
MAIN PROC
        MOV AX, @DATA
        MOV DS,AX
        
        LEA DX, PROMPT_1
        MOV AH, 9
        INT 21H 
        
        MOV AH,1
        INT 21H    
        
        MOV BL,AL
        
        MOV AH,1
        INT 21H
        
        MOV BH, AL
        
        MOV AH,1
        INT 21H
        
        MOV CL, AL
        
        LEA DX, PROMPT_2
        MOV AH, 9
        INT 21H  
        
        LEA DX, NEWLINE
        MOV AH, 9
        INT 21H
        
        MOV AH,2 
        MOV DL,BL
        INT 21H
        
        LEA DX, NEWLINE
        MOV AH, 9
        INT 21H
        
        MOV AH,2 
        MOV DL,BH
        INT 21H
        
        LEA DX, NEWLINE
        MOV AH, 9
        INT 21H
        
        MOV AH,2 
        MOV DL,CL
        INT 21H    
        
        MOV AH,4CH
        INT 21H
        
        
        MAIN ENDP
END MAIN