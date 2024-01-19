.intel_syntax noprefix

#define sys_write 1
#define stdout 1
#define sys_exit 0x3c

.section .data
msg: 
    .ascii "Hello, how are you!"
    .byte 0x0a, 0x0a, 0x0a 
msg_len = (. - msg)

.section .text
.global _start
_start:
    push rbp
    mov rbp, rsp

    mov rax, sys_write #sys_write call
    mov rdi, stdout #rd for stdout 

    lea rsi, [msg]
    mov rdx, msg_len
    syscall

    mov rax, sys_exit     # exit syscall
    xor rdi, rdi      # first param to syscall for the return value
    syscall