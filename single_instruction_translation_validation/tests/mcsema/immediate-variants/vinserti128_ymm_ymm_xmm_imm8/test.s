    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vinserti128 $0x77, %xmm3, %ymm2, %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vinserti128 $0x77, %xmm3, %ymm2, %ymm1
    
    
    ret
LFE3: