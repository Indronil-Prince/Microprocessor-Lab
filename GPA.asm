; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

start:
mov ax,44
cmp ax,80
jae a
jb gt

gt:
cmp ax,70
jae b
jb gtt

gtt:
cmp ax,60
jae c
jb gttt

gttt:
cmp ax,50
jae d
jb f

f:
mov msg,'F'
mov gpa ,'0'
jmp end

d:
mov msg,'D'
mov gpa ,'4'
jmp end

c:
mov msg,'C'
mov gpa ,'3'
jmp end
 
b: 
mov msg,'D'
mov gpa ,'4'
jmp end

a:
mov msg,'A'
mov gpa ,'5'
jmp end
end:
ret

msg dw dup<0>
gpa db dup<0