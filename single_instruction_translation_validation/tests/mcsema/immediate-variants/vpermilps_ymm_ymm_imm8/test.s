    .globl	main
.globl _start
_start:
LFB0:
    
    
    vpermilps $0xa, %ymm2, %ymm1
    
    
    ret
LFE0:
