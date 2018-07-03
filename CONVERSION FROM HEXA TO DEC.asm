.MODEL SMALL
.STACK 100H
.DATA

X DB ?
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV X,AL
    
    MOV AH,2
    MOV DL,'1'
    INT 21H
    
    MOV AH,2
    SUB X,17
    MOV DL,X
    INT 21H
    
    MOV AH,4CH
    INT 12H
    MAIN ENDP
END MAIN