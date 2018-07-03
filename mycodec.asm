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
    
    ADD BL,CL  
    SUB BL,48
    
    MOV AH,2
    MOV AL,0AH
    INT 21H
    MOV AL,0DH
              
    MOV DL,BL 
    INT 21H  
    
    EXIT:
    MOV  AH,4CH
    INT 21H
   MAIN ENDP 
END MAIN

    
