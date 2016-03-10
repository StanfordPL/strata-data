  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm13                #  1     0     4      OPC=vmovddup_ymm_ymm         
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0x9   5      OPC=callq_label              
  vpbroadcastq %xmm2, %ymm2             #  4     0xe   5      OPC=vpbroadcastq_ymm_xmm     
  unpckhpd %xmm10, %xmm2                #  5     0x13  5      OPC=unpckhpd_xmm_xmm         
  vpunpckhqdq %ymm13, %ymm2, %ymm1      #  6     0x18  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  7     0x1d  1      OPC=retq                     
                                                                                           
.size target, .-target
