    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpblendd $0x0, -4(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0:
