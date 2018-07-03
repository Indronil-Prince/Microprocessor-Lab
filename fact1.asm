org 100h

mov dx,num
dec dx

mov cx,dx
lp:
    mov ax,a
    mov bx,b
    add ax,bx
    mov a,bx
    mov b,ax
loop lp
mov rs,ax





ret
num dw 6h,5h,7h,3h,4h,2h
n dw 6
a dw 0
b dw 1
rs dw ?,?,?,?,?,?