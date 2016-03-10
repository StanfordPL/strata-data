  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vmovsldup %xmm2, %xmm5                #  1     0     4      OPC=vmovsldup_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label        
  vmovdqa %xmm5, %xmm12                 #  3     0x9   4      OPC=vmovdqa_xmm_xmm    
  vmovsldup %xmm13, %xmm13              #  4     0xd   5      OPC=vmovsldup_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x12  5      OPC=callq_label        
  retq                                  #  6     0x17  1      OPC=retq               
                                                                                     
.size target, .-target
