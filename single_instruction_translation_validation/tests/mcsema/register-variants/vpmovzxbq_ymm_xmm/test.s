    .text
    .globl	leaf
leaf:
LFB0:
    
    
    vpmovzxbq %xmm2, %ymm1
    
    
    ret
LFE0:
    .globl	main
.globl _start
_start:
LFB3:
    
    
    vpmovzxbq %xmm2, %ymm1
    
    
    ret
LFE3: