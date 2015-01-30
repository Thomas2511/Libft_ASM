global _ft_isdigit
section .text
_ft_isdigit:
    cmp rdi, 48
    jl notdigit
    cmp rdi, 57
    jg notdigit
    mov eax, 1
    jmp done

notdigit:
    mov eax, 0

done:
    ret
