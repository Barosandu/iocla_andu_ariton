%include "printf32.asm"

section .text
    global main
    extern printf

main:
    mov al, 0xDE
    PRINTF32 `CF si OF nu sunt active\n\x0`
    test al, al
    ;TODO: activati CF si OF

    cmp al, al
    jz cf_of_on
    jmp end

cf_of_on:
    PRINTF32 `CF si OF activ\n\x0`

end:
    ret

