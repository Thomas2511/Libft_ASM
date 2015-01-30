global _ft_tolower
section .text
_ft_tolower:
    cmp         rdi, 65
    jl          done
    cmp         rdi, 90
    jg          done
    add         rdi, 32

done:
    lea         eax, [rdi]
    ret
