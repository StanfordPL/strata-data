  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                      
.target:                             #        0    0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0    5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm9, %xmm4     #  2     0x5  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsldup %xmm4, %xmm1              #  3     0x9  4      OPC=movsldup_xmm_xmm        
  retq                               #  4     0xd  1      OPC=retq                    
                                                                                      
.size target, .-target
