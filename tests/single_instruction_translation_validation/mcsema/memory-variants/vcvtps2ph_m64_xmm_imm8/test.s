    .globl	main
.globl _start
_start:
LFB0:
    
    
    vcvtps2ph $0xa, %xmm1, -4(%rbp)
    
    
    ret
LFE0: