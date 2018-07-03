
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov bl,08h
mov cl,05h
mov dl,06h

cmp bl,cl
jge l1
jmp l7

l7:
cmp cl,dl
jge l8

l8:
mov greatest,'c'
cmp bl,dl
jge l9  
mov greater,'d'
mov smallest,'b'  
jmp exit

l9:
mov greater,'b'
mov smallest,'d' 
jmp exit

l1:
cmp bl,dl
jge l2
cmp dl,cl
jge l5

l5:
mov greatest,'d'
cmp bl,cl
jge l6
mov greater,'c'
mov smallest,'b'

l6:
mov greater,'b'
mov smallest,'c'
jmp exit

l2:
mov greatest,'b'
cmp cl,dl
jge l3

mov greater,'d'
mov smallest,'c'
jmp exit

l3:
mov greater,'c'
mov smallest,'d'
jmp exit 

exit:

ret    
greatest dw dup<0>
greater dw dup<0>
smallest dw dup<0>




