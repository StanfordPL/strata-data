  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11   #  1     0     5      OPC=callq_label              
  unpckhpd %xmm11, %xmm2                #  2     0x5   5      OPC=unpckhpd_xmm_xmm         
  callq .move_256_128_ymm3_xmm12_xmm13  #  3     0xa   5      OPC=callq_label              
  vpunpckhqdq %xmm10, %xmm13, %xmm13    #  4     0xf   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm3  #  5     0x14  5      OPC=callq_label              
  vpunpcklqdq %ymm3, %ymm2, %ymm1       #  6     0x19  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                  #  7     0x1d  1      OPC=retq                     
                                                                                           
.size target, .-target
