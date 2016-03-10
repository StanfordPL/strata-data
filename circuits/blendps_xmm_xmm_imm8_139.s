  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  vmovsldup %xmm1, %xmm11              #  1     0     4      OPC=vmovsldup_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label        
  punpckhdq %xmm12, %xmm11             #  3     0x9   5      OPC=punpckhdq_xmm_xmm  
  movss %xmm11, %xmm13                 #  4     0xe   5      OPC=movss_xmm_xmm      
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x13  5      OPC=callq_label        
  retq                                 #  6     0x18  1      OPC=retq               
                                                                                    
.size target, .-target
