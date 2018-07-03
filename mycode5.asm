
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
LEA bx,num
mov cx,3h 

next:
    
mov ax,x
cmp [bx],ax

jae label1
jmp label2

label1:
      ADD g,04h
      jmp EXIT 

label2:
      mov ax,y
      cmp [bx],ax

jae label3
jmp label4

label3:
      ADD g,03h
      jmp EXIT

label4:
      mov ax,z
      cmp [bx],ax

jae label5
jmp label6

label5:
      ADD g,02h
      jmp EXIT  

label6:
      mov ax,w
      cmp [bx],ax

jae label7



label7:
      ADD g,01h
      jmp EXIT 

EXIT: 

inc bx
loop next

mov cx,03h
mov ax,g
div cx
mov avg,ax



ret 

num   dw 4bh,33h,50h  

x dw 50h
y dw 46h
z dw 3ch 
w dw 32h

g dw ?  

avg dw ?



