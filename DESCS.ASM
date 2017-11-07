.model small
.stack 100
.data

array db 01h, 02h, 03h, 04h, 05h
count db 05h
count1 db 05h

.code
start:  mov ax, @data
        mov ds, ax
        mov ch, count
        lea bx, array

back2:  mov cl, count1
        lea si, array

back1:  mov ax, [si]
        cmp ah, al
        jz skip
        jc skip
        xchg ah, al
        mov [si], ax

skip:   inc si
        dec cl
        jnz back1
        dec ch
        dec count1
        jnz back2
        mov al, 00h
        mov ah, 4ch
        int 21h
end start
