    .globl	main
.globl _start
_start:
LFB0:
    
    
    cvtdq2ps -4(%rbp), %xmm1
    
    
    ret
LFE0: