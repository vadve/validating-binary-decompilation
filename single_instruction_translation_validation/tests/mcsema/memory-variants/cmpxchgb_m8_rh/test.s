    .globl	main
.globl _start
_start:
LFB0:
    
    
    cmpxchgb %ah, -4(%rbp)
    
    
    ret
LFE0:
