%include "../utils/printf32.asm"

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

    mov eax, 211    ; to be broken down into powers of 2
    mov ebx, 1      ; stores the current power
    jmp begin_loop
shift_for_skip:
    shl ebx, 1
begin_loop:
    mov edx, eax
    and edx, ebx

    cmp edx, 0x0
    je shift_for_skip



    PRINTF32 `%d\n\x0`, ebx

    sub eax, ebx
    cmp eax, 0x0
    je eeend
    jge shift_for_skip

    ; TODO - print the powers of 2 that generate number stored in EAX
eeend:
    leave
    ret
