  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vpmovzxwq %xmm1, %ymm13        #  1     0     5      OPC=vpmovzxwq_ymm_xmm    
  vandnps %xmm13, %xmm1, %xmm13  #  2     0x5   5      OPC=vandnps_xmm_xmm_xmm  
  pmovzxbq %xmm13, %xmm1         #  3     0xa   6      OPC=pmovzxbq_xmm_xmm     
  retq                           #  4     0x10  1      OPC=retq                 
                                                                                
.size target, .-target
