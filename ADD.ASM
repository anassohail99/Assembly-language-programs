;program to add two number

dosseg
.model small
.stack 100h
.data
.code

main proc

mov ah ,1
int 21h
mov bl,al

call enterkey

mov ah,1
int 21h
mov dl,al
call enterkey

add dl,bl               
add dl,48
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp

enterkey proc

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

enterkey endp
end main
