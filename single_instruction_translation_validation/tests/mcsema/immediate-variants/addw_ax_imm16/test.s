    .text
    .globl	leaf
leaf:
LFB0:
    
    
    addw $0x77, %ax
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    addw $0x77, %ax
    
    
    ret
LFE3: