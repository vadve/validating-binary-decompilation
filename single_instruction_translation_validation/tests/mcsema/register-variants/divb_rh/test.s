    .text
    .globl	leaf
leaf:
LFB0:
    
    
    divb %bh
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    divb %bh
    
    
    ret
LFE3: