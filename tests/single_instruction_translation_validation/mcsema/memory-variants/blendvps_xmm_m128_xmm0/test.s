    .globl	main
.globl _start
_start:
LFB0:
    
    
    blendvps %xmm0, -16(%rbp), %xmm1
    
    
    ret
LFE0:
