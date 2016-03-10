  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  pmovsxdq %xmm11, %xmm1                #  2     0x5   6      OPC=pmovsxdq_xmm_xmm    
  callq .move_128_64_xmm1_xmm8_xmm9     #  3     0xb   5      OPC=callq_label         
  callq .move_128_256_xmm8_xmm9_ymm3    #  4     0x10  5      OPC=callq_label         
  vmaxss %xmm3, %xmm11, %xmm1           #  5     0x15  4      OPC=vmaxss_xmm_xmm_xmm  
  retq                                  #  6     0x19  1      OPC=retq                
                                                                                      
.size target, .-target
