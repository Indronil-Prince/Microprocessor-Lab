
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

   mov dx,4h
   
   mov  bx,ln
   
   for1:
   dec ln
   lea si,arr
   mov di,si
   
  
   mov cx,dx
   for2:
   mov al,[si]
   inc di
   inc di 
   mov bl,[di]
   cmp al,bl
   jg a
   b: 
   inc si
   inc si
   loop for2
   
   dec dx 
   inc si
   inc si
   cmp ln,0h
   je exit
   
   jmp for1
   
   jmp exit
   
   a:
        mov [di],al
        mov [si],bl
        jmp b
   exit:

ret
arr dw 6,3,4,9,1
ln dw 4




