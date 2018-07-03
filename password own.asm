.model small
.stack 100h
.data
   m db 'enter p:$'
   p db 'kanon'
   r db 'baaal diso password$'
   n db 'baaaler password diso$'  
   c dw 5
   
.code 
start:
    mov ax,@data
    mov ds,ax
    mov cx,c
    mov bx,offset p
    mov dx,offset m
    mov ah,09
    int 21h
    
again:
   mov ah,08h
   int 21h
   cmp al,[bx]
   jne error
   inc bx
   loop again   
   
   mov dx,offset r
   mov ah,09
   int 21h
   jmp over
   
error:
    mov dx,offset n
    mov ah,09
    int 21h
over:
    mov ah,4ch
    int 21h
    
end start
end                  
              
              
          