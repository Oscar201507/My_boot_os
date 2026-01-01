BITS 16
ORG 0x7C00

start:
    mov ax, 0x03
    int 0x10

    mov si, msg
.loop:
    lodsb
    test al, al
    jz $
    mov ah, 0x0E
    int 0x10
    jmp .loop

msg db "Hello from GitHub-built OS!",0

times 510-($-$$) db 0
dw 0xAA55
