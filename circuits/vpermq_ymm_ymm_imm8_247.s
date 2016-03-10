  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm1     #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  callq .move_64_128_xmm8_xmm9_xmm1   #  3     0x9   5      OPC=callq_label              
  vpunpckhqdq %ymm2, %ymm1, %ymm1     #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                #  5     0x12  1      OPC=retq                     
                                                                                         
.size target, .-target
