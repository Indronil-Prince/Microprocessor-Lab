
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,07h
mov bl,02h
div bl
mov dl,0h
num dd 50h,08h,04h,02h,01h


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
lea bx,num 
mov cx,05

l2:  
jmp l9
l10:
inc bx
inc di
loop l2

jmp exit


l9:
mov al,[bx]

cmp al,50h
jge l7

cmp al,46h
jge l8
 
cmp al,3ch
jge l3   

cmp al,32h
jge l4  

cmp al,28h
jge l5 

mov [di],'f'
jmp l10

  
l7:
mov [di],'+A'
jmp l10

l8:
mov [di],'A'
jmp l10
   
l3:
mov [di],'B'
jmp l10
   
l4:
mov [di],'C'
jmp l10

l5:
mov [di],'D'
jmp l10
exit:
ret
v db dup<0>
msg dw 10 dup<0>




