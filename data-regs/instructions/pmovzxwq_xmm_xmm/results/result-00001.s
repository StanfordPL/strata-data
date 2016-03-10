  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vpmovzxwq %xmm2, %xmm3       #  1     0     5      OPC=vpmovzxwq_xmm_xmm    
  vhsubps %ymm3, %ymm3, %ymm3  #  2     0x5   4      OPC=vhsubps_ymm_ymm_ymm  
  vandps %xmm3, %xmm3, %xmm13  #  3     0x9   4      OPC=vandps_xmm_xmm_xmm   
  pmovzxdq %xmm13, %xmm1       #  4     0xd   6      OPC=pmovzxdq_xmm_xmm     
  retq                         #  5     0x13  1      OPC=retq                 
                                                                              
.size target, .-target
