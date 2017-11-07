.model small
.stack 100
assume cs:code
code segment
start:  mov ax, 2000H
        mov ds, ax
        mov ax, 3000H
        mov es, ax
        xor si, si
        xor di, di
        mov cx, 05H
        cld
        rep movsb
        mov ax, 4c00H
        int 21H
ends
end start
