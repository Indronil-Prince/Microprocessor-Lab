
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

LEA SI,STR1
LEA DI,STR2
MOV DX,0000H
L:
 MOV AX,LEN
 CMP AX,DX
 JE EXIT
 
 INC DX
 MOV BX,SI
 MOV CX,LEN2
 REPE CMPSB
 JNE LVL
 ADD COUNT,0001H
 MOV RES,'Y'

LVL:
 MOV AL,COUNT
 CMP AL,000H
 JNE LV
 MOV RES,'N'
 LV:
   INC BX
   MOV SI,BX
   LEA DI,STR2
   JMP L 
EXIT:
 ENDS

ret
STR1 DB 'HELLO HELLO'
LEN EQU ($-STR1)
STR2 DB 'ELLO'
LEN2 EQU ($-STR2)
RES DW ?
COUNT DB DUP(0)
C DB DUP(0>

ret




