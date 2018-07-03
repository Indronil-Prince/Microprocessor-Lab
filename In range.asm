.MODEL SMALL
.STACK 100H
.DATA
M1 DB 'IN RANGE$'
M2 DB 'OUT OF RANGE$'
M3 DB 'ENTER THE NUMBER$'
.CODE

MAIN PROC
     MOV AX,@DATA
     MOV DS,AX
     
     LEA DX,M3
     MOV AH,9
     INT 21H
     
     MOV AH,1 
     INT 21H
     MOV BL,AL
     SUB BL,48 
     
     MOV AH,2
     MOV DL,BL
     INT 21H
     
     CMP BL,4
     JGE L1
     
     L3:
     LEA DX,M2
     MOV AH,9
     INT 21H
     JMP EXIT
     
     L1:
     CMP BL,7
     JNG L2
     JMP L3
     
     L2:
     LEA DX,M1
     MOV AH,9
     INT 21H
     JMP EXIT
     
     EXIT:  
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN