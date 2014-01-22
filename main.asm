bits 16
cpu 8086

jmp start

start:
mov ax,0x0004
int 0x10

;Tweak a 320x200x2 mode into a 256x200x2 mode.

mov dx,0x03d4
mov ax,0x2001
out dx,ax
mov ax,0x2502
out dx,ax

mov ax,0xB800
mov es,ax
mov di,0x4503 ;random test value

int 0x67