.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC   
        MOV AH, 1
        INT 21H
        ;AL REGISTER IS USED FOR SCANNING
        ;IF YOU WANNA INPUT ANOTHER, MOV IT TO ANOTHER REGISTER AND INPUT WITH AL AGAIN.
        
        MOV BL, AL
        
        MOV AH,2
        MOV DL,0DH
        INT 21H    
        
        MOV DL, 0AH
        INT 21H
        
        MOV AH, 2
        MOV DL, BL
        INT 21H
        
        MAIN ENDP
END MAIN