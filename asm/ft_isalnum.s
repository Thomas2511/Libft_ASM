global _ft_isalnum
section .text
_ft_isalnum:
    cmp         rdi, 48
    jl          notalnum
    cmp         rdi, 57
    jle         isalnum
    cmp         rdi, 65
    jl          notalnum
    cmp         rdi, 90
    jle         isalnum
    cmp         rdi, 97
    jl          notalnum
    cmp         rdi, 122
    jle         isalnum

notalnum:
    mov         eax, 0
    jmp         done

isalnum:
    mov         eax, 1

done:
    ret
