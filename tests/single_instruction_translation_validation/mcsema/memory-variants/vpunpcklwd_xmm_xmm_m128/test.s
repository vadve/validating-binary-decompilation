    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpunpcklwd -4(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0: