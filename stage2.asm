[BITS 16]
[ORG 0x1000]

start:
    mov ah, 0x0E
    mov al, ' '
    int 0x10
    mov al, 'S'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'c'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 'n'
    int 0x10
    mov al, 'd'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 's'
    int 0x10
    mov al, 't'
    int 0x10
    mov al, 'a'
    int 0x10
    mov al, 'g'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, '!'
    int 0x10

    hlt

    jmp $

times 512 - ($ - $$) db 0
