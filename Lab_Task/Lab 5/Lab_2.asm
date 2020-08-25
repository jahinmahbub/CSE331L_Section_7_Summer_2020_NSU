.model small
.stack 100h
.data
prompt db 'enter the digit: $'
msg db 'the entered digit is:$'
.code
main proc
        mov ax,@data
        mov ds, ax
        
        lea dx,prompt
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        
        mov bl,al
        
        mov ah, 2
        mov dl,0dh
        int 21h
        
        mov dl,0ah
        int 21h
        
        lea dx,msg
        mov ah,9
        int 21h
        
        cmp bl,30h 
        
        jz @zero
        jg @positive
        jl @negative
        
        
@zero:
mov dl,'Z'
jmp @print

@positive:
mov dl,'P'
jmp @print

@negative:
mov dl,'N'
jmp @print

@print:
mov ah,2
int 21h             

mov ah,4ch
int 21h

main endp
end main
