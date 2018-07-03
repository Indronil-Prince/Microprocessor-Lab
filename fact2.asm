org 100h

lea si,num
lea di,rs
mov dx,n

lvl:
mov cx,[si]
lp:
    mov ax,a
    mov bx,b
    add ax,bx
    mov a,bx
    mov b,ax
loop lp
mov [di],ax
inc si
inc si
inc di
inc di
cmp dx,0h
je exit
dec dx
mov a,0h
mov b,01h
jmp lvl

exit:

ret
num dw 6h,5h,7h,3h,4h,2h
n dw 6
a dw 0
b dw 1
rs dw ?,?,?,?,?,?