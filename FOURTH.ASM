;subtract two numbers
dosseg
.model small
.stack 100h
.data
.code


main proc
mov al , 1
int 21h
mov bl , al
mov cl , 1
sub bl , cl
add bl , 48

mov dl , bl
mov ah , 2
int 21h

mov ah , 4ch
int 21h
main endp
end main
