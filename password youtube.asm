
;password
.stack 100h
.data 
    message db 'enter p:$'
    passd   db 'kuetcse'
    count dw 5
    r8 db 'cse$'
    notr8 db 'kuet bme$ '
    
    
 .code
  start:
    mov ax,@data
    mov ds,ax
    mov cx,count
    mov bx,offset passd 
    mov dx,offset message
    mov ah,09
    int 21h
    
    
again:
    mov ah,08
    int 21h
    cmp al,[bx]
    jne error 
    inc bx 
    loop again  
    
    mov dx,offset r8
    mov ah,09
    int 21h
    jmp over
    
error: 
    mov dx,offset notr8
    mov ah,09
    int 21h  
over:
    mov ah,4ch
    int 21h
    
    
    
end start 
 end