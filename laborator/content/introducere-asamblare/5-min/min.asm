%include "printf32.asm"

section .text
    global main
    extern printf

main:
    ;cele doua numere se gasesc in eax si ebx
    mov eax, 4
    mov ebx, 1
    ; TODO: aflati minimul
    cmp eax, ebx
    jb pr

    xchg eax, ebx

pr:
    PRINTF32 `%d\n\x0`, eax ; afiseaza minimul

    ret
