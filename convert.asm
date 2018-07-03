
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
lea si,bcd
lea di,rs

mov cx,01h
l3:
jmp l1
l2:
inc si
inc di
loop l3 
jmp exit


l1:
mov v,0h
mov ax,[si]
and ax,000fh
mov bx,1h
mul bx
mov v,ax  

mov ax,[si]
and ax,00f0h
ror ax,4d
mov bx,0ah
mul bx
add v,ax
 
mov ax,[si] 
and ax,0f00h
ror ax,8d
mov bx,64h
mul bx
add v,ax

mov ax,[si]
and ax,0f000h
ror ax,12d
mov bx,3e8h
mul bx
add v,ax

mov dx,v
mov [di],dx
jmp l2

exit:

ret

bcd dw 4596h,1687h
rs dw ?,?
v dw ?



