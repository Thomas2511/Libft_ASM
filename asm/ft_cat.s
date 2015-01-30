global _ft_cat

section .bss
buffer:         resb 256

section .text
_ft_cat:
    mov         r9, rdi

read:
    mov         rdi, r9
    lea         rsi, [rel buffer]
    mov         rdx, 256
    mov         rax, 0x2000003
    syscall
    cmp         rdx, 256
    jz          error
    cmp         rax, 0
    jz          done

write:
    mov         rdi, 0x1
    lea         rsi, [rel buffer]
    mov         rdx, rax
    mov         rax, 0x2000004
    syscall
    jnz         read

error:
    mov         rax, -1

done:
    ret
