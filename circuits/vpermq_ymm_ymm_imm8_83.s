  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label              
  vpbroadcastq %xmm9, %ymm9             #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %xmm13, %xmm13, %xmm4     #  4     0xf   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovlhps %xmm2, %xmm4, %xmm8          #  5     0x14  4      OPC=vmovlhps_xmm_xmm_xmm     
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x18  5      OPC=callq_label              
  retq                                  #  7     0x1d  1      OPC=retq                     
                                                                                           
.size target, .-target
