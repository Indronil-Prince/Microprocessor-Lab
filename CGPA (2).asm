
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

LEA DI,mark
LEA SI,gpa
LEA BX,grade 
mov cx,5
start:
     cmp [DI],80
     jae a
     jb gt
     
     gt:
       cmp [DI],70
       jae b
       jb gtt
      
     gtt:
       cmp [DI],60
       jae c
       jb gttt
       
     gttt:
       cmp [DI],50
       jae d
       jb f
       
     f:
       mov [BX],'F'
       mov [SI],0
       jmp end 
       
       
     d:
       mov [BX],'D'
       mov [SI],2
       jmp end 
       
     c:
       mov [BX],'C'
       mov [SI],3
       jmp end
     
     b:
       mov [BX],'B'
       mov [SI],4
       jmp end
     
     a:
       mov [BX],'A'
       mov [SI],5
       jmp end
end:
   inc DI
   inc SI
   inc BX
   loop start 
   
LEA SI,gpa
mov al,0
mov cx,5
new:
   add al,[SI]
   inc SI
   loop new
   
mov bl,5
div bl 
mov cgpa,al
ret
mark db 85,75,65,55,30
gpa db ?,?,?,?,?
grade db ?,?,?,?,?
cgpa db dup(0)