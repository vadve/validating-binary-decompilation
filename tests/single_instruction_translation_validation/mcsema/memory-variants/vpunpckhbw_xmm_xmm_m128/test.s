    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpunpckhbw -16(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0:
