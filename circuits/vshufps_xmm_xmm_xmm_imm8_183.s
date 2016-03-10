  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm2_xmm8_xmm9             #  2     0x5   5      OPC=callq_label              
  vunpcklps %xmm6, %xmm7, %xmm13                #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm    
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  4     0xe   5      OPC=callq_label              
  vmovss %xmm7, %xmm8, %xmm11                   #  5     0x13  4      OPC=vmovss_xmm_xmm_xmm       
  vpunpcklqdq %ymm13, %ymm11, %ymm1             #  6     0x17  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                          #  7     0x1c  1      OPC=retq                     
                                                                                                   
.size target, .-target
