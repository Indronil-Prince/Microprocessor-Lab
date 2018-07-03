
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
mov al,07h
mov bl,02h
div bl

cmp ah,00h
je l1

mov msg,'od'
jmp exit

l1:
mov msg,'ev'

exit:


ret
msg dw dup<0>





