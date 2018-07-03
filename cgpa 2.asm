
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov dl,0h
num db 05h,08h,04h,02h,01h
;v db dup<0>

lea bx,num 
mov cx,05

l1:
mov al,[bx]
add dl,al
inc bx
loop l1 

mov al,07h
mov bl,02h
div bl
;mov dl,al
;mov v,dl
ret




