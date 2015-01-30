global  _ft_isascii
section .text
_ft_isascii:
    cmp rdi, 0
    jl  notascii
    cmp rdi, 127
    jg  notascii
    mov eax, 1
    jmp done
notascii:
    mov eax, 0
done:
    ret
