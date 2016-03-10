  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  movshdup %xmm2, %xmm7                         #  2     0x5   4      OPC=movshdup_xmm_xmm         
  vpmovsxdq %xmm6, %xmm4                        #  3     0x9   5      OPC=vpmovsxdq_xmm_xmm        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  4     0xe   5      OPC=callq_label              
  vpunpcklqdq %xmm3, %xmm7, %xmm12              #  5     0x13  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmaxps %ymm12, %ymm12, %ymm1                  #  6     0x17  5      OPC=vmaxps_ymm_ymm_ymm       
  retq                                          #  7     0x1c  1      OPC=retq                     
                                                                                                   
.size target, .-target
