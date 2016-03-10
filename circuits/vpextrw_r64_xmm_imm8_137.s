  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpmovzxwq %xmm1, %xmm7         #  1     0     5      OPC=vpmovzxwq_xmm_xmm      
  vunpckhpd %ymm7, %ymm7, %ymm1  #  2     0x5   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movq %xmm1, %xmm11             #  3     0x9   5      OPC=movq_xmm_xmm           
  movq %xmm11, %rbx              #  4     0xe   5      OPC=movq_r64_xmm           
  retq                           #  5     0x13  1      OPC=retq                   
                                                                                  
.size target, .-target
