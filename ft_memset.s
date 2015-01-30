global _ft_memset
section .text
_ft_memset:
    mov         r8, rdi
    mov         al, sil
    mov         rcx, rdx
    cld
    rep         stosb
    mov         rax, r8

done:
    ret
