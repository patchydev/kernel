[BITS 16]
[ORG 0x7C00]

start:
    mov ah, 0x0E
    mov al, 'H'
    int 0x10

    mov al, 'i'
    int 0x10

    mov ah, 0x02
    mov al, 1
    mov ch, 0
    mov cl, 2
    mov dh, 0
    mov dl, 0x80
    mov bx, 0x1000
    int 0x13

    jc disk_error

    jmp 0x1000
disk_error:
    mov al, 'E'
    int 0x10
    jmp $

times 510 - ($ - $$) db 0
dw 0xAA55
