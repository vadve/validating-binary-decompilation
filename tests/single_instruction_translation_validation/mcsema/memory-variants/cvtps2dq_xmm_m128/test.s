    .globl	main
.globl _start
_start:
LFB0:
    
    
    cvtps2dq -4(%rbp), %xmm1
    
    
    ret
LFE0: