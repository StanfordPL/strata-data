  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                  
.target:                         #        0     0      OPC=<label>             
  vpmovzxbq %xmm1, %ymm10        #  1     0     5      OPC=vpmovzxbq_ymm_xmm   
  vsubps %ymm10, %ymm10, %ymm10  #  2     0x5   5      OPC=vsubps_ymm_ymm_ymm  
  pmovsxdq %xmm10, %xmm1         #  3     0xa   6      OPC=pmovsxdq_xmm_xmm    
  pmovzxwq %xmm1, %xmm1          #  4     0x10  5      OPC=pmovzxwq_xmm_xmm    
  retq                           #  5     0x15  1      OPC=retq                
                                                                               
.size target, .-target
