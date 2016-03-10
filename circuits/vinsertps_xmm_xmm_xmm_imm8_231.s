  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vmovapd %xmm2, %xmm13              #  2     0x5   4      OPC=vmovapd_xmm_xmm          
  vpunpckhdq %xmm13, %xmm8, %xmm7    #  3     0x9   5      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpckhqdq %xmm7, %xmm9, %xmm1    #  4     0xe   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
