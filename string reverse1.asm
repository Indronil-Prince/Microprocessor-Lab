.model small
.stack 100h
.data
    text1 db 'hello'
    text2 db 5 dup(?)
    count dw 5
.code
begin: 
     mov  ax,@data
     mov ds,ax
     mov es,ax
     mov cx,count
     mov si,0
     mov di,0
     add di,count
     dec di
     
again:     mov al,text1[si]
           mov text2[di],al
           inc si
           dec di
           loop again 
           
           
           mov ah,4ch
           int 21h
end begin 