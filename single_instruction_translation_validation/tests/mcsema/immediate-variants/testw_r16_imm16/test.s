    .text
    .globl	leaf
leaf:
LFB0:
    
    
    testw $0x77, %bx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    testw $0x77, %bx
    
    
    ret
LFE3: