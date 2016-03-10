  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  pmovsxwd %xmm2, %xmm7                #  1     0     5      OPC=pmovsxwd_xmm_xmm   
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label        
  vpmovzxwq %xmm12, %ymm1              #  3     0xa   5      OPC=vpmovzxwq_ymm_xmm  
  vpmovsxdq %xmm7, %ymm0               #  4     0xf   5      OPC=vpmovsxdq_ymm_xmm  
  vpor %ymm1, %ymm0, %ymm1             #  5     0x14  4      OPC=vpor_ymm_ymm_ymm   
  retq                                 #  6     0x18  1      OPC=retq               
                                                                                    
.size target, .-target
