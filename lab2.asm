;Name: Shinde Veena Vinod
;Roll No.: CO2137
;Title: Write an X86/64 ALP to accept a string and to display its length.

section .data
m2 db 10,10,"Enter the string"
m2len equ $-m2
m3 db "Length of the string"
m3len equ $-m3

section .bss
string resb 20
count resb 1
dispbuf resb 2

%macro disp 2
    MOV EAX, 4          ; write
    MOV EBX, 1          ; std output
    MOV ECX, %1         ; argument
    MOV EDX, %2
    int 80h
%endmacro

%macro acceptstr 1
    MOV EAX, 3          ; read
    MOV EBX, 0          ; input device
    MOV ECX, %1
    int 80h
%endmacro

section .text
global _start

_start:
    disp m2, m2len
    acceptstr string
    dec al
    MOV [count], al
    disp m3, m3len
    MOV bl, [count]
    call display
    MOV EAX, 1
    int 80h
display:
    MOV cl, 2
    MOV EDI, dispbuf

d1:
    ROL bl, 4
    MOV al, bl
    AND al, 0Fh
    CMP al, 09
    JBE d2
    ADD al, 07

d2:
    ADD al, 30h
    MOV [EDI], al
    INC EDI
    DEC cl
    JNZ d1
    disp dispbuf, 2
    RET
