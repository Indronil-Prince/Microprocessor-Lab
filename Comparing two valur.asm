.MODEL SMALL
.STACK 100H
.DATA

M1 DB 'ENTER THE NUMBER: $'
M2 DB 'GREATER $'
M3 DB 'SMALLER $'    
M4 DB 'SAME $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    SUB BL,48
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
     
    CMP BL,5
    JL L1 
    JE L2
    
    LEA DX,M2
    MOV AH,9
    INT 21H   
    
    JMP EXIT 
    
    L2:
    LEA DX,M4
    MOV AH,9
    INT 21H
    JMP EXIT
    
    L1:
    LEA DX,M3
    MOV AH,9
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
