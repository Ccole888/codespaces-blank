    .section .bss
    .lcomm ram, 256          
    .global ram

    .section .text
    .global clear_ram

clear_ram:
    lea ram(%rip), %rdi      
    add $0x50, %rdi          
    mov $1, %rcx             
    mov $0x00, %al           

loop_fill:
    movb %al, (%rdi)         
    inc %rdi
    loop loop_fill
    ret

.section .note.GNU-stack,"",@progbits
