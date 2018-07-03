

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov a,15h
mov b,16h
mov c,20h
mov al,a
mov bl,b
mov cl,c
     
cmp al,bl
ja ag

cmp bl,cl
ja bg
mov first, 'Z'
mov second, 'Y'
mov third, 'X'
jmp exit



bc:
cmp bl,cl
ja bs
mov second, 'Z'
mov third, 'Y'
jmp exit


bs:
mov second, 'Y'
mov third, 'Z'
jmp exit

bg:
mov first, 'Y'
jmp ac


ac: 
cmp al,cl
ja as
mov second, 'Y'
mov third, 'X'
jmp exit

as:

mov second, 'X'
mov third, 'Z'
jmp exit


ja ag
mov first, 'Z'
mov second, 'X'
mov third, 'Y'
jmp exit

ag: 
cmp al,cl
ja agg
mov first, 'Z'
mov second, 'X'
mov third, 'Y'
jmp exit


agg:
mov first, 'X'
jmp bc


exit:
ret


first dw dup(0)
second dw dup(0)
third dw dup(0)  
a db dup(0)
b db dup(0)
c db dup(0)




