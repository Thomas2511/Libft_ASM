global _ft_isalpha
section .text
_ft_isalpha:
    cmp rdi, 65
    jl notalpha
    cmp rdi, 122
    jg notalpha
    cmp rdi, 90
    jle isalpha
    cmp rdi, 97
    jge isalpha
    jmp notalpha

isalpha:
    mov eax, 1
    jmp done

notalpha:
    mov eax, 0

done:
    ret
