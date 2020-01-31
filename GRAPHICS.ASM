.model small
.stack 100h
.data
.code

main proc

mov ah,2
mov bh,0
mov dh,10
mov dl,10
int 10h
mov ah,9
mov al,65
mov bh,0
mov bl,65
mov bl,11000000b
mov cl,1
mov ah,4ch
int 21h
main endp
end main
