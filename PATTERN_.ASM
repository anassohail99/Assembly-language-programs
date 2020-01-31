;1
;22 
;333
;4444
;55555                   

dosseg
.model small
.stack 100h
.data
.code

main proc

mov ax ,@data
mov ds ,ax

mov ah,1
int 21h

mov cl,al ;transferring input value to counter register
sub cl,48 ; converting character to number

mov dl,10 ;entring to a new line
mov ah,2
int 21h
mov dl,13
mov ah,2
int 21h
mov bx,1

l1:

push cx
mov cx,bx

l2:

mov dx,bx
add dx,48
mov ah,2
int 21h
loop l2

mov dl,10
mov ah,2
int 21h
mov dl,13
mov ah,2
int 21h
inc bl
pop cx
loop l1
mov ah,4ch
int 21h

main endp
end main















