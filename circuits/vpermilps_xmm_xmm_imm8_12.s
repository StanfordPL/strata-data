  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vunpcklps %xmm8, %xmm2, %xmm3      #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm    
  vmaxps %xmm3, %xmm2, %xmm4         #  3     0xa   4      OPC=vmaxps_xmm_xmm_xmm       
  vmovss %xmm2, %xmm9, %xmm5         #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm       
  unpcklps %xmm8, %xmm4              #  5     0x12  4      OPC=unpcklps_xmm_xmm         
  vpunpcklqdq %ymm4, %ymm5, %ymm1    #  6     0x16  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                               #  7     0x1a  1      OPC=retq                     
                                                                                        
.size target, .-target
