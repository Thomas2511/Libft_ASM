global _ft_strlen
section .text
_ft_strlen:
    xor         ecx, ecx
    not         ecx
    xor         al, al
    cld
    repnz       scasb
    not         ecx

    dec         ecx
    mov         eax, ecx

done:
    ret
