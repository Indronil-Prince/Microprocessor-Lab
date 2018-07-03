lea si,v
lea di,rs
mov bx,cc

l5:
dec bx
mov cc,bx

mov ax,[si]

mov c,0h
mov d,01h
mov cx,ax

l2:       
call l1
loop l2

mov [di],bx
inc di
inc di
inc si
inc si
mov bx,cc
cmp bx,1h
jge l5
jmp exit

l1:
mov bx,c
mov dx,d
add bx,dx
mov d,bx
mov c,dx
loop l1

exit:

mov rs,bx
ret

v dw 5h,6h,2h,3h,4h
c dw 0h
d dw 1h
rs dw ?,?,?,?,?
cc dw 05h