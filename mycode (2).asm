
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
NUM DB 05h,08h,01h                  
LEA BX,NUM
MOV AL,[BX]
INC BX
ADD AL,[BX]
INC BX
ADD AL,[BX]


ret




