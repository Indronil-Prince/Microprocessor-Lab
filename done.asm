org 100h

call procedure
procedure proc near

mov ax,data
and ax,000Fh
mov dx,01h
mul dx
mov bx,ax

mov ax,data
and ax,00F0h
ror ax,04h
mov dx,0Ah
mul dx
add bx,ax

mov ax,data
and ax,0F00h
ror ax,08h
mov dx,64h
mul dx
add bx,ax

mov ax,data
and ax,0F000h 
ror ax,0Ch
mov dx,03E8h
mul dx
add bx,ax
mov hex,bx
ret
procedure endp 

ret

data dd 4596h
hex dd dup(0)