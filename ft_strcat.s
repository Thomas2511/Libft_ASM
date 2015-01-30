global _ft_strcat
section .text
_ft_strcat:
    mov         rax, rdi

while1:
    cmp byte    [rdi], 0
    jle         while2
    inc         rdi
    jmp         while1

while2:
    cmp byte    [rsi], 0
    jle         done
    mov         dl, [rsi]
    mov         [rdi], dl
    inc         rdi
    inc         rsi
    jmp         while2

done:
    ret
