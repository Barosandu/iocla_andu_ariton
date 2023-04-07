%include "printf32.asm"

section .text
    global main
    extern printf

main:
    mov eax, 7       ; vrem sa aflam al N-lea numar; N = 7

    ; TODO: calculati al N-lea numar fibonacci (f(0) = 0, f(1) = 1)

    mov ebx, 0
    mov edx, 1

recursion:
    dec eax
    xchg edx, ebx
    add ebx, edx
    cmp eax, 0
    jne recursion

    PRINTF32 `%u\n\x0`, edx

    ret
