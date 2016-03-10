  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpunpckldq %xmm2, %xmm13, %xmm12     #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vunpcklps %xmm13, %xmm12, %xmm4      #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpckhqdq %ymm12, %ymm4, %ymm13    #  4     0xe   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                                 #  6     0x18  1      OPC=retq                     
                                                                                          
.size target, .-target
