    .section .bss
    .lcomm ram, 256          
    .global ram

    .section .text
    .global fill_Ram_Indirect

fill_Ram_Indirect:
    lea ram, %rdi      
    add $0x50, %rdi          
    mov $9, %rcx             
    mov $0xFF, %al           

loop_fill:
    movb %al, (%rdi)         
    inc %rdi
    loop loop_fill
    ret

.section .note.GNU-stack,"",@progbits
