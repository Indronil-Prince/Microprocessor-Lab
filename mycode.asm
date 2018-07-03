
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

data dw 4596h
hex dw dup(0)

call procedure
procedure proc Near
    mov ax,data
    and ax,000Fh
    mov dx,0001h
    mul dx
    mov bx,ax
    
    mov ax,data
    and ax,00F0h
    rol ax,04h
    mov dx,000Ah
    mul dx
    add bx,ax
    
    mov ax,data
    and ax,0F00h
    rol ax,08h
    mov dx,0064h
    mul dx
    add bx,ax
    
    mov ax,data
    and ax,0F000h
    rol ax,12
    mov dx,03E8h
    mul dx
    add bx,ax
    mov hex,bx
    
    ret
procedure endp

    
ret







