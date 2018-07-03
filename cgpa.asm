
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea bx,mark
lea si,grade
lea di,gpa

mov cx,05
l8:
jmp l7
l9:
inc bx
inc si
inc di
loop l8
jmp exit

l7:
mov al,[bx]
cmp al,50h
jge l1

cmp al,46h
jge l2
cmp al,3ch
jge l3
cmp al,32h
jge l4

mov dl,0h
mov [si],dl
mov [di],'f'
jmp l9

l1:
mov dl,05h
mov [si],dl
mov [di],'a'
jmp l9
  
l2:
mov dl,04h
mov [si],dl
mov [di],'b'
jmp l9

l3:
mov dl,03h
mov [si],dl
mov [di],'c'
jmp l9

l4:
mov dl,02h
mov [si],dl
mov [di],'d'
jmp l9  
 
exit:

ret
mark db 50h,32h,48h,5ah,32h
gpa db 'a','a','a','a','a'
grade db ?



