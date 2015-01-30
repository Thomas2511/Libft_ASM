global _ft_bzero
section .text
_ft_bzero:

while:
    cmp         rsi, 0
    jle         done
    mov byte    [rdi], 0
    add         rdi, 1
    sub         rsi, 1
    jmp         while

done:
    mov         rax, rdi
    ret
