  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vmovddup %ymm2, %ymm11                #  2     0x5   4      OPC=vmovddup_ymm_ymm         
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  unpcklpd %xmm12, %xmm2                #  4     0xe   5      OPC=unpcklpd_xmm_xmm         
  vpunpckhqdq %ymm11, %ymm2, %ymm1      #  5     0x13  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
