section .data
    rows db 0
    star db '* ', 0
    space db ' ', 0
    newline db 10, 0

section .bss
    counter resb 1

section .text
    global _start

_start:
    ; Ask the user for the number of rows
    mov eax, 3
    mov ebx, 0
    mov ecx, rows
    mov edx, 1
    int 0x80

    ; Convert input to integer
    movzx eax, byte [rows]
    sub eax, '0'
    mov [rows], al

    ; Print the triangle pattern
    mov cl, [rows]
    mov dl, cl
outer_loop:
    push ecx
    mov cl, dl
inner_loop:
    ; Print spaces before stars
    mov eax, 4
    mov ebx, 1
    mov ecx, space
    mov edx, 1
    int 0x80
    loop inner_loop

    ; Print stars
    mov cl, [rows]
    sub cl, dl
    dec cl
inner_loop2:
    mov eax, 4
    mov ebx, 1
    mov ecx, star
    mov edx, 2
    int 0x80
    loop inner_loop2

    ; Print newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    pop ecx
    dec dl
    loop outer_loop

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80