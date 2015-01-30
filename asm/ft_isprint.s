global  _ft_isprint
section .text
_ft_isprint:
    cmp rdi, 33
    jl  notprint
    cmp rdi, 126
    jg  notprint
    mov eax, 1
    jmp done
notprint:
    mov eax, 0
done:
    ret
