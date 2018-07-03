.model small
.data
str1 db 'Its fucking booring thing to do'
db 100 dup(0)
str2 db 35 dup(0)

.code
start:
    mov ax,data
    mov ds,ax
    mov es,ax
    lea si,str1
    lea di,str2
    mov cx,35
    cld
    rep movsb
    ;mov ah,4ch
    ;int 21h
end start
end 

