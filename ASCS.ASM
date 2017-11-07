.model small
.stack 100
.data
array db 05H, 04H, 03H, 02H, 01H
.code
start:  mov ax, @data
        mov ds, ax
        mov ch, 05H
        mov cl, 05H
        lea ax, array

back2:  xor si, si
        mov cl, 05H

back1:  mov ax, [si]
        cmp al, ah
        jz skip
        jc skip
        xchg al, ah
        mov [si], ax

skip:   inc si
        dec cl
        jnz back1
        dec ch
        jnz back2
        mov al, 00h
        mov ah, 4ch
        int 21H
end start
