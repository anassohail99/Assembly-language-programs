.model small
.stack 100h
.data

ev db 'Even No$'
od db 'Odd No$'
.code

main proc

mov ax,@data
mov ds,ax

mov bl,2
mov ah,1
int 21h

div bl
cmp ah,0
je Iseven

call enterkey

mov dx,offset od
mov ah,9
int 21h
call return

Iseven:
call enterkey
mov dx,offset ev
mov ah,9
int 21h
call return

main endp

enterkey proc

mov dx, 10
mov ah, 2
int 21h

mov dx, 13
mov ah, 2
int 21h

enterkey endp

return proc

mov ah,4ch
int 21h

return endp

end main
