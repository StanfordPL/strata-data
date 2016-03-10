  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovddup %xmm11, %xmm10               #  2     0x5   5      OPC=vmovddup_xmm_xmm         
  vpunpckhqdq %ymm2, %ymm2, %ymm1       #  3     0xa   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1   #  4     0xe   5      OPC=callq_label              
  retq                                  #  5     0x13  1      OPC=retq                     
                                                                                           
.size target, .-target