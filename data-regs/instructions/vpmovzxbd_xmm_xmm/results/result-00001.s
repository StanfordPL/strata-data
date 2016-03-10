  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  vpmovzxbq %xmm2, %ymm3                #  1     0     5      OPC=vpmovzxbq_ymm_xmm    
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x5   5      OPC=callq_label          
  vhsubps %xmm13, %xmm12, %xmm4         #  3     0xa   5      OPC=vhsubps_xmm_xmm_xmm  
  vmaxss %xmm3, %xmm4, %xmm1            #  4     0xf   4      OPC=vmaxss_xmm_xmm_xmm   
  retq                                  #  5     0x13  1      OPC=retq                 
                                                                                       
.size target, .-target
