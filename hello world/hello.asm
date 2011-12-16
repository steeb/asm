.section .data
hello:
    .ascii "Hello World!\n"
hello_end:
    .set HELLO_SIZE, hello_end - hello

.section .text
.globl _start
_start:
    movl $0x04, %eax
    movl $0x01, %ebx
    movl $hello, %ecx
    movl $HELLO_SIZE, %edx
    int  $0x80

    movl $0x01, %eax
    xorl %ebx, %ebx
    int  $0x80
