.model small
.stack 100h

.data
 prompt_1 DB 'enter the binary num:$'
 prompt_2 DB 0dh,0ah, 'given binary num in rev order:$'
 
.code
 main proc
        mov ax,@data
        mov ds,ax
        
        lea dx,prompt_1
        mov ah,9
        int 21h
        
        XOR bl,bl
        
        mov cx,8
        mov ah,1
        
@input:
        int 21h
        cmp al,0dh
        je @end 
        and al,0fh
        shl bl,1
        or bl,al
        
  loop @input
          
        
@end:
        mov al,bl
        mov cx,8   
        
@loop:
        shl al,1
        rcr bl,1
loop @loop

        lea dx, prompt_2
        mov ah,9
        int 21h

        mov cx, 8
        mov ah, 2
        
@output:
        shl bl, 1
jnc @zero
        mov dl,31h
jmp @print
        
@zero:
        mov dl,30h
        
        
@print:
        int 21h
loop @output

        mov ah,4ch
        int 21h
        
        main endp
 end main