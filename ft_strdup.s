global _ft_strdup
section .text
extern _malloc, _ft_strlen, _ft_memcpy
_ft_strdup:
    mov         r12, rdi
    call        _ft_strlen

    inc         eax
    mov         edi, eax
    mov         r13, rdi
    call        _malloc

    mov         rdi, rax
    mov         rsi, r12
    mov         rdx, r13
    call        _ft_memcpy

done:
    ret
