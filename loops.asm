
org 100h 
 
  mov cx,3
  
  lea bx,num 
  W:
  mov al,[bx]
  mov bx,79h
  cmp al,dl
  jg l1 
  jl l2 
  
  
 
  
  
  
  l1:
  mov O,'A+'
  jmp l 
  
  l2:
  mov dl,69h
  cmp al,dl
  jg l21
  jl l3
  
  l21: 
   mov O,'A-'
  jmp l 
         
     
  l3:
  mov dl,32h
  cmp al,dl
  jg l31
  jl l32   
  
   
  l31: 
   mov O,'D'
  jmp l 
         
    
  l32: 
   mov O,'F'
  jmp l  
  
  l:
  inc bx
  loop W
                  
    
ret 
 num db 85h,70h,30h     
 O dw dup<0>  
