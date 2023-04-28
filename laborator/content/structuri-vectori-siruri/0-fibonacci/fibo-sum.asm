%include "printf32.asm"

section .data
    N dd 9 ; compute the sum of the first N fibonacci numbers
    sum_print_format db "Sum first %d fibonacci numbers is %d", 10, 0

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

    ; TODO: calculate the sum of first N fibonacci numbers
    ;       (f(0) = 0, f(1) = 1)
    xor eax, eax     ;store the sum in eax
    xor ebx, ebx
    inc ebx

    mov ecx, dword [N]
    xor esi, esi
    dec ecx
    dec ecx

begin_loop_ye:
    mov edx, ebx
    add ebx, eax
    mov eax, edx
    PRINTF32 `sum: %d\n\x0`, edx
    add esi, edx
    loop begin_loop_ye

    ; use loop instruction

    push esi
    push dword [N]
    push sum_print_format
    call printf
    add esp, 12

    xor eax, eax
    leave
    ret
