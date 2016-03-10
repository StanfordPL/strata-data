  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  vphaddd %xmm1, %xmm3, %xmm1           #  1     0     5      OPC=vphaddd_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm12_xmm13  #  2     0x5   5      OPC=callq_label          
  pmovzxbq %xmm13, %xmm1                #  3     0xa   6      OPC=pmovzxbq_xmm_xmm     
  retq                                  #  4     0x10  1      OPC=retq                 
                                                                                       
.size target, .-target
