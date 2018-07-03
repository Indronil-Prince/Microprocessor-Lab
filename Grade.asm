
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si,grade
lea di,gpa

mov al,mark
cmp al,50h
jge l1

cmp al,46h
jge l2
cmp al,3ch
jge l3
cmp al,32h
jge l4

mov [si],0h
mov [di],'f'
jmp exit

l1:
mov [si],05h
mov [di],'a'
jmp exit
  
l2:
mov [si],04h
mov [di],'b'
jmp exit

l3:
mov [si],03h
mov [di],'c'
jmp exit

l4:
mov [si],02h
mov [di],'d'
jmp exit  
 
exit:

ret
mark db 50h
gpa db ?
grade db ?



