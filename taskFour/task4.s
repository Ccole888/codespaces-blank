.section .bss
    .lcomm ram, 256
    .global ram

.section .text
    .global sum

sum:
    mov $0b0, %eax          
    mov $0b1, %ebx          
    movb $10, %cl          

L1:
    add %ebx, %eax        
    inc %ebx              
    dec %cl               
    jnz L1                 
    mov %eax, ram+0x50
    ret

.section .note.GNU-stack,"",@progbits
