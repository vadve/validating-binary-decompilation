    .text
    .globl	leaf
leaf:
LFB0:
    
    
    rcll $0x1, %ebx
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    rcll $0x1, %ebx
    
    
    ret
LFE3: