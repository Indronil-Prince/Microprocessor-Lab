.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV CL,AL
    INT 21H
    MOV BH,AL
    
    CMP BL,CL
    JGE L2
    
    CMP CL,BH
    JGE L4
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
    
    L4:
    MOV AH,2
    MOV DL,CL
    INT 21H
    JMP EXIT
    
    L2:
    CMP BL,BH
    JGE L3
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
    
    L3:
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXIT
      
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN