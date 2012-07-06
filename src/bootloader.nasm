bits 16
org 0x7C00

mov ax, 0x0000 ; must be done in 2 steps
mov ds, ax     ; setup data segement offset for any BIOS interrupts that expect it inside DS

jmp $
times 510-($-$$) db 0
dw 0xAA55

