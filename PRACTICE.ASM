dosseg
.model small
.stack 100h
.data

colstart db 30
colend db 60
row db 5
.code

main proc

mov ax,@data
mov ds,ax

mov ah,6
mov al,0
mov cx,10

shape:
push cx
mov ch,row
mov cl,colstart
mov bh, 00101111b
mov dh, row
mov dl, colend
int 10h
pop cx
dec colstart
dec colend
inc row
loop shape
mov ah,4ch
int 21h

main endp
end main
