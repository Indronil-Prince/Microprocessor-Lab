.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
      
    L1:  
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    CMP BL,053
    JE EXIT
    JMP L1 
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN