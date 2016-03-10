  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm8, %xmm3     #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpbroadcastd %xmm3, %xmm3          #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm    
  pmovsxdq %xmm3, %xmm1              #  4     0xe   5      OPC=pmovsxdq_xmm_xmm        
  retq                               #  5     0x13  1      OPC=retq                    
                                                                                       
.size target, .-target
