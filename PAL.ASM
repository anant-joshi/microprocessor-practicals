.model small
.data
array db 01h, 02h, 03h, 02h, 01h
pal db 02h
.code
start:
        mov ax, @data
        mov ds, ax
        mov si, 00h
        mov di, 04h
        mov cx, 05h
back:   mov ah, array[si]
        mov al, array[di]
        cmp ah, al
        jnz false
        inc si
        dec di
        dec cx
        jnz back

        ; palindrome true
        mov bx, 00H
        mov pal, 00H
        jmp last

        ;palindrome false
false:  mov bx, 01H
        mov pal, 01H

last:   mov ax, 4c00H
        int 21H
end start
