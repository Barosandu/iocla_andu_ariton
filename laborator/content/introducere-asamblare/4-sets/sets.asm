%include "printf32.asm"

section .text
    global main
    extern printf

main:
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139
    mov ebx, 169
    PRINTF32 `%u\n\x0`, eax ; afiseaza prima multime
    PRINTF32 `%u\n\x0`, ebx ; afiseaza cea de-a doua multime

    ; TODO1: reuniunea a doua multimi
    mov edx, eax
    or eax, ebx
    xchg eax, edx
    PRINTF32 `%u\n\x0`, edx ; afiseaza reuniunea

    ; TODO2: adaugarea unui element in multime
    mov edx, eax
    and eax, 2
    xchg eax, edx
    PRINTF32 `%u\n\x0`, eax

    ; TODO3: intersectia a doua multimi
    mov edx, eax
    and eax, ebx
    xchg eax, edx
    PRINTF32 `%u\n\x0`, edx
    

    ; TODO4: complementul unei multimi
    mov edx, eax
    not eax
    xchg eax, edx
    PRINTF32 `%u\n\x0`, edx

    ; TODO5: eliminarea unui element
    mov edx, eax
    mov ecx, 2
    not ecx
    and eax, ecx
    xchg eax, edx
    PRINTF32 `%u\n\x0`, eax

    ; TODO6: diferenta de multimi EAX-EBX
    mov edx, eax
    not ebx
    and eax, ebx
    xchg eax, edx
    PRINTF32 `%u\n\x0`, edx

    xor eax, eax
    ret
