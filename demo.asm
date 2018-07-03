
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,07h
mov bl,02h
div bl
mov dl,0h
num db 05h,08h,04h,02h,01h


lea bx,num 
mov cx,05

l1:
mov al,[bx]
add dl,al
inc bx
loop l1

mov ax,dx
mov bl,05h
div bl
mov bl,al
mov v,bl

lea di,msg 
mov cx,05

l2:
mov [di],'F'
inc di
loop l2
jmp exit 

exit:
ret
v db dup<0>
msg dw 10 dup<0>




