%include "printf32.asm"

section .data
source_text: db "ABCABCBABCBABCBBBABABBCBABCBAAACCCB", 0
substring: db "BABC", 0

print_format: db "Substring found at index: %d", 10, 0

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

    ; TODO: Print the start indices for all occurrences of the substring in source_text

    mov ecx, 35
start_loop:
    cmp ecx, 4
    je lliv
    xor eax, eax
    xor ebx, ebx
    mov ebx, 35

    sub ebx, ecx
    ; PRINTF32 `\n%d\x0`, ebx
    mov al, byte [source_text + ebx]
    mov ah, byte [source_text + ebx + 1]
    mov dl, byte [source_text + ebx + 2]
    mov dh, byte [source_text + ebx + 3]
    ; PRINTF32 `%c\x0`, eax

    cmp al, "B"
    jne continn

    cmp ah, "A"
    jne continn

    cmp dl, "B"
    jne continn

    cmp dh, "C"
    jne continn


    mov edx, 35
    sub edx, ecx
    PRINTF32 `found %d \n\x0`, edx



continn:
    loop start_loop


lliv:
    leave
    ret
