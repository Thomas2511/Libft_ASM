global _ft_puts

section .data
msg:            db "", 10

section .text
_ft_puts:
    mov         rax, rdi
    mov         rdx, 0

while:
    cmp byte    [rdi], 0
    jle         write
    inc         rdi
    inc         rdx
    jmp         while

write:
    mov         rsi, rax
    mov         rax, 0x2000004
    mov         rdi, 0x1
    syscall

    mov         rbx, rax

    lea         rsi, [rel msg]
    mov         rax, 0x2000004
    mov         rdi, 0x1
    mov         rdx, 1
    syscall

    inc         rbx
    mov         rax, rbx

done:
    ret

