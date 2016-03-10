  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  vmovsldup %xmm2, %xmm1               #  1     0     4      OPC=vmovsldup_xmm_xmm  
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label        
  vmovshdup %xmm1, %xmm5               #  3     0x9   4      OPC=vmovshdup_xmm_xmm  
  punpckldq %xmm5, %xmm11              #  4     0xd   5      OPC=punpckldq_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label        
  retq                                 #  6     0x17  1      OPC=retq               
                                                                                    
.size target, .-target
