.data
    s1 db 'ho'
    s2 db 2 dup(?)
    count dw 2
    
 .code
  start:
    mov ax,@data
    mov ds,ax
    mov es,ax
    mov cx,count
    mov si,0
    mov di,0 
    add di,count
    dec di
again:    
    mov al,s1[si]
    mov s2[di],al
    inc si
    dec di
    loop again
    
    end start 
    end