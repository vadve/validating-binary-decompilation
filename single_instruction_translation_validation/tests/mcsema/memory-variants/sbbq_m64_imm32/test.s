    .text
    .globl	leaf
leaf:
LFB0:
    
    
    sbbq $0x0, -4(%rbp)
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    sbbq $0x0, -4(%rbp)
    
    
    ret
LFE3: