    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpcmpestri $0xa, -4(%rbp), %xmm1
    
    
    ret
LFE0: